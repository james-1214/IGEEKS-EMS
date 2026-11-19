-- Migration 6: camera proctoring, Safe Exam Browser check, optional/mandatory coding, and the 60-question Aptitude & Coding package.
-- Additive and re-runnable. Run AFTER migration_5.sql (and migration_5_exam_library.sql if you use it), BEFORE the seed files.
-- Order: migration_6.sql -> seed_questions.sql -> library/01_exam_packages.sql -> select * from validate_all_library_exams();

-- ---------------------------------------------------------------- domain for coding problems
insert into domains(name,slug,sort,category) values ('Coding Challenges','coding',30,'language') on conflict do nothing;

-- ---------------------------------------------------------------- new settings
alter table library_exams add column if not exists coding_policy text not null default 'required_all' check (coding_policy in ('optional','required_engineering','required_all'));
alter table library_exams add column if not exists coding_min int not null default 0 check (coding_min >= 0);
alter table hosted_exams
  add column if not exists require_camera bool not null default false,
  add column if not exists require_seb bool not null default false,
  add column if not exists coding_policy text not null default 'required_all' check (coding_policy in ('optional','required_engineering','required_all')),
  add column if not exists coding_min int not null default 0 check (coding_min >= 0),
  add column if not exists coding_branches text[] not null default '{}';
alter table exams
  add column if not exists require_camera bool not null default false,
  add column if not exists require_seb bool not null default false,
  add column if not exists coding_policy text not null default 'required_all' check (coding_policy in ('optional','required_engineering','required_all')),
  add column if not exists coding_min int not null default 0,
  add column if not exists coding_branches text[] not null default '{}';
-- 'required_all' is the behaviour every existing exam already has (code questions always count), so nothing changes for them.

-- ---------------------------------------------------------------- engineering branch classification
-- Used by the exam engine to decide who must attempt the coding section. A hosted exam may override it with an explicit
-- branch list (coding_branches). Matching is case-insensitive and ignores punctuation, so "B.E. CSE", "cse " and "Computer Science" all work.
create or replace function is_engineering_branch(p_branch text, p_custom text[] default '{}') returns boolean language plpgsql immutable as $$
declare b text := lower(regexp_replace(coalesce(p_branch,''), '[^a-zA-Z0-9 ]', ' ', 'g'));
begin
  b := trim(regexp_replace(b, '\s+', ' ', 'g'));
  if b = '' then return false; end if;
  if coalesce(array_length(p_custom,1),0) > 0 then
    return exists (select 1 from unnest(p_custom) c where trim(regexp_replace(lower(c), '[^a-z0-9 ]', ' ', 'g')) = b);
  end if;
  -- non-engineering programmes win over loose keyword hits (for example "BCA" or "B Sc Computer Science")
  if b ~ '(^| )(bca|mca|bsc|msc|b sc|m sc|bcom|mcom|b com|m com|bba|mba|ba|ma|b a|m a|arts|commerce|law|llb|pharmacy|b pharm|nursing|diploma)( |$)' then return false; end if;
  return b ~ '(^| )(engineering|engg|b e|be|b tech|btech|m tech|mtech|cse|cs|cse ai|aiml|aids|ai|ml|it|ece|eee|eie|ete|ice|mech|mechanical|civil|chemical|aerospace|aeronautical|automobile|biotech|biomedical|robotics|instrumentation|telecommunication|electronics|electrical|computer|information technology|data science|cyber security|production|industrial|metallurgy|mining|marine|textile|agricultural)( |$)';
end $$;
grant execute on function is_engineering_branch(text, text[]) to authenticated, service_role;

-- Admin helper for the Host wizard: how are the branches in my students table classified?
create or replace function classify_branches(p_custom text[] default '{}') returns table(branch text, students bigint, engineering boolean) language plpgsql security definer set search_path = public as $$
begin
  if not is_admin() then raise exception 'FORBIDDEN'; end if;
  return query select trim(s.branch), count(*), is_engineering_branch(trim(s.branch), p_custom) from students s where coalesce(trim(s.branch),'') <> '' group by trim(s.branch) order by 2 desc;
end $$;
revoke all on function classify_branches(text[]) from public, anon;
grant execute on function classify_branches(text[]) to authenticated;

-- ---------------------------------------------------------------- proctoring evidence
create table if not exists proctor_snaps(
  id bigint generated always as identity primary key,
  session_id uuid not null references exam_sessions(id) on delete cascade,
  exam_id uuid references exams(id) on delete set null,
  email text not null,
  image text not null,                       -- small JPEG data URL (about 5-15 KB)
  face boolean,                              -- null when the browser cannot detect faces
  dark boolean not null default false,       -- camera covered or no light
  created_at timestamptz not null default now());
create index if not exists ps_session on proctor_snaps(session_id, created_at);
create table if not exists proctor_events(
  id bigint generated always as identity primary key,
  session_id uuid not null references exam_sessions(id) on delete cascade,
  email text not null,
  kind text not null,
  detail text,
  created_at timestamptz not null default now());
create index if not exists pe_session on proctor_events(session_id, created_at);
alter table proctor_snaps enable row level security; alter table proctor_events enable row level security;
drop policy if exists "admin_read" on proctor_snaps; drop policy if exists "admin_read" on proctor_events;
create policy "admin_read" on proctor_snaps for select using (is_admin());
create policy "admin_read" on proctor_events for select using (is_admin());
-- Students never read these tables. The Edge Function writes them with the service role.

-- ---------------------------------------------------------------- hosting functions, now carrying the new settings
create or replace function sync_exam_row(h hosted_exams) returns void language plpgsql security definer set search_path = public as $$
declare lib library_exams;
begin
  select * into lib from library_exams where id = h.library_exam_id;
  update exams set title = h.title, description = h.description, total_min = h.duration_min, pass_pct = h.pass_pct,
    max_attempts = h.max_attempts, negative_marking = h.negative_marking, shuffle = h.shuffle_questions,
    shuffle_options = h.shuffle_options, max_switches = h.max_switches, require_fullscreen = h.require_fullscreen,
    ai_proctoring = h.ai_proctoring, require_camera = h.require_camera, require_seb = h.require_seb, coding_policy = h.coding_policy, coding_min = h.coding_min, coding_branches = h.coding_branches, show_solutions = h.show_solutions, start_at = h.start_at, end_at = h.end_at,
    live = (h.status in ('scheduled','published')), mode = 'total', updated_at = now()
  where id = h.exam_id;
end $$;

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
  if coalesce(p_cfg->>'coding_policy','') not in ('','optional','required_engineering','required_all') then raise exception 'BAD_CODING_POLICY'; end if;
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
      ai_proctoring, proctoring, show_solutions, marks_multiplier, question_count, total_marks, created_by, published_at,
      require_camera, require_seb, coding_policy, coding_min, coding_branches)
  values (p_library, lib.version, coalesce(nullif(trim(p_cfg->>'title'),''), lib.title), coalesce(p_cfg->>'description', lib.description), p_cfg->>'instructions',
      st, tm, coalesce((select array_agg(x) from jsonb_array_elements_text(coalesce(p_cfg->'branches','[]'::jsonb)) x), '{}'),
      nullif(p_cfg->>'start_at','')::timestamptz, nullif(p_cfg->>'end_at','')::timestamptz,
      coalesce((p_cfg->>'duration_min')::int, lib.duration_min), coalesce((p_cfg->>'pass_pct')::int, lib.pass_pct),
      coalesce((p_cfg->>'max_attempts')::int, 1), coalesce((p_cfg->>'negative_marking')::numeric, 0),
      coalesce((p_cfg->>'shuffle_questions')::bool, false), coalesce((p_cfg->>'shuffle_options')::bool, false),
      coalesce((p_cfg->>'max_switches')::int, 2), coalesce((p_cfg->>'require_fullscreen')::bool, true),
      coalesce((p_cfg->>'ai_proctoring')::bool, false), coalesce(p_cfg->'proctoring','{}'::jsonb),
      coalesce(p_cfg->>'show_solutions','never'), mult, lib.question_count, round(lib.total_marks * mult, 2), auth.uid(),
      case when pub then now() end,
      coalesce((p_cfg->>'require_camera')::bool, false), coalesce((p_cfg->>'require_seb')::bool, false),
      coalesce(nullif(p_cfg->>'coding_policy',''), lib.coding_policy), coalesce((p_cfg->>'coding_min')::int, lib.coding_min),
      coalesce((select array_agg(lower(trim(x))) from jsonb_array_elements_text(coalesce(p_cfg->'coding_branches','[]'::jsonb)) x), '{}'))
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
      start_at, end_at, shuffle_options, negative_marking, selection_mode, show_solutions, hosted_id, require_fullscreen, ai_proctoring,
      require_camera, require_seb, coding_policy, coding_min, coding_branches)
  values (h.title, h.description, (select name from domains where id = lib.domain_id), lib.domain_id, 'total', h.duration_min, h.pass_pct,
      h.max_switches, h.shuffle_questions, h.status in ('scheduled','published'), qids, h.max_attempts, h.start_at, h.end_at, h.shuffle_options,
      h.negative_marking, 'manual', h.show_solutions, h.id, h.require_fullscreen, h.ai_proctoring,
      h.require_camera, h.require_seb, h.coding_policy, h.coding_min, h.coding_branches)
  returning id into eid;
  update hosted_exams set exam_id = eid where id = h.id returning * into h;

  if tm = 'selected' then
    insert into hosted_exam_students(hosted_exam_id, email) select h.id, s.email from students s where s.email = any(emails);
    get diagnostics n = row_count;
    if n = 0 then raise exception 'NO_REGISTERED_STUDENTS_SELECTED'; end if;
  end if;
  return h;
end $$;

create or replace function update_hosted_exam(p_id uuid, p_patch jsonb, p_students text[] default null)
returns hosted_exams language plpgsql security definer set search_path = public as $$
declare h hosted_exams; started bool; tm text; emails text[];
begin
  if not is_admin() then raise exception 'FORBIDDEN'; end if;
  select * into h from hosted_exams where id = p_id for update;
  if not found then raise exception 'HOSTED_EXAM_NOT_FOUND'; end if;
  if h.status = 'cancelled' then raise exception 'HOSTED_EXAM_CANCELLED'; end if;
  select exists (select 1 from exam_sessions where exam_id = h.exam_id) into started;
  if started and (p_patch ? 'duration_min' or p_patch ? 'pass_pct' or p_patch ? 'negative_marking' or p_patch ? 'shuffle_questions' or p_patch ? 'shuffle_options'
      or p_patch ? 'coding_policy' or p_patch ? 'coding_min' or p_patch ? 'require_camera' or p_patch ? 'require_seb') then
    raise exception 'SCORING_LOCKED: students have already started, so duration, pass mark, negative marking, shuffling, camera and coding rules cannot change';
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
    require_camera = coalesce((p_patch->>'require_camera')::bool, require_camera),
    require_seb = coalesce((p_patch->>'require_seb')::bool, require_seb),
    coding_policy = case when coalesce(p_patch->>'coding_policy','') in ('optional','required_engineering','required_all') then p_patch->>'coding_policy' else coding_policy end,
    coding_min = coalesce((p_patch->>'coding_min')::int, coding_min),
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

grant execute on function host_exam(uuid,jsonb,text[]), update_hosted_exam(uuid,jsonb,text[]) to authenticated, service_role;
revoke all on function sync_exam_row(hosted_exams) from public, anon, authenticated;
