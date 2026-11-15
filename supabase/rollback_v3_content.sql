-- ROLLBACK for the "all 52 ready" content pass (questions with source = 'igeeks-v3').
-- Run only if you need to undo that content. It is conservative:
--   * packages are emptied and set back to 'blocked' (hosted exams keep their frozen snapshots, so nothing already hosted changes)
--   * a v3 question is deleted ONLY if no student answer, coding result or other row refers to it; the rest are kept but marked 'rejected'
--   * v1, v2 and admin-created questions are never touched
-- Built-in rows are protected from the browser, so this must be run from the SQL editor (postgres role).
begin;
delete from library_exam_questions where question_id in (select id from questions where source = 'igeeks-v3');
update library_exams set status = 'blocked', question_count = 0, total_marks = 0, sections = '[]', validated_at = now(),
       validation = jsonb_build_object('issues', jsonb_build_array(jsonb_build_object('check','rollback','detail','v3 content rolled back')))
where id in (select id from library_exams);   -- revalidate afterwards with: select * from validate_all_library_exams();
do $$
declare r record; refs text;
begin
  for r in select id from questions where source = 'igeeks-v3' loop
    -- keep (but reject) any question that has student answer history, so no history link is ever nulled out
    if exists (select 1 from attempt_answers where question_id = r.id) or exists (select 1 from coding_submissions where question_id = r.id) or exists (select 1 from exams where r.id = any(question_ids)) then
      update questions set content_status = 'rejected' where id = r.id;
    else
      delete from questions where id = r.id;
    end if;
  end loop;
end $$;
commit;
-- To restore: re-run seed_questions.sql and library/01_exam_packages.sql.
