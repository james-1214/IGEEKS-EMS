-- IGEEKS EMS: reusable exam templates, hosted exam targeting and immutable question snapshots.
-- Additive migration. Existing exams and attempts remain available.

insert into domains(name,slug,sort) values
 ('Quantitative Aptitude','quantitative-aptitude',14),('Logical Reasoning','logical-reasoning',15),
 ('Verbal Ability','verbal-ability',16),('Analytical Thinking','analytical-thinking',17)
ON CONFLICT DO NOTHING;

create table if not exists exam_templates (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  category text not null default 'domain',
  domain text,
  domain_id uuid references domains(id),
  difficulty text check (difficulty in ('beginner','intermediate','advanced','mixed')),
  config jsonb not null default '{}'::jsonb,
  question_ids uuid[] not null default '{}',
  question_snapshot jsonb not null default '{}'::jsonb,
  is_archived boolean not null default false,
  created_by uuid references auth.users(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create index if not exists exam_templates_category on exam_templates(category, is_archived);
create index if not exists exam_templates_domain on exam_templates(domain_id);

alter table exams add column if not exists template_id uuid references exam_templates(id) on delete set null;
alter table exams add column if not exists category text not null default 'domain';
alter table exams add column if not exists question_snapshot jsonb not null default '{}'::jsonb;
alter table exams add column if not exists proctoring_config jsonb not null default '{}'::jsonb;

create table if not exists exam_targets (
  id uuid primary key default gen_random_uuid(),
  exam_id uuid not null references exams(id) on delete cascade,
  target_type text not null check (target_type in ('all','branch','student')),
  target_value text not null default '',
  created_at timestamptz not null default now(),
  constraint exam_targets_unique unique(exam_id, target_type, target_value),
  constraint exam_targets_value check ((target_type = 'all' and target_value = '') or (target_type <> 'all' and length(trim(target_value)) > 0))
);
create index if not exists exam_targets_exam on exam_targets(exam_id);
create index if not exists exam_targets_value on exam_targets(target_type, lower(target_value));

alter table exam_templates enable row level security;
alter table exam_targets enable row level security;
drop policy if exists "admin" on exam_templates;
create policy "admin" on exam_templates for all using (is_admin()) with check (is_admin());
drop policy if exists "admin" on exam_targets;
create policy "admin" on exam_targets for all using (is_admin()) with check (is_admin());

alter table exam_sessions add column if not exists question_snapshot jsonb not null default '{}'::jsonb;

-- Keep the existing function contract while copying the hosted exam snapshot into each attempt.
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
  select greatest((select coalesce(max(attempt_no),0) from exam_sessions where email = p_email and exam_id = p_exam),
                  (select coalesce(max(attempt_no),0) from attempts where student_email = p_email and exam_id = p_exam)) into used;
  if used >= ex.max_attempts then raise exception 'NO_ATTEMPTS_LEFT'; end if;
  n := coalesce(array_length(p_qids,1),0);
  if n = 0 then raise exception 'EXAM_HAS_NO_QUESTIONS'; end if;
  secs := case ex.mode when 'total' then ex.total_min*60 when 'perq' then ex.per_sec*n
                       else least(ex.total_min*60, ex.per_sec*n) end;
  insert into exam_sessions(email, exam_id, attempt_no, deadline_at, question_ids, option_orders, question_snapshot)
  values (p_email, p_exam, used+1, now() + make_interval(secs => secs), p_qids, coalesce(p_orders,'{}'::jsonb), coalesce(ex.question_snapshot,'{}'::jsonb))
  returning * into s;
  return s;
end $$;
