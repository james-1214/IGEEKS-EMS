\set ON_ERROR_STOP off
insert into auth.users(id,email) values ('11111111-1111-1111-1111-111111111111','admin@x'),('22222222-2222-2222-2222-222222222222','nobody@x');
insert into admins values ('11111111-1111-1111-1111-111111111111');
insert into students(email,name,branch) values ('a@x','A','CSE'),('b@x','B','Mechanical'),('c@x','C','cse ');
grant select,insert,update,delete on all tables in schema public to authenticated;
grant usage on all sequences in schema public to authenticated;
\echo --- 1 admin tries to edit/delete a built-in question
set role authenticated; set request.jwt.claim.sub='11111111-1111-1111-1111-111111111111';
update questions set correct='[0]'::jsonb where id=(select id from questions where is_builtin limit 1);
delete from questions where id=(select id from questions where is_builtin limit 1);
update coding_tests set expected='x' where question_id in (select id from questions where is_builtin) ;
insert into questions(domain_id,type,text,options,correct,is_builtin,content_status) select id,'mcq','forged question text here','["a","b","c"]','[0]',true,'validated' from domains limit 1;
\echo --- 2 admin can still make a custom question
insert into questions(domain_id,type,text,options,correct) select id,'mcq','my own custom question text','["a","b","c"]','[0]' from domains where slug='html';
select 'custom ok', count(*) from questions where text='my own custom question text';
\echo --- 3 non-admin cannot host
reset role; set role authenticated; set request.jwt.claim.sub='22222222-2222-2222-2222-222222222222';
select host_exam((select id from library_exams where slug='html-beginner'),'{}'::jsonb);
\echo --- 4 admin cannot host a BLOCKED package
reset role; set role authenticated; set request.jwt.claim.sub='11111111-1111-1111-1111-111111111111';
select host_exam((select id from library_exams where slug='css-beginner'),'{}'::jsonb);
\echo --- 5 host HTML Beginner, branch CSE, published, custom title, neg marking
select id,status,title,total_marks,question_count from host_exam((select id from library_exams where slug='html-beginner'),'{"title":"HTML Mid-term","publish":true,"target_mode":"branch","branches":["CSE"],"negative_marking":0.25,"max_attempts":2,"duration_min":25,"marks_multiplier":2}','{}');
select 'exam row', title,live,total_min,negative_marking,max_attempts,hosted_id is not null,array_length(question_ids,1) from exams;
reset role;
\echo --- 6 eligibility: expect a=t, c=t (case/space-insensitive), b=f
select s.email,is_eligible(s.email,(select id from exams)) from students s order by 1;
\echo --- 7 snapshot frozen
set role authenticated; set request.jwt.claim.sub='11111111-1111-1111-1111-111111111111';
update hosted_exam_questions set snapshot='{}';
delete from hosted_exam_questions;
update exams set question_ids='{}' where hosted_id is not null;
delete from exams where hosted_id is not null;
delete from hosted_exams;
reset role;
\echo --- 8 snapshot independent of library: marks doubled, answer key present
select count(*), sum((snapshot->>'marks')::numeric), bool_and(snapshot ? 'correct') from hosted_exam_questions;
\echo --- 9 selected-students mode and cancel
set role authenticated; set request.jwt.claim.sub='11111111-1111-1111-1111-111111111111';
select status from host_exam((select id from library_exams where slug='common-entrance-standard'),'{"target_mode":"selected","publish":false}','{b@x,ghost@x}');
select hosted_effective_status(h) , target_mode from hosted_exams h where title like 'Common%';
select status from set_hosted_status((select id from hosted_exams where title like 'Common%'),'publish');
select hosted_effective_status(h) from hosted_exams h where title like 'Common%';
reset role;
select 'eligible b / a for selected exam', is_eligible('b@x',(select exam_id from hosted_exams where title like 'Common%')), is_eligible('a@x',(select exam_id from hosted_exams where title like 'Common%'));
set role authenticated; set request.jwt.claim.sub='11111111-1111-1111-1111-111111111111';
select status from set_hosted_status((select id from hosted_exams where title like 'Common%'),'cancel');
reset role;
select 'after cancel', is_eligible('b@x',(select exam_id from hosted_exams where title like 'Common%')), (select live from exams where title like 'Common%');
