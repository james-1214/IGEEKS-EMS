create table exam_starts(email text,exam_id uuid,started_at timestamptz default now(),primary key(email,exam_id));
alter table exam_starts enable row level security;
alter table attempts add column grading jsonb default '{}', add column late bool default false;
