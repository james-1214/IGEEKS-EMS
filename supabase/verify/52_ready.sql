-- Read-only verification. Run in the Supabase SQL editor after migration_5.sql, the seeds and library/01_exam_packages.sql.
-- It calls the real validator first, then reports. It changes only library_exams.status/validation (what the validator is meant to do).
select * from validate_all_library_exams();

-- 1-3. Totals
select count(*) as total_packages,
       count(*) filter (where status = 'ready')   as ready_to_host,
       count(*) filter (where status = 'blocked') as blocked
from library_exams;

-- 4. Missing question counts (target vs actual)
select slug, target_questions, (select count(*) from library_exam_questions l where l.library_exam_id = e.id) as actual,
       target_questions - (select count(*) from library_exam_questions l where l.library_exam_id = e.id) as missing
from library_exams e
where target_questions <> (select count(*) from library_exam_questions l where l.library_exam_id = e.id);

-- 5. Invalid questions used by any package (uses the same rules as the validator)
select e.slug, q.id, array_to_string(question_problems(q), '; ') as problems
from library_exams e join library_exam_questions l on l.library_exam_id = e.id join questions q on q.id = l.question_id
where array_length(question_problems(q), 1) > 0;

-- 6. Duplicate questions inside a package (same id or same text)
select e.slug, count(*) - count(distinct l.question_id) as repeated_ids, count(*) - count(distinct md5(lower(q.text))) as repeated_texts
from library_exams e join library_exam_questions l on l.library_exam_id = e.id join questions q on q.id = l.question_id
group by e.slug having count(*) <> count(distinct l.question_id) or count(*) <> count(distinct md5(lower(q.text)));

-- 6b. Duplicate stems inside a domain (should be impossible: unique index q_no_duplicates)
select domain_id, md5(lower(text)), count(*) from questions group by 1, 2 having count(*) > 1;

-- 7. Packages with validation issues
select slug, status, jsonb_array_length(validation->'issues') as issue_count, validation->'issues'->0->>'detail' as first_issue
from library_exams where status <> 'ready' or jsonb_array_length(validation->'issues') > 0;

-- Extras: marks consistency, section allocation, admin drafts untouched
select slug, question_count, total_marks,
       (select coalesce(sum(q.marks),0) from library_exam_questions l join questions q on q.id = l.question_id where l.library_exam_id = e.id) as marks_from_questions
from library_exams e
where total_marks <> (select coalesce(sum(q.marks),0) from library_exam_questions l join questions q on q.id = l.question_id where l.library_exam_id = e.id);

select source, content_status, is_builtin, count(*) from questions group by 1, 2, 3 order by 1, 2;
