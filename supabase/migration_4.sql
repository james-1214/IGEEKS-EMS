-- Migration 4: domains, configurable attempts, exam sessions, per-attempt storage.
-- Additive and safe to run once on an existing database. Nothing is dropped or reset.

create table if not exists domains(
  id uuid primary key default gen_random_uuid(), name text not null unique, slug text not null unique,
  sort int default 0, created_at timestamptz default now());
insert into domains(name,slug,sort) values
 ('HTML','html',1),('CSS','css',2),('JavaScript','javascript',3),('Java','java',4),('Python','python',5),
 ('C++','cpp',6),('C','c',7),('C#','csharp',8),('.NET','dotnet',9),('MongoDB','mongodb',10),
 ('Express.js','expressjs',11),('Node.js','nodejs',12),('Angular','angular',13)
on conflict (slug) do nothing;

alter table questions
  add column if not exists domain_id uuid references domains(id),
  add column if not exists difficulty text not null default 'beginner' check (difficulty in ('beginner','intermediate','advanced')),
  add column if not exists category text not null default 'conceptual' check (category in ('conceptual','output','debugging','scenario','coding')),
  add column if not exists title text,
  add column if not exists explanation text,
  add column if not exists statement jsonb not null default '{}',   -- coding: description, input_format, output_format, constraints, examples
  add column if not exists languages text[] not null default '{}',  -- allowed languages for coding questions
  add column if not exists updated_at timestamptz default now();
create index if not exists q_domain_diff on questions(domain_id, difficulty);
create unique index if not exists q_no_duplicates on questions(domain_id, md5(lower(text)));

create table if not exists coding_tests(
  id uuid primary key default gen_random_uuid(),
  question_id uuid not null references questions(id) on delete cascade,
  input text not null default '', expected text not null,
  is_hidden bool not null default true, position int not null default 0);
create index if not exists ct_question on coding_tests(question_id);
-- Move test cases that were saved inside questions.meta.tests (first half were samples)
insert into coding_tests(question_id,input,expected,is_hidden,position)
select q.id, coalesce(t.v->>'in',''), coalesce(t.v->>'out',''),
       t.i > ceil(jsonb_array_length(q.meta->'tests')/2.0), t.i
from questions q
cross join lateral jsonb_array_elements(q.meta->'tests') with ordinality as t(v,i)
where q.type='code' and jsonb_typeof(q.meta->'tests')='array'
  and not exists (select 1 from coding_tests c where c.question_id=q.id);

alter table exams
  add column if not exists description text,
  add column if not exists domain_id uuid references domains(id),
  add column if not exists max_attempts int not null default 3 check (max_attempts between 1 and 50),
  add column if not exists start_at timestamptz,
  add column if not exists end_at timestamptz,
  add column if not exists shuffle_options bool not null default false,
  add column if not exists negative_marking numeric not null default 0 check (negative_marking >= 0 and negative_marking <= 1),
  add column if not exists selection_mode text not null default 'manual' check (selection_mode in ('manual','auto')),
  add column if not exists difficulty_mix jsonb not null default '{}',
  add column if not exists show_solutions text not null default 'never' check (show_solutions in ('never','after_submit','after_end')),
  add column if not exists updated_at timestamptz default now();

-- One row per attempt that is running or finished. Answers and review flags are saved here as the student works.
create table if not exists exam_sessions(
  id uuid primary key default gen_random_uuid(),
  email text not null references students(email),
  exam_id uuid not null references exams(id) on delete cascade,
  attempt_no int not null,
  started_at timestamptz not null default now(),
  deadline_at timestamptz not null,
  question_ids uuid[] not null,
  option_orders jsonb not null default '{}',
  answers jsonb not null default '{}',
  flags jsonb not null default '{}',
  visited jsonb not null default '{}',
  status text not null default 'in_progress' check (status in ('in_progress','submitted','auto_submitted')),
  updated_at timestamptz not null default now(),
  unique(email, exam_id, attempt_no));
create unique index if not exists one_active_session on exam_sessions(email, exam_id) where status='in_progress';

alter table attempts
  add column if not exists attempt_no int not null default 1,
  add column if not exists session_id uuid references exam_sessions(id),
  add column if not exists started_at timestamptz,
  add column if not exists correct int default 0,
  add column if not exists wrong int default 0,
  add column if not exists unanswered int default 0,
  add column if not exists total_questions int,
  add column if not exists time_taken_sec int,
  add column if not exists status text not null default 'submitted' check (status in ('submitted','auto_submitted'));
create unique index if not exists attempts_unique_no on attempts(student_email, exam_id, attempt_no);
create index if not exists attempts_exam on attempts(exam_id);
create index if not exists attempts_student on attempts(student_email);

create table if not exists attempt_answers(
  id uuid primary key default gen_random_uuid(),
  attempt_id uuid not null references attempts(id) on delete cascade,
  question_id uuid references questions(id) on delete set null,
  position int, question_snapshot jsonb, answer jsonb,
  is_correct bool, marks_awarded numeric not null default 0, max_marks numeric not null default 0,
  flagged bool not null default false, code_result jsonb,
  unique(attempt_id, question_id));
create index if not exists aa_attempt on attempt_answers(attempt_id);

create table if not exists coding_submissions(
  id uuid primary key default gen_random_uuid(),
  attempt_id uuid not null references attempts(id) on delete cascade,
  question_id uuid references questions(id) on delete set null,
  language text, code text, passed int, total int, results jsonb,
  time_ms int, memory_kb int, created_at timestamptz default now());
create index if not exists cs_attempt on coding_submissions(attempt_id);

-- Admin-only access from the browser. Students go through the Edge Function only.
do $$ declare t text; begin
  foreach t in array array['domains','coding_tests','exam_sessions','attempt_answers','coding_submissions'] loop
    execute format('alter table %I enable row level security', t);
    execute format('drop policy if exists "admin" on %I', t);
    execute format('create policy "admin" on %I for all using(is_admin()) with check(is_admin())', t);
  end loop; end $$;

-- Start (or resume) an attempt. The advisory lock stops two clicks creating two attempts.
create or replace function start_attempt(p_email text, p_exam uuid, p_qids uuid[], p_orders jsonb)
returns exam_sessions language plpgsql security definer set search_path = public as $$
declare ex exams; s exam_sessions; used int; n int; secs int;
begin
  perform pg_advisory_xact_lock(hashtext(p_email || p_exam::text));
  select * into ex from exams where id = p_exam and live;
  if not found then raise exception 'EXAM_NOT_AVAILABLE'; end if;
  if ex.start_at is not null and now() < ex.start_at then raise exception 'EXAM_NOT_STARTED'; end if;
  if ex.end_at is not null and now() > ex.end_at then raise exception 'EXAM_ENDED'; end if;
  select * into s from exam_sessions where email = p_email and exam_id = p_exam and status = 'in_progress';
  if found then return s; end if;
  -- highest attempt number used so far (old pre-migration attempts count as attempt 1)
  select greatest((select coalesce(max(attempt_no),0) from exam_sessions where email = p_email and exam_id = p_exam),
                  (select coalesce(max(attempt_no),0) from attempts where student_email = p_email and exam_id = p_exam))
    into used;
  if used >= ex.max_attempts then raise exception 'NO_ATTEMPTS_LEFT'; end if;
  n := coalesce(array_length(p_qids,1),0);
  if n = 0 then raise exception 'EXAM_HAS_NO_QUESTIONS'; end if;
  secs := case ex.mode when 'total' then ex.total_min*60 when 'perq' then ex.per_sec*n
                       else least(ex.total_min*60, ex.per_sec*n) end;
  insert into exam_sessions(email, exam_id, attempt_no, deadline_at, question_ids, option_orders)
  values (p_email, p_exam, used+1, now() + make_interval(secs => secs), p_qids, coalesce(p_orders,'{}'::jsonb))
  returning * into s;
  return s;
end $$;

-- Save one answer / review flag / visited mark. Rejected once the deadline (plus 30 s grace) has passed.
create or replace function save_progress(p_session uuid, p_email text, p_qid text, p_answer jsonb,
                                         p_flag boolean, p_visited boolean, p_clear boolean)
returns exam_sessions language plpgsql security definer set search_path = public as $$
declare s exam_sessions;
begin
  update exam_sessions set
    answers = case when p_clear then answers - p_qid
                   when p_answer is not null then jsonb_set(answers, array[p_qid], p_answer, true) else answers end,
    flags   = case when p_flag is null then flags else jsonb_set(flags, array[p_qid], to_jsonb(p_flag), true) end,
    visited = case when p_visited then jsonb_set(visited, array[p_qid], 'true'::jsonb, true) else visited end,
    updated_at = now()
  where id = p_session and email = p_email and status = 'in_progress'
    and now() <= deadline_at + interval '30 seconds'
  returning * into s;
  return s;
end $$;

-- Finish an attempt atomically. The row lock means a second submit fails with ALREADY_SUBMITTED.
create or replace function finalize_attempt(p_session uuid, p_status text, p_attempt jsonb, p_answers jsonb, p_code jsonb)
returns uuid language plpgsql security definer set search_path = public as $$
declare s exam_sessions; aid uuid;
begin
  select * into s from exam_sessions where id = p_session for update;
  if not found then raise exception 'SESSION_NOT_FOUND'; end if;
  if s.status <> 'in_progress' then raise exception 'ALREADY_SUBMITTED'; end if;
  update exam_sessions set status = p_status, updated_at = now() where id = p_session;
  insert into attempts(student_email, exam_id, exam_title, score, max, pct, passed, pending, answers, violations, late,
                       attempt_no, session_id, started_at, correct, wrong, unanswered, total_questions, time_taken_sec, status)
  values (s.email, s.exam_id, p_attempt->>'exam_title', (p_attempt->>'score')::numeric, (p_attempt->>'max')::numeric,
          (p_attempt->>'pct')::int, (p_attempt->>'passed')::bool, (p_attempt->>'pending')::int, s.answers,
          coalesce((p_attempt->>'violations')::int,0), coalesce((p_attempt->>'late')::bool,false),
          s.attempt_no, s.id, s.started_at, (p_attempt->>'correct')::int, (p_attempt->>'wrong')::int,
          (p_attempt->>'unanswered')::int, (p_attempt->>'total')::int, (p_attempt->>'time_taken')::int, p_status)
  returning id into aid;
  insert into attempt_answers(attempt_id, question_id, position, question_snapshot, answer, is_correct, marks_awarded, max_marks, flagged, code_result)
  select aid, (e->>'question_id')::uuid, (e->>'position')::int, e->'snapshot', e->'answer', (e->>'is_correct')::bool,
         coalesce((e->>'marks_awarded')::numeric,0), coalesce((e->>'max_marks')::numeric,0),
         coalesce((e->>'flagged')::bool,false), e->'code_result'
  from jsonb_array_elements(p_answers) e;
  insert into coding_submissions(attempt_id, question_id, language, code, passed, total, results, time_ms, memory_kb)
  select aid, (c->>'question_id')::uuid, c->>'language', c->>'code', (c->>'passed')::int, (c->>'total')::int,
         c->'results', (c->>'time_ms')::int, (c->>'memory_kb')::int
  from jsonb_array_elements(p_code) c;
  return aid;
end $$;

revoke all on function start_attempt(text,uuid,uuid[],jsonb), save_progress(uuid,text,text,jsonb,boolean,boolean,boolean),
  finalize_attempt(uuid,text,jsonb,jsonb,jsonb) from public, anon, authenticated;
grant execute on function start_attempt(text,uuid,uuid[],jsonb), save_progress(uuid,text,text,jsonb,boolean,boolean,boolean),
  finalize_attempt(uuid,text,jsonb,jsonb,jsonb) to service_role;
