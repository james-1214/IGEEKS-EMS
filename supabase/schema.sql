create table admins(user_id uuid primary key references auth.users);
create table questions(id uuid primary key default gen_random_uuid(),type text not null,text text not null,options jsonb,correct jsonb,marks int default 1,meta jsonb default '{}',created_at timestamptz default now());
create table exams(id uuid primary key default gen_random_uuid(),title text not null,domain text,mode text default 'total',total_min int default 30,per_sec int default 60,pass_pct int default 50,max_switches int default 2,shuffle bool default false,live bool default true,question_ids uuid[] default '{}',created_at timestamptz default now());
create table otps(email text primary key,code_hash text,expires_at timestamptz,tries int default 0);
create table sessions(token uuid primary key,email text,expires_at timestamptz);
create table students(email text primary key,name text,usn text,phone text,college text,branch text,plan text,domain text,updated_at timestamptz default now());
create table attempts(id uuid primary key default gen_random_uuid(),student_email text references students(email),exam_id uuid references exams(id) on delete set null,exam_title text,score numeric,max numeric,pct int,passed bool,pending int default 0,answers jsonb,violations int default 0,submitted_at timestamptz default now());
create function is_admin() returns bool language sql security definer as $$select exists(select 1 from admins where user_id=auth.uid())$$;
do $$ declare t text; begin foreach t in array array['questions','exams','students','attempts'] loop
execute format('alter table %I enable row level security',t);
execute format('create policy "admin" on %I for all using(is_admin()) with check(is_admin())',t); end loop; end $$;
alter table otps enable row level security; alter table sessions enable row level security; alter table admins enable row level security;
-- After creating your admin user in Authentication > Users, run:
-- insert into admins values ('PASTE-USER-UUID');
create table exam_starts(email text,exam_id uuid,started_at timestamptz default now(),primary key(email,exam_id));
alter table exam_starts enable row level security;
alter table attempts add column grading jsonb default '{}', add column late bool default false;
alter table students add column password_hash text, add column password_salt text, add column login_tries int default 0, add column locked_until timestamptz;
