-- Migration 5: Prebuilt Exam Library + Host Exam.
-- Additive and safe to re-run. Nothing is dropped, renamed or reset. Run AFTER migration_4.sql.
-- Order: migration_5.sql -> seed/*.sql (questions) -> library/*.sql (exam packages) -> select validate_all_library_exams();

-- ---------------------------------------------------------------- domains
alter table domains add column if not exists category text not null default 'web'
  check (category in ('web','language','database','entrance'));
insert into domains(name,slug,sort,category) values
 ('React','react',14,'web'),
 ('SQL & Databases','sql',15,'database'),
 ('Quantitative Aptitude','ce-quant',20,'entrance'),
 ('Logical Reasoning','ce-reasoning',21,'entrance'),
 ('Verbal Ability','ce-verbal',22,'entrance'),
 ('Analytical Thinking','ce-analytical',23,'entrance')
on conflict do nothing;   -- any unique clash (slug OR name): a domain that already exists under another slug is reused, looked up by NAME
update domains set category='web'      where slug in ('html','css','javascript','react','nodejs','expressjs','angular');
update domains set category='language' where slug in ('c','cpp','java','python','csharp');
update domains set category='database' where slug in ('mongodb','sql','dotnet');
update domains set category='entrance' where name in ('Quantitative Aptitude','Logical Reasoning','Verbal Ability','Analytical Thinking');
update domains set category='web' where name='React';
update domains set category='database' where name='SQL & Databases';

-- ---------------------------------------------------------------- questions: provenance + protection
alter table questions
  add column if not exists is_builtin bool not null default false,
  add column if not exists topic text,
  add column if not exists source text not null default 'admin',
  add column if not exists content_status text not null default 'draft'
    check (content_status in ('draft','validated','rejected'));
create index if not exists q_builtin_status on questions(is_builtin, content_status);
create index if not exists q_topic on questions(domain_id, topic);

-- Built-in questions and their test cases cannot be changed or deleted from the browser (admin JWT = role 'authenticated').
-- Seeds and migrations run as postgres / service_role and are not affected.
create or replace function protect_builtin_questions() returns trigger language plpgsql as $$
begin
  if current_user in ('authenticated','anon') then
    if tg_op = 'INSERT' then
      if new.is_builtin then raise exception 'BUILTIN_PROTECTED: built-in questions can only be created by migrations'; end if;
      return new;
    end if;
    if old.is_builtin then raise exception 'BUILTIN_PROTECTED: built-in questions are read-only'; end if;
    if tg_op = 'UPDATE' and new.is_builtin then raise exception 'BUILTIN_PROTECTED: a question cannot be promoted to built-in from the browser'; end if;
  end if;
  if tg_op = 'DELETE' then return old; end if;
  return new;
end $$;
drop trigger if exists trg_protect_builtin_q on questions;
create trigger trg_protect_builtin_q before insert or update or delete on questions
  for each row execute function protect_builtin_questions();

create or replace function protect_builtin_tests() returns trigger language plpgsql as $$
declare qid uuid; locked bool;
begin
  if current_user in ('authenticated','anon') then
    qid := case when tg_op = 'DELETE' then old.question_id else new.question_id end;
    select is_builtin into locked from questions where id = qid;
    if coalesce(locked,false) then raise exception 'BUILTIN_PROTECTED: hidden test cases of built-in questions are read-only'; end if;
    if tg_op = 'UPDATE' then
      select is_builtin into locked from questions where id = old.question_id;
      if coalesce(locked,false) then raise exception 'BUILTIN_PROTECTED: hidden test cases of built-in questions are read-only'; end if;
    end if;
  end if;
  if tg_op = 'DELETE' then return old; end if;
  return new;
end $$;
drop trigger if exists trg_protect_builtin_t on coding_tests;
create trigger trg_protect_builtin_t before insert or update or delete on coding_tests
  for each row execute function protect_builtin_tests();

-- ---------------------------------------------------------------- exam library (read-only catalogue)
create table if not exists library_exams(
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  title text not null,
  description text,
  domain_id uuid references domains(id),
  category text not null check (category in ('web','language','database','entrance')),
  difficulty text not null check (difficulty in ('beginner','intermediate','advanced','mixed')),
  exam_type text not null default 'subject' check (exam_type in ('subject','entrance','section')),
  duration_min int not null check (duration_min > 0),
  pass_pct int not null default 50 check (pass_pct between 1 and 100),
  target_questions int not null check (target_questions > 0),     -- what the package is designed to contain
  question_count int not null default 0,                          -- what it actually contains (filled by validation)
  total_marks numeric not null default 0,
  sections jsonb not null default '[]',                           -- [{name, questions, marks}] actual
  section_targets jsonb not null default '{}',                    -- {"Section name": n} intended allocation; checked by the validator
  status text not null default 'draft' check (status in ('draft','ready','blocked')),
  validation jsonb not null default '{}',
  validated_at timestamptz,
  version int not null default 1,
  created_at timestamptz not null default now());
alter table library_exams add column if not exists section_targets jsonb not null default '{}';
create index if not exists lib_cat_diff on library_exams(category, difficulty);

create table if not exists library_exam_questions(
  library_exam_id uuid not null references library_exams(id) on delete cascade,
  question_id uuid not null references questions(id) on delete restrict,
  section text not null default 'Main',
  position int not null,
  primary key (library_exam_id, question_id));
create index if not exists leq_q on library_exam_questions(question_id);

-- ---------------------------------------------------------------- hosting
create table if not exists hosted_exams(
  id uuid primary key default gen_random_uuid(),
  library_exam_id uuid not null references library_exams(id) on delete restrict,
  library_version int not null,
  title text not null,
  description text,
  instructions text,
  status text not null default 'draft' check (status in ('draft','scheduled','published','cancelled')),
  target_mode text not null default 'all' check (target_mode in ('all','branch','selected')),
  branches text[] not null default '{}',
  start_at timestamptz, end_at timestamptz,
  duration_min int not null check (duration_min > 0),
  pass_pct int not null check (pass_pct between 1 and 100),
  max_attempts int not null default 1 check (max_attempts between 1 and 50),
  negative_marking numeric not null default 0 check (negative_marking between 0 and 1),
  shuffle_questions bool not null default false,
  shuffle_options bool not null default false,
  max_switches int not null default 2 check (max_switches between 0 and 20),
  require_fullscreen bool not null default true,
  ai_proctoring bool not null default false,
  proctoring jsonb not null default '{}',
  show_solutions text not null default 'never' check (show_solutions in ('never','after_submit','after_end')),
  marks_multiplier numeric not null default 1 check (marks_multiplier between 0.25 and 10),
  question_count int not null,
  total_marks numeric not null,
  exam_id uuid unique references exams(id) on delete set null,   -- row used by the existing exam engine
  created_by uuid,
  created_at timestamptz not null default now(),
  published_at timestamptz,
  check (end_at is null or start_at is null or end_at > start_at));
create index if not exists hosted_status on hosted_exams(status);
create index if not exists hosted_lib on hosted_exams(library_exam_id);

-- Frozen copy of every question (with answer key and coding tests) taken when the exam is hosted.
create table if not exists hosted_exam_questions(
  hosted_exam_id uuid not null references hosted_exams(id) on delete cascade,
  question_id uuid not null,
  section text not null default 'Main',
  position int not null,
  snapshot jsonb not null,
  tests jsonb not null default '[]',      -- [{in,out,hidden}]
  primary key (hosted_exam_id, question_id));

create table if not exists hosted_exam_students(
  hosted_exam_id uuid not null references hosted_exams(id) on delete cascade,
  email text not null references students(email) on delete cascade,
  primary key (hosted_exam_id, email));
create index if not exists hes_email on hosted_exam_students(email);

alter table exams
  add column if not exists hosted_id uuid unique references hosted_exams(id) on delete set null,
  add column if not exists require_fullscreen bool not null default true,
  add column if not exists ai_proctoring bool not null default false;

-- Snapshot rows are immutable. Only a cascade from deleting a draft hosted exam may remove them.
create or replace function lock_snapshot() returns trigger language plpgsql as $$
begin
  if tg_op = 'DELETE' and not exists (select 1 from hosted_exams h where h.id = old.hosted_exam_id) then return old; end if;
  raise exception 'SNAPSHOT_IMMUTABLE: hosted exam content is frozen';
end $$;
drop trigger if exists trg_lock_snapshot on hosted_exam_questions;
create trigger trg_lock_snapshot before update or delete on hosted_exam_questions
  for each row execute function lock_snapshot();

-- A hosted exam that was ever published cannot be deleted (cancel it instead).
create or replace function lock_hosted_delete() returns trigger language plpgsql as $$
begin
  if old.published_at is not null or exists (select 1 from exam_sessions s where s.exam_id = old.exam_id) then
    raise exception 'HOSTED_NOT_DELETABLE: cancel the exam instead of deleting it';
  end if;
  return old;
end $$;
drop trigger if exists trg_lock_hosted_delete on hosted_exams;
create trigger trg_lock_hosted_delete before delete on hosted_exams for each row execute function lock_hosted_delete();

-- The legacy exam row of a hosted exam cannot be re-pointed at other questions from the browser.
create or replace function lock_hosted_exam_row() returns trigger language plpgsql as $$
begin
  if current_user in ('authenticated','anon') and old.hosted_id is not null then
    if tg_op = 'DELETE' then raise exception 'HOSTED_EXAM_LOCKED: manage this exam from Exam Library > Hosted exams'; end if;
    if new.hosted_id is distinct from old.hosted_id or new.question_ids is distinct from old.question_ids
       or new.selection_mode is distinct from old.selection_mode or new.domain_id is distinct from old.domain_id then
      raise exception 'HOSTED_EXAM_LOCKED: the question set of a hosted exam is frozen';
    end if;
  end if;
  if tg_op = 'DELETE' then return old; end if;
  return new;
end $$;
drop trigger if exists trg_lock_hosted_exam_row on exams;
create trigger trg_lock_hosted_exam_row before update or delete on exams for each row execute function lock_hosted_exam_row();

-- ---------------------------------------------------------------- RLS
do $$ declare t text; begin
  foreach t in array array['library_exams','library_exam_questions','hosted_exams','hosted_exam_questions','hosted_exam_students'] loop
    execute format('alter table %I enable row level security', t);
    execute format('drop policy if exists "admin" on %I', t);
    execute format('drop policy if exists "admin_read" on %I', t);
  end loop; end $$;
-- Library: admins may read, nobody may write from the browser.
create policy "admin_read" on library_exams for select using (is_admin());
create policy "admin_read" on library_exam_questions for select using (is_admin());
-- Hosting data: admins read; every write goes through the security-definer functions below.
create policy "admin_read" on hosted_exams for select using (is_admin());
create policy "admin_read" on hosted_exam_questions for select using (is_admin());
create policy "admin_read" on hosted_exam_students for select using (is_admin());

-- ---------------------------------------------------------------- status + eligibility
create or replace function hosted_effective_status(h hosted_exams) returns text language sql stable as $$
  select case
    when h.status in ('draft','cancelled') then h.status
    when h.end_at is not null and now() > h.end_at then 'completed'
    when h.start_at is not null and now() < h.start_at then 'scheduled'
    when exists (select 1 from exam_sessions s where s.exam_id = h.exam_id) then 'active'
    else 'published' end $$;

-- Server-side eligibility. Used by the Edge Function and again inside start_attempt.
create or replace function is_eligible(p_email text, p_exam uuid) returns boolean language plpgsql stable security definer set search_path = public as $$
declare h hosted_exams; st students;
begin
  select * into h from hosted_exams where exam_id = p_exam;
  if not found then return true; end if;                    -- legacy exam: open to every registered student
  if h.status not in ('scheduled','published') then return false; end if;
  select * into st from students where email = p_email;
  if not found then return false; end if;
  if h.target_mode = 'all' then return true; end if;
  if h.target_mode = 'branch' then
    return exists (select 1 from unnest(h.branches) b where lower(trim(b)) = lower(trim(coalesce(st.branch,''))));
  end if;
  return exists (select 1 from hosted_exam_students x where x.hosted_exam_id = h.id and x.email = p_email);
end $$;
revoke all on function is_eligible(text,uuid) from public, anon, authenticated;
grant execute on function is_eligible(text,uuid) to service_role;

-- start_attempt: same as migration 4 plus the eligibility check.
create or replace function start_attempt(p_email text, p_exam uuid, p_qids uuid[], p_orders jsonb)
returns exam_sessions language plpgsql security definer set search_path = public as $$
declare ex exams; s exam_sessions; used int; n int; secs int;
begin
  perform pg_advisory_xact_lock(hashtext(p_email || p_exam::text));
  select * into ex from exams where id = p_exam and live;
  if not found then raise exception 'EXAM_NOT_AVAILABLE'; end if;
  if not is_eligible(p_email, p_exam) then raise exception 'NOT_ELIGIBLE'; end if;
  if ex.start_at is not null and now() < ex.start_at then raise exception 'EXAM_NOT_STARTED'; end if;
  if ex.end_at is not null and now() > ex.end_at then raise exception 'EXAM_ENDED'; end if;
  select * into s from exam_sessions where email = p_email and exam_id = p_exam and status = 'in_progress';
  if found then return s; end if;
  select greatest((select coalesce(max(attempt_no),0) from exam_sessions where email = p_email and exam_id = p_exam),
                  (select coalesce(max(attempt_no),0) from attempts where student_email = p_email and exam_id = p_exam)) into used;
  if used >= ex.max_attempts then raise exception 'NO_ATTEMPTS_LEFT'; end if;
  n := coalesce(array_length(p_qids,1),0);
  if n = 0 then raise exception 'EXAM_HAS_NO_QUESTIONS'; end if;
  secs := case ex.mode when 'total' then ex.total_min*60 when 'perq' then ex.per_sec*n else least(ex.total_min*60, ex.per_sec*n) end;
  -- an attempt never outlives the exam window
  if ex.end_at is not null then secs := least(secs, greatest(1, extract(epoch from (ex.end_at - now()))::int)); end if;
  insert into exam_sessions(email, exam_id, attempt_no, deadline_at, question_ids, option_orders)
  values (p_email, p_exam, used+1, now() + make_interval(secs => secs), p_qids, coalesce(p_orders,'{}'::jsonb)) returning * into s;
  return s;
end $$;
revoke all on function start_attempt(text,uuid,uuid[],jsonb) from public, anon, authenticated;
grant execute on function start_attempt(text,uuid,uuid[],jsonb) to service_role;

-- ---------------------------------------------------------------- hosting RPCs (admin only, transactional)
create or replace function sync_exam_row(h hosted_exams) returns void language plpgsql security definer set search_path = public as $$
declare lib library_exams;
begin
  select * into lib from library_exams where id = h.library_exam_id;
  update exams set title = h.title, description = h.description, total_min = h.duration_min, pass_pct = h.pass_pct,
    max_attempts = h.max_attempts, negative_marking = h.negative_marking, shuffle = h.shuffle_questions,
    shuffle_options = h.shuffle_options, max_switches = h.max_switches, require_fullscreen = h.require_fullscreen,
    ai_proctoring = h.ai_proctoring, show_solutions = h.show_solutions, start_at = h.start_at, end_at = h.end_at,
    live = (h.status in ('scheduled','published')), mode = 'total', updated_at = now()
  where id = h.exam_id;
end $$;
revoke all on function sync_exam_row(hosted_exams) from public, anon, authenticated;

-- p_cfg keys: title, description, instructions, duration_min, pass_pct, max_attempts, negative_marking, shuffle_questions,
--   shuffle_options, max_switches, require_fullscreen, ai_proctoring, proctoring, show_solutions, marks_multiplier,
--   start_at, end_at, target_mode, branches[], publish (bool)
create or replace function host_exam(p_library uuid, p_cfg jsonb, p_students text[] default '{}')
returns hosted_exams language plpgsql security definer set search_path = public as $$
declare lib library_exams; h hosted_exams; eid uuid; mult numeric; n int; tm text; qids uuid[]; bad int; pub bool; st text; emails text[];
begin
  if not is_admin() then raise exception 'FORBIDDEN'; end if;
  select * into lib from library_exams where id = p_library for share;
  if not found then raise exception 'LIBRARY_EXAM_NOT_FOUND'; end if;
  if lib.status <> 'ready' then raise exception 'LIBRARY_EXAM_NOT_READY: this package has not passed content validation'; end if;
  mult := coalesce((p_cfg->>'marks_multiplier')::numeric, 1);
  select count(*) into bad from library_exam_questions l join questions q on q.id = l.question_id
    where l.library_exam_id = p_library and (q.marks * mult * 2) <> floor(q.marks * mult * 2);
  if bad > 0 then raise exception 'MARKS_INCOMPATIBLE: every question mark must stay a multiple of 0.5'; end if;
  tm := coalesce(p_cfg->>'target_mode','all');
  if tm not in ('all','branch','selected') then raise exception 'BAD_TARGET_MODE'; end if;
  if tm = 'branch' and coalesce(jsonb_array_length(p_cfg->'branches'),0) = 0 then raise exception 'NO_BRANCH_SELECTED'; end if;
  emails := (select coalesce(array_agg(distinct lower(trim(e))), '{}') from unnest(coalesce(p_students,'{}')) e);
  if tm = 'selected' and coalesce(array_length(emails,1),0) = 0 then raise exception 'NO_STUDENTS_SELECTED'; end if;
  pub := coalesce((p_cfg->>'publish')::bool, false);
  st := case when not pub then 'draft'
             when nullif(p_cfg->>'start_at','') is not null and (p_cfg->>'start_at')::timestamptz > now() then 'scheduled' else 'published' end;

  insert into hosted_exams(library_exam_id, library_version, title, description, instructions, status, target_mode, branches, start_at, end_at,
      duration_min, pass_pct, max_attempts, negative_marking, shuffle_questions, shuffle_options, max_switches, require_fullscreen,
      ai_proctoring, proctoring, show_solutions, marks_multiplier, question_count, total_marks, created_by, published_at)
  values (p_library, lib.version, coalesce(nullif(trim(p_cfg->>'title'),''), lib.title), coalesce(p_cfg->>'description', lib.description), p_cfg->>'instructions',
      st, tm, coalesce((select array_agg(x) from jsonb_array_elements_text(coalesce(p_cfg->'branches','[]'::jsonb)) x), '{}'),
      nullif(p_cfg->>'start_at','')::timestamptz, nullif(p_cfg->>'end_at','')::timestamptz,
      coalesce((p_cfg->>'duration_min')::int, lib.duration_min), coalesce((p_cfg->>'pass_pct')::int, lib.pass_pct),
      coalesce((p_cfg->>'max_attempts')::int, 1), coalesce((p_cfg->>'negative_marking')::numeric, 0),
      coalesce((p_cfg->>'shuffle_questions')::bool, false), coalesce((p_cfg->>'shuffle_options')::bool, false),
      coalesce((p_cfg->>'max_switches')::int, 2), coalesce((p_cfg->>'require_fullscreen')::bool, true),
      coalesce((p_cfg->>'ai_proctoring')::bool, false), coalesce(p_cfg->'proctoring','{}'::jsonb),
      coalesce(p_cfg->>'show_solutions','never'), mult, lib.question_count, round(lib.total_marks * mult, 2), auth.uid(),
      case when pub then now() end)
  returning * into h;

  insert into hosted_exam_questions(hosted_exam_id, question_id, section, position, snapshot, tests)
  select h.id, q.id, l.section, l.position,
    jsonb_build_object('type', q.type, 'category', q.category, 'difficulty', q.difficulty, 'topic', q.topic, 'title', q.title, 'text', q.text,
      'options', q.options, 'correct', q.correct, 'marks', q.marks * mult, 'explanation', q.explanation, 'statement', q.statement,
      'languages', to_jsonb(q.languages), 'meta', q.meta, 'domain_id', q.domain_id),
    coalesce((select jsonb_agg(jsonb_build_object('in', t.input, 'out', t.expected, 'hidden', t.is_hidden) order by t.position)
              from coding_tests t where t.question_id = q.id), '[]'::jsonb)
  from library_exam_questions l join questions q on q.id = l.question_id
  where l.library_exam_id = p_library order by l.position;
  get diagnostics n = row_count;
  if n <> lib.question_count then raise exception 'SNAPSHOT_COUNT_MISMATCH'; end if;
  select array_agg(question_id order by position) into qids from hosted_exam_questions where hosted_exam_id = h.id;

  insert into exams(title, description, domain, domain_id, mode, total_min, pass_pct, max_switches, shuffle, live, question_ids, max_attempts,
      start_at, end_at, shuffle_options, negative_marking, selection_mode, show_solutions, hosted_id, require_fullscreen, ai_proctoring)
  values (h.title, h.description, (select name from domains where id = lib.domain_id), lib.domain_id, 'total', h.duration_min, h.pass_pct,
      h.max_switches, h.shuffle_questions, h.status in ('scheduled','published'), qids, h.max_attempts, h.start_at, h.end_at, h.shuffle_options,
      h.negative_marking, 'manual', h.show_solutions, h.id, h.require_fullscreen, h.ai_proctoring)
  returning id into eid;
  update hosted_exams set exam_id = eid where id = h.id returning * into h;

  if tm = 'selected' then
    insert into hosted_exam_students(hosted_exam_id, email) select h.id, s.email from students s where s.email = any(emails);
    get diagnostics n = row_count;
    if n = 0 then raise exception 'NO_REGISTERED_STUDENTS_SELECTED'; end if;
  end if;
  return h;
end $$;

-- Change settings of a hosted exam. Content is never touched. Once attempts exist, scoring rules are locked.
create or replace function update_hosted_exam(p_id uuid, p_patch jsonb, p_students text[] default null)
returns hosted_exams language plpgsql security definer set search_path = public as $$
declare h hosted_exams; started bool; tm text; emails text[];
begin
  if not is_admin() then raise exception 'FORBIDDEN'; end if;
  select * into h from hosted_exams where id = p_id for update;
  if not found then raise exception 'HOSTED_EXAM_NOT_FOUND'; end if;
  if h.status = 'cancelled' then raise exception 'HOSTED_EXAM_CANCELLED'; end if;
  select exists (select 1 from exam_sessions where exam_id = h.exam_id) into started;
  if started and (p_patch ? 'duration_min' or p_patch ? 'pass_pct' or p_patch ? 'negative_marking' or p_patch ? 'shuffle_questions' or p_patch ? 'shuffle_options') then
    raise exception 'SCORING_LOCKED: students have already started, so duration, pass mark, negative marking and shuffling cannot change';
  end if;
  tm := coalesce(p_patch->>'target_mode', h.target_mode);
  update hosted_exams set
    title = coalesce(nullif(trim(p_patch->>'title'),''), title),
    description = case when p_patch ? 'description' then p_patch->>'description' else description end,
    instructions = case when p_patch ? 'instructions' then p_patch->>'instructions' else instructions end,
    duration_min = coalesce((p_patch->>'duration_min')::int, duration_min),
    pass_pct = coalesce((p_patch->>'pass_pct')::int, pass_pct),
    max_attempts = coalesce((p_patch->>'max_attempts')::int, max_attempts),
    negative_marking = coalesce((p_patch->>'negative_marking')::numeric, negative_marking),
    shuffle_questions = coalesce((p_patch->>'shuffle_questions')::bool, shuffle_questions),
    shuffle_options = coalesce((p_patch->>'shuffle_options')::bool, shuffle_options),
    max_switches = coalesce((p_patch->>'max_switches')::int, max_switches),
    require_fullscreen = coalesce((p_patch->>'require_fullscreen')::bool, require_fullscreen),
    ai_proctoring = coalesce((p_patch->>'ai_proctoring')::bool, ai_proctoring),
    proctoring = coalesce(p_patch->'proctoring', proctoring),
    show_solutions = coalesce(p_patch->>'show_solutions', show_solutions),
    start_at = case when p_patch ? 'start_at' then nullif(p_patch->>'start_at','')::timestamptz else start_at end,
    end_at = case when p_patch ? 'end_at' then nullif(p_patch->>'end_at','')::timestamptz else end_at end,
    target_mode = tm,
    branches = case when p_patch ? 'branches' then coalesce((select array_agg(x) from jsonb_array_elements_text(p_patch->'branches') x),'{}') else branches end
  where id = p_id returning * into h;
  if p_students is not null then
    emails := (select coalesce(array_agg(distinct lower(trim(e))), '{}') from unnest(p_students) e);
    delete from hosted_exam_students where hosted_exam_id = p_id;
    insert into hosted_exam_students(hosted_exam_id, email) select p_id, s.email from students s where s.email = any(emails);
  end if;
  if h.target_mode = 'selected' and not exists (select 1 from hosted_exam_students where hosted_exam_id = p_id) then raise exception 'NO_STUDENTS_SELECTED'; end if;
  if h.target_mode = 'branch' and coalesce(array_length(h.branches,1),0) = 0 then raise exception 'NO_BRANCH_SELECTED'; end if;
  perform sync_exam_row(h);
  return h;
end $$;

-- draft -> published/scheduled, or cancel. Completed/active are derived from the clock and attempts.
create or replace function set_hosted_status(p_id uuid, p_action text)
returns hosted_exams language plpgsql security definer set search_path = public as $$
declare h hosted_exams;
begin
  if not is_admin() then raise exception 'FORBIDDEN'; end if;
  select * into h from hosted_exams where id = p_id for update;
  if not found then raise exception 'HOSTED_EXAM_NOT_FOUND'; end if;
  if p_action = 'publish' then
    if h.status <> 'draft' then raise exception 'ONLY_DRAFTS_CAN_BE_PUBLISHED'; end if;
    if h.end_at is not null and h.end_at <= now() then raise exception 'END_TIME_IN_PAST'; end if;
    update hosted_exams set status = case when start_at is not null and start_at > now() then 'scheduled' else 'published' end, published_at = now()
      where id = p_id returning * into h;
  elsif p_action = 'cancel' then
    if h.status = 'cancelled' then return h; end if;
    update hosted_exams set status = 'cancelled' where id = p_id returning * into h;
  elsif p_action = 'unpublish' then
    if h.status not in ('scheduled','published') or exists (select 1 from exam_sessions where exam_id = h.exam_id) then
      raise exception 'CANNOT_UNPUBLISH: students have already started, cancel the exam instead'; end if;
    update hosted_exams set status = 'draft' where id = p_id returning * into h;
  else raise exception 'BAD_ACTION'; end if;
  perform sync_exam_row(h);
  return h;
end $$;

do $$ begin
  revoke all on function host_exam(uuid,jsonb,text[]), update_hosted_exam(uuid,jsonb,text[]), set_hosted_status(uuid,text) from public, anon;
  grant execute on function host_exam(uuid,jsonb,text[]), update_hosted_exam(uuid,jsonb,text[]), set_hosted_status(uuid,text) to authenticated, service_role;
end $$;

-- ---------------------------------------------------------------- content validation inside the database
-- Re-checks every package. A package is READY only if every check passes. Run after every seed.
create or replace function question_problems(q questions) returns text[] language plpgsql stable as $$
declare p text[] := '{}'; n int; opts jsonb := q.options; c jsonb := q.correct;
begin
  if q.content_status <> 'validated' then p := array_append(p, 'not validated'); end if;
  if q.text is null or length(trim(q.text)) < 12 then p := array_append(p, 'question text too short'); end if;
  if q.text ~* '^(question|sample|test)\s*\d*\s*[:.?]?\s*$' then p := array_append(p, 'placeholder text'); end if;
  if q.type in ('mcq','multi') then
    if opts is null or jsonb_typeof(opts) <> 'array' then p := array_append(p, 'options missing'); return p; end if;
    n := jsonb_array_length(opts);
    if n < 3 then p := array_append(p, 'fewer than 3 options'); end if;
    if (select count(distinct lower(trim(x))) from jsonb_array_elements_text(opts) x) <> n then p := array_append(p, 'duplicate options'); end if;
    if c is null or jsonb_typeof(c) <> 'array' or jsonb_array_length(c) = 0 then p := array_append(p, 'no correct answer'); return p; end if;
    if exists (select 1 from jsonb_array_elements_text(c) e where e::int < 0 or e::int >= n) then p := array_append(p, 'correct index out of range'); end if;
    if (select count(distinct e) from jsonb_array_elements_text(c) e) <> jsonb_array_length(c) then p := array_append(p, 'repeated correct index'); end if;
    if q.type = 'mcq' and jsonb_array_length(c) <> 1 then p := array_append(p, 'mcq needs exactly one correct option'); end if;
    if q.type = 'multi' and (jsonb_array_length(c) < 2 or jsonb_array_length(c) >= n) then p := array_append(p, 'multi needs 2..n-1 correct options'); end if;
  elsif q.type = 'tf' then
    if c is null or (c #>> '{}') not in ('true','false') then p := array_append(p, 'true/false answer invalid'); end if;
  elsif q.type = 'short' then
    if c is null or length(trim(c #>> '{}')) = 0 then p := array_append(p, 'no accepted answer'); end if;
  elsif q.type = 'code' then
    if (select count(*) from coding_tests t where t.question_id = q.id) < 3 then p := array_append(p, 'fewer than 3 test cases'); end if;
    if not exists (select 1 from coding_tests t where t.question_id = q.id and t.is_hidden) then p := array_append(p, 'no hidden test case'); end if;
    if not exists (select 1 from coding_tests t where t.question_id = q.id and not t.is_hidden) then p := array_append(p, 'no sample test case'); end if;
    if coalesce(q.statement->>'description','') = '' then p := array_append(p, 'coding statement missing'); end if;
  else p := array_append(p, 'unknown type'); end if;
  if q.type <> 'code' and coalesce(trim(q.explanation),'') = '' then p := array_append(p, 'no explanation'); end if;
  if not q.is_builtin then p := array_append(p, 'not a built-in question'); end if;
  return p;
end $$;

create or replace function validate_library_exam(p_id uuid) returns jsonb language plpgsql security definer set search_path = public as $$
declare lib library_exams; issues jsonb := '[]'; n int; marks numeric; r record; probs text[]; secs jsonb; dups int;
begin
  select * into lib from library_exams where id = p_id;
  if not found then raise exception 'LIBRARY_EXAM_NOT_FOUND'; end if;
  select count(*), coalesce(sum(q.marks),0) into n, marks from library_exam_questions l join questions q on q.id = l.question_id where l.library_exam_id = p_id;
  if (select count(*) from library_exam_questions where library_exam_id = p_id) <> n then issues := issues || jsonb_build_object('check','question_ids','detail','package lists question ids that do not exist'); end if;
  if lib.duration_min is null or lib.duration_min <= 0 then issues := issues || jsonb_build_object('check','metadata','detail','invalid duration'); end if;
  if lib.pass_pct is null or lib.pass_pct < 1 or lib.pass_pct > 100 then issues := issues || jsonb_build_object('check','metadata','detail','invalid pass percentage'); end if;
  if coalesce(trim(lib.title),'') = '' then issues := issues || jsonb_build_object('check','metadata','detail','missing title'); end if;
  if exists (select 1 from library_exam_questions where library_exam_id = p_id and coalesce(trim(section),'') = '') then issues := issues || jsonb_build_object('check','sections','detail','a question has no section'); end if;
  if lib.section_targets <> '{}'::jsonb then
    for r in select e.key as name, e.value::int as want, (select count(*) from library_exam_questions l where l.library_exam_id = p_id and l.section = e.key) as have from jsonb_each_text(lib.section_targets) e loop
      if r.have <> r.want then issues := issues || jsonb_build_object('check','sections','detail', format('section %s has %s of %s questions', r.name, r.have, r.want)); end if;
    end loop;
    if exists (select 1 from library_exam_questions l where l.library_exam_id = p_id and not (lib.section_targets ? l.section)) then issues := issues || jsonb_build_object('check','sections','detail','question in an undeclared section'); end if;
  end if;
  if exists (select 1 from library_exam_questions l join questions q on q.id = l.question_id where l.library_exam_id = p_id and (q.marks is null or q.marks <= 0)) then issues := issues || jsonb_build_object('check','marks','detail','a question has zero or negative marks'); end if;
  if n <> lib.target_questions then issues := issues || jsonb_build_object('check','question_count','detail', format('package has %s of %s designed questions', n, lib.target_questions)); end if;
  select count(*) into dups from (select md5(lower(q.text)) from library_exam_questions l join questions q on q.id = l.question_id
      where l.library_exam_id = p_id group by 1 having count(*) > 1) d;
  if dups > 0 then issues := issues || jsonb_build_object('check','duplicates','detail', dups || ' duplicate question texts'); end if;
  for r in select q.id, q.text, q, l.section, q.difficulty, q.domain_id from library_exam_questions l join questions q on q.id = l.question_id where l.library_exam_id = p_id loop
    probs := question_problems(r.q);
    if array_length(probs,1) > 0 then issues := issues || jsonb_build_object('check','question','question_id',r.id,'detail', array_to_string(probs,'; ')); end if;
    if lib.difficulty <> 'mixed' and r.difficulty <> lib.difficulty then issues := issues || jsonb_build_object('check','difficulty','question_id',r.id,'detail','question is '||r.difficulty||' but package is '||lib.difficulty); end if;
    if lib.domain_id is not null and lib.exam_type = 'subject' and r.domain_id <> lib.domain_id then issues := issues || jsonb_build_object('check','domain','question_id',r.id,'detail','question belongs to another domain'); end if;
  end loop;
  select coalesce(jsonb_agg(jsonb_build_object('name', section, 'questions', c, 'marks', m) order by mn), '[]') into secs
    from (select l.section, count(*) c, sum(q.marks) m, min(l.position) mn from library_exam_questions l join questions q on q.id = l.question_id where l.library_exam_id = p_id group by l.section) s;
  update library_exams set question_count = n, total_marks = marks, sections = secs,
    status = case when jsonb_array_length(issues) = 0 and n > 0 then 'ready' else 'blocked' end,
    validation = jsonb_build_object('issues', issues, 'checked_questions', n, 'at', now()), validated_at = now()
  where id = p_id;
  return issues;
end $$;
revoke all on function validate_library_exam(uuid) from public, anon, authenticated;
grant execute on function validate_library_exam(uuid) to service_role;

create or replace function validate_all_library_exams() returns table(slug text, status text, issue_count int) language plpgsql security definer set search_path = public as $$
declare r record;
begin
  for r in select id from library_exams loop perform validate_library_exam(r.id); end loop;
  return query select l.slug, l.status, jsonb_array_length(l.validation->'issues') from library_exams l order by l.category, l.slug;
end $$;
revoke all on function validate_all_library_exams() from public, anon, authenticated;
grant execute on function validate_all_library_exams() to service_role;

-- Admin button "Re-validate": runs the real validators and returns the verdicts. Only admins may call it.
create or replace function revalidate_library_exams() returns table(slug text, status text, issue_count int) language plpgsql security definer set search_path = public as $$
begin
  if not is_admin() then raise exception 'FORBIDDEN'; end if;
  return query select * from validate_all_library_exams();
end $$;
revoke all on function revalidate_library_exams() from public, anon;
grant execute on function revalidate_library_exams() to authenticated, service_role;
