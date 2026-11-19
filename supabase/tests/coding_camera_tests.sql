\set ON_ERROR_STOP off
\echo --- 12 coding policy + camera/SEB settings (run after hosting_tests.sql, same database)
reset role;
insert into students(email,name,branch) values ('eng2@x','Eng','Computer Science'),('arts2@x','Arts','BBA') on conflict do nothing;
select 'engineering? (expect t,f,t,f,t,f)', is_engineering_branch('CSE'), is_engineering_branch('B.Com'), is_engineering_branch('B.E. Mechanical'), is_engineering_branch('BCA'), is_engineering_branch('Information Technology'), is_engineering_branch('B.Sc Computer Science');
select 'custom list wins', is_engineering_branch('Arts','{arts}'), is_engineering_branch('CSE','{mech}');
set role authenticated; set request.jwt.claim.sub='11111111-1111-1111-1111-111111111111';
select 'package default policy carried to hosted exam' as t, coding_policy, coding_min, require_camera, require_seb from host_exam((select id from library_exams where slug='aptitude-coding-60'),'{"publish":true,"require_camera":true,"require_seb":true,"title":"Apt60"}','{}');
select 'exam row mirrors it', coding_policy, coding_min, require_camera, require_seb from exams where title='Apt60';
select 'bad policy rejected' as t; select host_exam((select id from library_exams where slug='aptitude-coding-60'),'{"coding_policy":"nonsense"}','{}');
select 'policy editable before anyone starts', coding_policy from update_hosted_exam((select id from hosted_exams where title='Apt60'),'{"coding_policy":"optional"}');
select 'coding section is 10 of 60, 50 of 100 marks', (select count(*) from hosted_exam_questions where hosted_exam_id=(select id from hosted_exams where title='Apt60') and section='Coding') coding_q,
       (select sum((snapshot->>'marks')::numeric) from hosted_exam_questions where hosted_exam_id=(select id from hosted_exams where title='Apt60') and section='Coding') coding_marks,
       (select total_marks from hosted_exams where title='Apt60') total;
select 'snapshot of a coding question holds starters + hidden tests', (snapshot->'meta'->'starters') is not null as has_starters, jsonb_array_length(tests) as tests, (select count(*) from jsonb_array_elements(tests) t where (t->>'hidden')::bool) as hidden
  from hosted_exam_questions where hosted_exam_id=(select id from hosted_exams where title='Apt60') and section='Coding' limit 1;
reset role;
select 'student reads camera snaps? (expect denied)' as t;
set role authenticated; set request.jwt.claim.sub='22222222-2222-2222-2222-222222222222';
select count(*) as snaps_visible_to_non_admin from proctor_snaps;
reset role; set role service_role;
select 'service role starts attempt', (start_attempt('eng2@x',(select exam_id from hosted_exams where title='Apt60'),array(select question_id from hosted_exam_questions where hosted_exam_id=(select id from hosted_exams where title='Apt60') order by position limit 3),'{}')).attempt_no;
insert into proctor_snaps(session_id,exam_id,email,image,face,dark) select id,exam_id,email,'data:image/jpeg;base64,AAAA',null,false from exam_sessions where email='eng2@x';
reset role;
set role authenticated; set request.jwt.claim.sub='11111111-1111-1111-1111-111111111111';
select 'admin sees snapshots', count(*) from proctor_snaps;
select 'rules locked once a student started' as t; select update_hosted_exam((select id from hosted_exams where title='Apt60'),'{"coding_policy":"required_all"}');
select 'require_camera locked too' as t; select update_hosted_exam((select id from hosted_exams where title='Apt60'),'{"require_camera":false}');
reset role;
