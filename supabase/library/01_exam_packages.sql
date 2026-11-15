-- Exam library packages. Run AFTER the seed files. Re-runnable. Ends by validating every package inside the database.
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('html-beginner',$q$HTML Beginner$q$,$q$20 beginner-level questions on HTML: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='html'),'web','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='html-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'html','24a929b8549665a2810613bb99034a68'),
  ($q$Main$q$,2,'html','29d5483524547caa0a04306b167cc4bb'),
  ($q$Main$q$,3,'html','32417bf06b762ab9e06591e7d69fb324'),
  ($q$Main$q$,4,'html','4283ddada99082bad374ee87d17e40d3'),
  ($q$Main$q$,5,'html','1f901b0fd0b250ce00ab5f3edbebb36f'),
  ($q$Main$q$,6,'html','25fdfcd78992d7329e56267594cbfd06'),
  ($q$Main$q$,7,'html','b4baf2ca18c11b90e5731b3c4fa9131b'),
  ($q$Main$q$,8,'html','0eed23d700a9f25bd429a582687b85ae'),
  ($q$Main$q$,9,'html','e764eaea50e35661d72a36bfaf39ee21'),
  ($q$Main$q$,10,'html','78751caf3b43bcf91bdcc959b044ad3e'),
  ($q$Main$q$,11,'html','49edc1770b4255b520d1afc78a7308ee'),
  ($q$Main$q$,12,'html','72c44b8d84061b0e7041fc2fef5f4519'),
  ($q$Main$q$,13,'html','7db01f00f19e3c401ae0a41db37b11bc'),
  ($q$Main$q$,14,'html','67058a94bde39f7312f88f7b843c414b'),
  ($q$Main$q$,15,'html','b2251f8a174ffb839ad03c214671e76f'),
  ($q$Main$q$,16,'html','3ff54ae777fb6bcdc5c6af7fd2af8a86'),
  ($q$Main$q$,17,'html','13eac8a82aeb257286d3a9aa9a79579f'),
  ($q$Main$q$,18,'html','8574ed956f4d99472c710d53a11dc756'),
  ($q$Main$q$,19,'html','4cba564edfc3b8d3a8c3e1dfd9f22712'),
  ($q$Main$q$,20,'html','9d48616b4ea2aa1f7d305eb24ad3bb92')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='html-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('html-intermediate',$q$HTML Intermediate$q$,$q$20 intermediate-level questions on HTML: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='html'),'web','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='html-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'html','d51f1ebb4ae3262ae1543a347e6110d9'),
  ($q$Main$q$,2,'html','3dbdf03c241661824e9b911c7386ed8a'),
  ($q$Main$q$,3,'html','064c17aad34e527e84e08143d35fcffe'),
  ($q$Main$q$,4,'html','05e17ee43ccaa0cb512c48c4bc9afe7b'),
  ($q$Main$q$,5,'html','c9d234a7ff5dccd9023aeba8757979a3'),
  ($q$Main$q$,6,'html','1a9d1ba6a9f6031b2ad089ac5b1f4224'),
  ($q$Main$q$,7,'html','ce814d38043a708b90760df2fb7a1a83'),
  ($q$Main$q$,8,'html','ef9e0ce379b824bab4ee2264aabb4b04'),
  ($q$Main$q$,9,'html','0acf88c4250a737135d990b9ebe2c415'),
  ($q$Main$q$,10,'html','49ca55fd1ba33b4ecf7511f2e39ae531'),
  ($q$Main$q$,11,'html','1999461e9820be3d0da25e97717a3a03'),
  ($q$Main$q$,12,'html','50f6879eb21688f20a350f945c49314b'),
  ($q$Main$q$,13,'html','d1a15a009ee47c26241a5eae437d8b42'),
  ($q$Main$q$,14,'html','641db4fcd61d001e0c43254782fba998'),
  ($q$Main$q$,15,'html','fae8f3f7ea8b415e5969e49e02882f3c'),
  ($q$Main$q$,16,'html','19eae3cb168ad5f961cf9cfebacee8ed'),
  ($q$Main$q$,17,'html','71da96b71928986dc067cf20c2b5a4a0'),
  ($q$Main$q$,18,'html','2184454f30a211b11b56bfc9092ea9ea'),
  ($q$Main$q$,19,'html','8f5a31bd850df3557f196e880075a35a'),
  ($q$Main$q$,20,'html','891b484240ae6ffc79e38076e0f2451d')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='html-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('html-advanced',$q$HTML Advanced$q$,$q$20 advanced-level questions on HTML: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='html'),'web','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='html-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'html','0a7183fff4d93007dec15c8bcac38a5e'),
  ($q$Main$q$,2,'html','08c20f3071acff52786f2c255a089d31'),
  ($q$Main$q$,3,'html','6c6c7a246a10a049a35d732e2d7ca4c4'),
  ($q$Main$q$,4,'html','bdfdaa6316f5b30a8a516a11551aec6b'),
  ($q$Main$q$,5,'html','212c0c032b2266b94d776fa838c7022d'),
  ($q$Main$q$,6,'html','395dda3d6e217ae8768a9c54815177c2'),
  ($q$Main$q$,7,'html','06af476de48c6142b20c051bb92d66c2'),
  ($q$Main$q$,8,'html','8996ad02cd1a9f0b27ce310ea290bb43'),
  ($q$Main$q$,9,'html','9bc189686b43fa1a16ba3cf259e5faf7'),
  ($q$Main$q$,10,'html','7ded92fed75391235e494616380451f3'),
  ($q$Main$q$,11,'html','4ef531ba315ba00220e4383dff215886'),
  ($q$Main$q$,12,'html','43bbbf3ef7770bc03fe2f4f2ee7f4a02'),
  ($q$Main$q$,13,'html','326d1b4c934e19a188db5af327639a1f'),
  ($q$Main$q$,14,'html','8abed51abed87069c01db6536d000097'),
  ($q$Main$q$,15,'html','d2737e569da92ca705299d7d4ed23fa7'),
  ($q$Main$q$,16,'html','a529833822147dfae8a0f52be1021d51'),
  ($q$Main$q$,17,'html','671a48ae3ead0fa76bc6dd6cdff7e942'),
  ($q$Main$q$,18,'html','444c50fc608d12e8ccd48bdf0da18bda'),
  ($q$Main$q$,19,'html','608ed74fd73a78eca4d635d753c11f13'),
  ($q$Main$q$,20,'html','8cffdc351a217e68b652c4817831d226')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='html-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('css-beginner',$q$CSS Beginner$q$,$q$20 beginner-level questions on CSS: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='css'),'web','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='css-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'css','9e304227ebca69cb925687b6eeb845da'),
  ($q$Main$q$,2,'css','13dd33f442a7006654e401e03bc342b6'),
  ($q$Main$q$,3,'css','d09f83ba1dfe81ad3e8b525495bb7ef5'),
  ($q$Main$q$,4,'css','9702b9a1c187009f822f69542c4a85e7'),
  ($q$Main$q$,5,'css','f97b723d0f6d037b2b108e7af3e19c83'),
  ($q$Main$q$,6,'css','ea3432b6c197946a00cfabbffddb1c6d'),
  ($q$Main$q$,7,'css','f249c0a1206a895dd2f9f992d516b167')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='css-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('css-intermediate',$q$CSS Intermediate$q$,$q$20 intermediate-level questions on CSS: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='css'),'web','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='css-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'css','2d7c0a8444c921c9b88cc06c629fd416'),
  ($q$Main$q$,2,'css','21aeefdfda1884bc9493467074595037'),
  ($q$Main$q$,3,'css','4e1711fcc774241b284244d575580566'),
  ($q$Main$q$,4,'css','6280db825e86a6a3a8c945b34290c4db'),
  ($q$Main$q$,5,'css','f2f23ce7efcd0e346aa320152d38456e'),
  ($q$Main$q$,6,'css','85b89e438e301fd1cc5ee4c492572e57'),
  ($q$Main$q$,7,'css','5d22a1a901479beb08abb693eed6131f'),
  ($q$Main$q$,8,'css','710d2d7ee7c2a7a6d1b88d6db81bf17c'),
  ($q$Main$q$,9,'css','cab2fc546fbaa0036411fe475051b78f'),
  ($q$Main$q$,10,'css','f38cb8c5d2d07fe9e0d8887a12e14ef7'),
  ($q$Main$q$,11,'css','f350e14f86d8a5199d8496b2cbea0b8b'),
  ($q$Main$q$,12,'css','8b2123f71f3440cd519fad35ce2e56e6'),
  ($q$Main$q$,13,'css','a8d7409065e25e0ffafdfdae2943b0ae')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='css-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('css-advanced',$q$CSS Advanced$q$,$q$20 advanced-level questions on CSS: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='css'),'web','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='css-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'css','17dee464fdc6588daf84e1ca6842267b'),
  ($q$Main$q$,2,'css','372a3e31d49a60836648768df64bfd49'),
  ($q$Main$q$,3,'css','a251f043c9a92d9ee3281093784f1b35'),
  ($q$Main$q$,4,'css','e85fd27154cea87eb5d0ebd83bdc208d'),
  ($q$Main$q$,5,'css','cd5e73664e2a4edc04c828f006b810ad')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='css-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('javascript-beginner',$q$JavaScript Beginner$q$,$q$20 beginner-level questions on JavaScript: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='javascript'),'web','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='javascript-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'javascript','24ad19665c3245d1e03c1b4afdcdc487'),
  ($q$Main$q$,2,'javascript','b658536bf377f0e9a294d325ec5963c9'),
  ($q$Main$q$,3,'javascript','d825986ce4c444350656d7fc25cad955'),
  ($q$Main$q$,4,'javascript','4570c04d6bd8d7087ccfc7c998b33a6b'),
  ($q$Main$q$,5,'javascript','d9a82ce4ddd297a76689cff3e778aacc')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='javascript-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('javascript-intermediate',$q$JavaScript Intermediate$q$,$q$20 intermediate-level questions on JavaScript: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='javascript'),'web','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='javascript-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'javascript','029d5ac9ce5aa01c41933d3e7037d97a'),
  ($q$Main$q$,2,'javascript','4a2172a0602736e38d46e645edfcbb44'),
  ($q$Main$q$,3,'javascript','0411504db3e7c8ffa0eb9e7df4278675'),
  ($q$Main$q$,4,'javascript','1f7012bc898215a5c18a38268a1a0223'),
  ($q$Main$q$,5,'javascript','1d65d4f1a0f5caa0f06c8b9dacbe91cd'),
  ($q$Main$q$,6,'javascript','6597979cf3467f2aacf596ba9792e356'),
  ($q$Main$q$,7,'javascript','5bdfb0e3c272a1501965c93d3e33e132'),
  ($q$Main$q$,8,'javascript','80cea2d052dde3dae0c9a6138445dd37'),
  ($q$Main$q$,9,'javascript','6aac24a3524c07d04def7d2e150d775e'),
  ($q$Main$q$,10,'javascript','9862bf7f118fc08418e86a58c21af61d'),
  ($q$Main$q$,11,'javascript','78788769a8389758995f65f8d3f4f98d'),
  ($q$Main$q$,12,'javascript','7a0e1fcb18ae688388ae398a09a5fac5'),
  ($q$Main$q$,13,'javascript','fc1c0075b0236532243b1202c8eca38d')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='javascript-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('javascript-advanced',$q$JavaScript Advanced$q$,$q$20 advanced-level questions on JavaScript: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='javascript'),'web','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='javascript-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'javascript','b910d67073f96840aeb503dbd9257f39'),
  ($q$Main$q$,2,'javascript','127b2a93d11e0532f0fc0490ddf8dc9b'),
  ($q$Main$q$,3,'javascript','1270ac95ba606a7e340abebdfef57b0e'),
  ($q$Main$q$,4,'javascript','eec39627c7b4d463ffe5dd0cba34f1a4'),
  ($q$Main$q$,5,'javascript','7352aa2761468a9e5034eb7250a95b7b'),
  ($q$Main$q$,6,'javascript','d775c8f9994aa680e9e40bf862e21427'),
  ($q$Main$q$,7,'javascript','ec62bc2fd93b363e5c317e34c14b9a1c')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='javascript-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('react-beginner',$q$React Beginner$q$,$q$20 beginner-level questions on React: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='react'),'web','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='react-beginner');
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('react-intermediate',$q$React Intermediate$q$,$q$20 intermediate-level questions on React: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='react'),'web','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='react-intermediate');
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('react-advanced',$q$React Advanced$q$,$q$20 advanced-level questions on React: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='react'),'web','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='react-advanced');
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('nodejs-beginner',$q$Node.js Beginner$q$,$q$20 beginner-level questions on Node.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='nodejs'),'web','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='nodejs-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'nodejs','a739d8fdf2323d7e0c080560d438fea4'),
  ($q$Main$q$,2,'nodejs','059923dfea9d1313c7763ed108520b47'),
  ($q$Main$q$,3,'nodejs','04f262158617dbe9152e5890cff92532'),
  ($q$Main$q$,4,'nodejs','361474ed3f47b1021a18e9ec26101ef1'),
  ($q$Main$q$,5,'nodejs','ff639a71c2c87239b878f6893ef3518b')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='nodejs-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('nodejs-intermediate',$q$Node.js Intermediate$q$,$q$20 intermediate-level questions on Node.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='nodejs'),'web','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='nodejs-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'nodejs','1076a3cbc714f1e91900f0a9515b7d2e'),
  ($q$Main$q$,2,'nodejs','1e64b566e81aa0d4ff2f678f5d998916'),
  ($q$Main$q$,3,'nodejs','52e3a4aa5cc63b34600c0330095a1dee'),
  ($q$Main$q$,4,'nodejs','86afb36cf314f6b27a5a67deb29d232d'),
  ($q$Main$q$,5,'nodejs','5da7486074d1adf4d6ed07ef4bd21658'),
  ($q$Main$q$,6,'nodejs','e53195eafd2c59e47b6089ad1f4ac325'),
  ($q$Main$q$,7,'nodejs','954c574970d86a2e71b49522b4c0f4b0'),
  ($q$Main$q$,8,'nodejs','d24bed9fa81767f1a2f8fd6fae73b924'),
  ($q$Main$q$,9,'nodejs','a1d33761c4badee7e59633dfb675809a'),
  ($q$Main$q$,10,'nodejs','c6372e90b5c608fefe03b81ffdc86601'),
  ($q$Main$q$,11,'nodejs','d20729217f76193217878849022dbb93'),
  ($q$Main$q$,12,'nodejs','f60eb319428c9031f1c20f7f40718887')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='nodejs-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('nodejs-advanced',$q$Node.js Advanced$q$,$q$20 advanced-level questions on Node.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='nodejs'),'web','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='nodejs-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'nodejs','77eb308c8a77775dde72a6d5eb7f4365'),
  ($q$Main$q$,2,'nodejs','eada0b1efcd79e2a83f6625950635f43'),
  ($q$Main$q$,3,'nodejs','75f1c74b04e8e1a692efca21e56afedf'),
  ($q$Main$q$,4,'nodejs','90f2747ce0f7a0cc75acfe5385cd56da'),
  ($q$Main$q$,5,'nodejs','8796bd27ec46712bf00ab79b32f641bb'),
  ($q$Main$q$,6,'nodejs','ee9c14f07ef2123fbbdc965d346ebff5'),
  ($q$Main$q$,7,'nodejs','bf631bc4ded11bd0315a972c8cb36e67'),
  ($q$Main$q$,8,'nodejs','fc79d2d3395f5dbcf45888a7e2754bd8')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='nodejs-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('expressjs-beginner',$q$Express.js Beginner$q$,$q$20 beginner-level questions on Express.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='expressjs'),'web','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='expressjs-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'expressjs','07d10d3d612ad48620de40f2505e0d36'),
  ($q$Main$q$,2,'expressjs','041aae89b373cea9b8fd0b0f6fa2fb02'),
  ($q$Main$q$,3,'expressjs','35065981bb3b3526d77407d3995293d7'),
  ($q$Main$q$,4,'expressjs','c9dd0ec4f290052f4946bd94d798efd0'),
  ($q$Main$q$,5,'expressjs','cad9d96c2b8c6a5533cce0219fc56529')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='expressjs-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('expressjs-intermediate',$q$Express.js Intermediate$q$,$q$20 intermediate-level questions on Express.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='expressjs'),'web','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='expressjs-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'expressjs','f5d88a83a4973c3e5f62c7ee538faedf'),
  ($q$Main$q$,2,'expressjs','28cfe7690add939bc8565b712502a3c1'),
  ($q$Main$q$,3,'expressjs','2979662f6a1fe27cb331646cabb94a60'),
  ($q$Main$q$,4,'expressjs','181e0d48ed1e7d1b1e367469709992b0'),
  ($q$Main$q$,5,'expressjs','6f4257224c50cc8ef807cc999a3f33ec'),
  ($q$Main$q$,6,'expressjs','8fbcbf36ceba07302226838b6b033bc0'),
  ($q$Main$q$,7,'expressjs','a654b414a0e2e3f9849c3e28b91c4ba0'),
  ($q$Main$q$,8,'expressjs','98cb4bae321c1a07c481444168174a4a'),
  ($q$Main$q$,9,'expressjs','a24b488fa498bd0d539b262292fe3b0b'),
  ($q$Main$q$,10,'expressjs','c5edacddb214ab4a5108475c4ce04bd0'),
  ($q$Main$q$,11,'expressjs','d74007aa41f5021a128e9f09fa3269c7')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='expressjs-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('expressjs-advanced',$q$Express.js Advanced$q$,$q$20 advanced-level questions on Express.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='expressjs'),'web','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='expressjs-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'expressjs','0337118efe7fce249fc966b74737c863'),
  ($q$Main$q$,2,'expressjs','d2d35d62f8e3e1e28d3333edc2175d18'),
  ($q$Main$q$,3,'expressjs','22ea55cfb8976565312657184efad044'),
  ($q$Main$q$,4,'expressjs','4dbed58610127a15b2caba51e2a9e349'),
  ($q$Main$q$,5,'expressjs','383fb05d779d7f5a50df9cd435b62ed4'),
  ($q$Main$q$,6,'expressjs','ae45c45f202bc5e6ffce417465f62d50'),
  ($q$Main$q$,7,'expressjs','439306a4c014a955aa95964cbd09edc3'),
  ($q$Main$q$,8,'expressjs','45ca68b3f2e70b1e6189408f4d3def73'),
  ($q$Main$q$,9,'expressjs','fc434fc6e417043579e603db492642ba')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='expressjs-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('angular-beginner',$q$Angular Beginner$q$,$q$20 beginner-level questions on Angular: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='angular'),'web','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='angular-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'angular','1702e116fd3c2c95864c498107657fee'),
  ($q$Main$q$,2,'angular','6302b67896331f28a91f6726b4142463'),
  ($q$Main$q$,3,'angular','363e218c86d2d57acc964a81096d5486'),
  ($q$Main$q$,4,'angular','835164d88a21d1e83a7ce2887f2871d1'),
  ($q$Main$q$,5,'angular','e80e5247e00dc62f5edc8e1bc9806f6f')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='angular-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('angular-intermediate',$q$Angular Intermediate$q$,$q$20 intermediate-level questions on Angular: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='angular'),'web','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='angular-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'angular','6d4b776cad38579ed19191afcff9f138'),
  ($q$Main$q$,2,'angular','170590d0d7a1e651a7bf6aaa45c07999'),
  ($q$Main$q$,3,'angular','9291e78fe9548f9e3143b78b6c9bc6cd'),
  ($q$Main$q$,4,'angular','b450bc5d75c0c64b06f6263edadd0e82'),
  ($q$Main$q$,5,'angular','b39811ae53425d0b88bba7d55fa9b723'),
  ($q$Main$q$,6,'angular','19df5dc30895641c07598f012260e8cc'),
  ($q$Main$q$,7,'angular','c697d6c46918d7de6933a24b015efe2f'),
  ($q$Main$q$,8,'angular','2385f28bd803b367fc5937d7e32983ad'),
  ($q$Main$q$,9,'angular','251b8cd33b8e37a1352929a09c0b763c'),
  ($q$Main$q$,10,'angular','706cb632efb0575c8bc89ed74d8c98bb'),
  ($q$Main$q$,11,'angular','74c61aed5ff5bbbe0604c230bffbd14f'),
  ($q$Main$q$,12,'angular','c04676fc0ef85a805ce3db0e1a53e22f'),
  ($q$Main$q$,13,'angular','d0c8dce5d3484bfa9a3e139084f893d4')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='angular-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('angular-advanced',$q$Angular Advanced$q$,$q$20 advanced-level questions on Angular: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='angular'),'web','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='angular-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'angular','cb220ff35095b9c673e3711abde8a460'),
  ($q$Main$q$,2,'angular','2955e7f03f0b6eefdbd7086ae6f6db38'),
  ($q$Main$q$,3,'angular','cca0830468a11ea72baccec2cb98c58b'),
  ($q$Main$q$,4,'angular','787f6bfba7ea82451a734f2a4ea4beea'),
  ($q$Main$q$,5,'angular','3263b5aa964f8a100c37c9f3c38bcf95'),
  ($q$Main$q$,6,'angular','3b4f9f18894e4abdf3542e227b4218b8'),
  ($q$Main$q$,7,'angular','7827155999eb6fa64ce91326924cd71e')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='angular-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('c-beginner',$q$C Beginner$q$,$q$20 beginner-level questions on C: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='c'),'language','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='c-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'c','c37d9866da487be72c59662068d85742'),
  ($q$Main$q$,2,'c','9be6292e9a9b80ffa79afa233a558f19'),
  ($q$Main$q$,3,'c','be5139917d45ddf2f0902e80924124e9'),
  ($q$Main$q$,4,'c','1d60f3b1f183b1b48743f55f9c305eb4'),
  ($q$Main$q$,5,'c','edeb7670005fae652f8895e9139d0c61'),
  ($q$Main$q$,6,'c','f78fc36b7940be10fad844ff42e5119d')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='c-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('c-intermediate',$q$C Intermediate$q$,$q$20 intermediate-level questions on C: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='c'),'language','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='c-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'c','1c4099fdcc86ec0817bed2b0a5ab47eb'),
  ($q$Main$q$,2,'c','fd06ebe3082c666a8fb296a03a80b893'),
  ($q$Main$q$,3,'c','c39842b04d6644cad3c787cfa8f6ed58'),
  ($q$Main$q$,4,'c','18bde340f987c62cf2c002060799d59d'),
  ($q$Main$q$,5,'c','b54b93efcf976b512180cacee45d5f59'),
  ($q$Main$q$,6,'c','4ae28da91760c1756c6d37c077f437a8'),
  ($q$Main$q$,7,'c','fd375ee7f0a050758b3f07f34415ff39'),
  ($q$Main$q$,8,'c','43645b4f78b8fb69a7eac10db01f7e06'),
  ($q$Main$q$,9,'c','845f55b7f1339b84da3547ba8b3c6ffe'),
  ($q$Main$q$,10,'c','69e0fabf6ee53607eda065a89e099dd1'),
  ($q$Main$q$,11,'c','ca374f445dd7a32d21828ef5e8247927'),
  ($q$Main$q$,12,'c','e90746e350c3d24c29c80a604b64000c')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='c-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('c-advanced',$q$C Advanced$q$,$q$20 advanced-level questions on C: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='c'),'language','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='c-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'c','f9a9be487ae84458d3beb1cda16e8cc2'),
  ($q$Main$q$,2,'c','127efed842ee63a4945981a04ed4a705'),
  ($q$Main$q$,3,'c','c21eaef700a81dafac345747ad5aa08b'),
  ($q$Main$q$,4,'c','38218bd0459fde0fc9e222622ce3c789'),
  ($q$Main$q$,5,'c','896c6c3340573f3a20d66bcda6d9169a'),
  ($q$Main$q$,6,'c','9efc8538a2bc409303fede6618381248'),
  ($q$Main$q$,7,'c','fc8e20421846eb6824404eace5bde805')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='c-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('cpp-beginner',$q$C++ Beginner$q$,$q$20 beginner-level questions on C++: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='cpp'),'language','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='cpp-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'cpp','3f78eb6d2ac3b5c45af8295e79fda5bf'),
  ($q$Main$q$,2,'cpp','de9c8e22731ab67d1ffec3fadf04da97'),
  ($q$Main$q$,3,'cpp','8ee60fbdd7a1521a924298091a99aa26'),
  ($q$Main$q$,4,'cpp','66da2524d9a7529042e598c53e032cd7'),
  ($q$Main$q$,5,'cpp','d5d93b39a683e6ef029d95751e27bbc7')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='cpp-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('cpp-intermediate',$q$C++ Intermediate$q$,$q$20 intermediate-level questions on C++: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='cpp'),'language','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='cpp-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'cpp','26350df14eca052ffa872b078e16db5c'),
  ($q$Main$q$,2,'cpp','1b2099977c4ea9b0b26ab8b70d59beae'),
  ($q$Main$q$,3,'cpp','b5761269d5fd6f97d6eae14b9f418688'),
  ($q$Main$q$,4,'cpp','0093eb36c0202729459e2a432816acea'),
  ($q$Main$q$,5,'cpp','6d7c69a114ff7eaf1c5c7faf6852dbbc'),
  ($q$Main$q$,6,'cpp','2e0c40978012d68e2569db8675735a66'),
  ($q$Main$q$,7,'cpp','e7580eed8c4f8d0ac5d395eb04980642'),
  ($q$Main$q$,8,'cpp','342803baa0839b020537e29e83b1aa19'),
  ($q$Main$q$,9,'cpp','ac7e656ad22e17be67e207e1b5f4ea8c'),
  ($q$Main$q$,10,'cpp','70e8ef4c847b0e3877c04325e22b25ff'),
  ($q$Main$q$,11,'cpp','544f0861301bb1e81d13495ef64b07ea'),
  ($q$Main$q$,12,'cpp','9ec7a70536e82e3e23151d065d95e7ad'),
  ($q$Main$q$,13,'cpp','579bb0fcb73bf6a2c14652994a08cd3f')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='cpp-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('cpp-advanced',$q$C++ Advanced$q$,$q$20 advanced-level questions on C++: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='cpp'),'language','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='cpp-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'cpp','1f3e7dcae1de464c5f3d6c3c77706d12'),
  ($q$Main$q$,2,'cpp','1843cf9a4f3766c46778c9d557190c0a'),
  ($q$Main$q$,3,'cpp','a0b1a17fd61c6aaa1a9902dda53ccd4b'),
  ($q$Main$q$,4,'cpp','3e6b8ea7b86f1a0bf808aacba1f39476'),
  ($q$Main$q$,5,'cpp','e60208dd16a774076f5ac8406d9b2da9'),
  ($q$Main$q$,6,'cpp','7fd62eb63e71f006e50173d45a683024'),
  ($q$Main$q$,7,'cpp','b0909a839a9801c8a8fd5cbcbd785122'),
  ($q$Main$q$,8,'cpp','f93ed55994dc44d799d3b5b09962a321')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='cpp-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('java-beginner',$q$Java Beginner$q$,$q$20 beginner-level questions on Java: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='java'),'language','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='java-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'java','60b36e99a54f473d101dabcdaffecd8c'),
  ($q$Main$q$,2,'java','4f34127be196afc8afbd8f3e67a76a67'),
  ($q$Main$q$,3,'java','342093d6a6bf7d04dfa2e1fa7ced5e80'),
  ($q$Main$q$,4,'java','105e3b376e485466c6fdf9657d37e539'),
  ($q$Main$q$,5,'java','4a2890481274038fb7cf10960bb762fb')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='java-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('java-intermediate',$q$Java Intermediate$q$,$q$20 intermediate-level questions on Java: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='java'),'language','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='java-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'java','ca3c1c8392118d7b725f5dd4231fff33'),
  ($q$Main$q$,2,'java','0f94f5617223cc80594893072d7872c3'),
  ($q$Main$q$,3,'java','87699ef03630453af2563273426c0b9a'),
  ($q$Main$q$,4,'java','05fbfc25367fd6b9f245feb5fc42c8bb'),
  ($q$Main$q$,5,'java','11cf0d4c7a9dbfa62f053b4bee4325fb'),
  ($q$Main$q$,6,'java','c56f6de3e84ba0a2746fc68d53201e00'),
  ($q$Main$q$,7,'java','549d1e9712caa1cf626e6d7ef6ee711b'),
  ($q$Main$q$,8,'java','14665f09a8513ee4dd4c5f052d9d1934'),
  ($q$Main$q$,9,'java','bb67a2acfc3736f10e90c6c9b63b2378'),
  ($q$Main$q$,10,'java','3d3a0fc9f6e639949edbfa0fee8684c6'),
  ($q$Main$q$,11,'java','4cfa3181a257ce424c4ec283723a7fa2'),
  ($q$Main$q$,12,'java','651ef195d782a0fbf2317bef8b3a8e11'),
  ($q$Main$q$,13,'java','fc772fbd867677772a9823752297d1fb')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='java-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('java-advanced',$q$Java Advanced$q$,$q$20 advanced-level questions on Java: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='java'),'language','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='java-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'java','9edb32cb3927ede38bf874bf4e42d1b2'),
  ($q$Main$q$,2,'java','6a56d393b47c5e69c7e93d46444bb816'),
  ($q$Main$q$,3,'java','2c18f3d2d2ca5929b5d0de159f35f327'),
  ($q$Main$q$,4,'java','0e304b05c96f2c7d4650e61a9aba909f'),
  ($q$Main$q$,5,'java','1eb75ffc26bf55286e359daf9a057df1'),
  ($q$Main$q$,6,'java','8aed7607c86ffaaf57729e2b2a5b2897'),
  ($q$Main$q$,7,'java','1fca8982b58056b44af0084dcab65ec9')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='java-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('python-beginner',$q$Python Beginner$q$,$q$20 beginner-level questions on Python: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='python'),'language','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='python-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'python','c265840e1b8069a420d46f5d2f6d363e'),
  ($q$Main$q$,2,'python','64f5df2b5ad73d0635061b7802c9da0b'),
  ($q$Main$q$,3,'python','9162d208047da0efedf936bb4d041117'),
  ($q$Main$q$,4,'python','f01408f23707955d8191d4f863b7eb20'),
  ($q$Main$q$,5,'python','fbc751503c785465dc4a20a6469f614c')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='python-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('python-intermediate',$q$Python Intermediate$q$,$q$20 intermediate-level questions on Python: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='python'),'language','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='python-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'python','0b2fd9c44ffd8df190d39a3afb5f8d4b'),
  ($q$Main$q$,2,'python','2366fd21f01d011a9818996105cf94b3'),
  ($q$Main$q$,3,'python','18ddb835e3c59cf7963f66153ecaa593'),
  ($q$Main$q$,4,'python','297b14512ccfbf2734278f4a8832ff65'),
  ($q$Main$q$,5,'python','4d9899265f8d48df35bab689bc360875'),
  ($q$Main$q$,6,'python','cc454c4b5ef9b80caa0fba5b9a45e657'),
  ($q$Main$q$,7,'python','39fc3eb4b7ca62a0f9a0503705cf9f10'),
  ($q$Main$q$,8,'python','632eef01a246925df74f5b147c2b33af'),
  ($q$Main$q$,9,'python','3d5b5cbffcaefa6097efecabb2825a55'),
  ($q$Main$q$,10,'python','95fdbeb38e8e142463d84dd19a9b9252'),
  ($q$Main$q$,11,'python','6eb8f71be38cb98c4b1cb16e1c1bb3fa'),
  ($q$Main$q$,12,'python','e41e149b69b7f18ccea856ad8b723d78')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='python-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('python-advanced',$q$Python Advanced$q$,$q$20 advanced-level questions on Python: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='python'),'language','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='python-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'python','cb9740646e1f9cd588b7459cdaf31f94'),
  ($q$Main$q$,2,'python','2b4eb913799924d6b42d25e98ea618a9'),
  ($q$Main$q$,3,'python','304b9eeb74ab287487a76d2f2f170e36'),
  ($q$Main$q$,4,'python','c26f3a853d81f6fe4818598f502d65f4'),
  ($q$Main$q$,5,'python','691f7da65940c025a27c8b86fb610bac'),
  ($q$Main$q$,6,'python','896b92c56a532d95c7c86e8132cefbe6'),
  ($q$Main$q$,7,'python','ceaacb09b5f48cbac1271a66e25f53fc'),
  ($q$Main$q$,8,'python','f557a98e31f37d4c24af9c0f1513d864')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='python-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('csharp-beginner',$q$C# Beginner$q$,$q$20 beginner-level questions on C#: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='csharp'),'language','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='csharp-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'csharp','487aa5b2958c37fe1e22ba80039f1864'),
  ($q$Main$q$,2,'csharp','0b5b35a160cf46ac2461bf7782f3a2ea'),
  ($q$Main$q$,3,'csharp','874ba4846a41caf477c70bff00d8221e'),
  ($q$Main$q$,4,'csharp','1e629cf12a648b32d251d3f535def35d'),
  ($q$Main$q$,5,'csharp','6f8a4f641fa9beee857414d824dd9c04')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='csharp-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('csharp-intermediate',$q$C# Intermediate$q$,$q$20 intermediate-level questions on C#: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='csharp'),'language','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='csharp-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'csharp','4aaa9eb425b6c6c9b9925ce95cde4e4d'),
  ($q$Main$q$,2,'csharp','a4582f21bb1d49f308126fc4ebcbec82'),
  ($q$Main$q$,3,'csharp','09832e021a37b89c8825348f9d1ebe29'),
  ($q$Main$q$,4,'csharp','209d3ba85916afa54f340a783878fe63'),
  ($q$Main$q$,5,'csharp','a2cd768e263a40ab4fad58290998d46e'),
  ($q$Main$q$,6,'csharp','df272fba39a4db04c5ea57c71cb3d8d4'),
  ($q$Main$q$,7,'csharp','37b73934c988fbc06f03981a10937a81'),
  ($q$Main$q$,8,'csharp','93541f2e514cf91332ef15121e94af2f'),
  ($q$Main$q$,9,'csharp','e0db77083039d87831ece38983cd017e'),
  ($q$Main$q$,10,'csharp','b9e000764f21bbb4aba556293e4e2516'),
  ($q$Main$q$,11,'csharp','94e2055464674ce8ec4d6f7365e160ae'),
  ($q$Main$q$,12,'csharp','fe54a315ea2fb9f236088413a0e78647'),
  ($q$Main$q$,13,'csharp','ba99f069f03ca7121aff19213d49e7d9')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='csharp-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('csharp-advanced',$q$C# Advanced$q$,$q$20 advanced-level questions on C#: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='csharp'),'language','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='csharp-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'csharp','ec8dd8f20af9002f8dd098c9d17428ee'),
  ($q$Main$q$,2,'csharp','06b1e1dac232d7ede713351b20df5f19'),
  ($q$Main$q$,3,'csharp','fd4db5488a19970e9730341d235fa7cf'),
  ($q$Main$q$,4,'csharp','3d493556c3bf26bfadb3d94a53ab2517'),
  ($q$Main$q$,5,'csharp','96fd68ac06e0d10f995dd600d1bd11a8'),
  ($q$Main$q$,6,'csharp','f1cc5bd6554a88c7500686e68c84be2d'),
  ($q$Main$q$,7,'csharp','c3a79669178d6b1310dd1b6a85d45bab')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='csharp-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('mongodb-beginner',$q$MongoDB Beginner$q$,$q$20 beginner-level questions on MongoDB: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='mongodb'),'database','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='mongodb-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'mongodb','c25722d1a18a6b97ebfa4f9f0be772f2'),
  ($q$Main$q$,2,'mongodb','729840717d271635a38aeb870e80ab56'),
  ($q$Main$q$,3,'mongodb','9bb600064a47598614fb07bf5092ff44'),
  ($q$Main$q$,4,'mongodb','e55f333724a9ba89ae4c6caacf63a352')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='mongodb-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('mongodb-intermediate',$q$MongoDB Intermediate$q$,$q$20 intermediate-level questions on MongoDB: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='mongodb'),'database','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='mongodb-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'mongodb','59b21e3779842382d73afb1b1604fb98'),
  ($q$Main$q$,2,'mongodb','1558dbdfc32583c02849f4ecdc4306ac'),
  ($q$Main$q$,3,'mongodb','726020cbda5c9625320a78dc27face7e'),
  ($q$Main$q$,4,'mongodb','08d3682bf35f430194b9901416c1df74'),
  ($q$Main$q$,5,'mongodb','9eceba66c760bd047f26d315ab2c8ee5'),
  ($q$Main$q$,6,'mongodb','c65093bb8c5e29b0404ef6bceec63efa'),
  ($q$Main$q$,7,'mongodb','2b62386601a8dec3c3d56eeb08df245b'),
  ($q$Main$q$,8,'mongodb','b37fe3a46235c08846210cd6b48f3aab'),
  ($q$Main$q$,9,'mongodb','df2891eb3626bac6afa896945708f093'),
  ($q$Main$q$,10,'mongodb','913cd15c631b8dee26b34ff1fc00251c'),
  ($q$Main$q$,11,'mongodb','fca7f940826ea9884083a10256867bcb'),
  ($q$Main$q$,12,'mongodb','fdfda366a34136abbed27f3704bd98c5')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='mongodb-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('mongodb-advanced',$q$MongoDB Advanced$q$,$q$20 advanced-level questions on MongoDB: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='mongodb'),'database','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='mongodb-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'mongodb','52cfa154c8e1445e96c2bf08e7fe69a0'),
  ($q$Main$q$,2,'mongodb','870d70b3f2372c8e5a732cf6b18ebb47'),
  ($q$Main$q$,3,'mongodb','415b9a8328f3baba96f5f5853675b4b6'),
  ($q$Main$q$,4,'mongodb','41c84cbb8e1433fc279e177f7d76ab03'),
  ($q$Main$q$,5,'mongodb','ad6d0d29a9fe08776106bcee154f33cd'),
  ($q$Main$q$,6,'mongodb','ba11621691498c854ebd08b0a9300e8f'),
  ($q$Main$q$,7,'mongodb','89810f964f3bc364e3157969f43af545'),
  ($q$Main$q$,8,'mongodb','edd208a66e7b0862dd5f2c665a8025d3'),
  ($q$Main$q$,9,'mongodb','c60d7514663f12abcbc23345b7d82ec1'),
  ($q$Main$q$,10,'mongodb','f5849823cef2b7ade5dc21af34cd7aca')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='mongodb-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('sql-beginner',$q$SQL & Databases Beginner$q$,$q$20 beginner-level questions on SQL & Databases: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='sql'),'database','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='sql-beginner');
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('sql-intermediate',$q$SQL & Databases Intermediate$q$,$q$20 intermediate-level questions on SQL & Databases: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='sql'),'database','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='sql-intermediate');
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('sql-advanced',$q$SQL & Databases Advanced$q$,$q$20 advanced-level questions on SQL & Databases: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='sql'),'database','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='sql-advanced');
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('dotnet-beginner',$q$.NET Beginner$q$,$q$20 beginner-level questions on .NET: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='dotnet'),'database','beginner','subject',30,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='dotnet-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'dotnet','1465c71ed06cf64e92a5c7f667f8844a'),
  ($q$Main$q$,2,'dotnet','501d7ba8c3a962429c8b38c55985fe5b'),
  ($q$Main$q$,3,'dotnet','91bc30359c4ab93a16bc9a263494a7b5'),
  ($q$Main$q$,4,'dotnet','c8f8102bd0bc20e07f148edab238983c'),
  ($q$Main$q$,5,'dotnet','9f61acdaea90ed3af3faff4c45e7e1df')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='dotnet-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('dotnet-intermediate',$q$.NET Intermediate$q$,$q$20 intermediate-level questions on .NET: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='dotnet'),'database','intermediate','subject',40,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='dotnet-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'dotnet','5c00ffc6d14ea4eb2305199fe5817645'),
  ($q$Main$q$,2,'dotnet','611f9e478cada3feffb3dc95907abea8'),
  ($q$Main$q$,3,'dotnet','3768626359d7724219e5fc1a424ecc1d'),
  ($q$Main$q$,4,'dotnet','7abaebbc8551e63dd6802c0a225fa5e0'),
  ($q$Main$q$,5,'dotnet','8af2bcac434a4496dba0d9b7f19dfed7'),
  ($q$Main$q$,6,'dotnet','c10e11b021045c320636938610275fda'),
  ($q$Main$q$,7,'dotnet','cde3d78d401ab84989f7c3be9af898d5'),
  ($q$Main$q$,8,'dotnet','9b7c35e9028859c726f5ec403365bb5c'),
  ($q$Main$q$,9,'dotnet','9825baf605e4298e1d7a9bd0b180cef1'),
  ($q$Main$q$,10,'dotnet','9c72316644022b4c3e87bbf73a4df310'),
  ($q$Main$q$,11,'dotnet','cc5f820a6225aa38380174d79f13a88e'),
  ($q$Main$q$,12,'dotnet','d5fbe67ee87b27858a29e002fbc27fa2')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='dotnet-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('dotnet-advanced',$q$.NET Advanced$q$,$q$20 advanced-level questions on .NET: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where slug='dotnet'),'database','advanced','subject',50,50,20)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='dotnet-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,'dotnet','18ecf1747466f6054d944668dc29037f'),
  ($q$Main$q$,2,'dotnet','20ced9303c5d436c0acb30bef0ecf0ba'),
  ($q$Main$q$,3,'dotnet','20a8b5d15efdf6068ef15fdc6de69867'),
  ($q$Main$q$,4,'dotnet','72c79aa4e184d9c94ac722899d58ee0b'),
  ($q$Main$q$,5,'dotnet','1358fb79cf4338c0ba21c7adfa0c8fd8'),
  ($q$Main$q$,6,'dotnet','71174cf9bd9ce48ad7891e4dc3a350a4'),
  ($q$Main$q$,7,'dotnet','a38f2e48c16ecc4c09703d51e069063c'),
  ($q$Main$q$,8,'dotnet','b4a51487bedb14aed91a27ac2ea22e4a')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='dotnet-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('common-entrance-standard',$q$Common Entrance Examination – Standard$q$,$q$Complete 50-question entrance test for every engineering branch: Quantitative Aptitude 15, Logical Reasoning 15, Verbal Ability 10, Analytical Thinking 10. Balanced difficulty, 1 mark each.$q$,null,'entrance','mixed','entrance',60,40,50)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='common-entrance-standard');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Quantitative Aptitude$q$,1,'ce-quant','4f13291ba18546f20aa46bd9d64a4527'),
  ($q$Quantitative Aptitude$q$,2,'ce-quant','06d83fac9b215d77e97d661193a8591a'),
  ($q$Quantitative Aptitude$q$,3,'ce-quant','66aadac7d46bffba4182718ccefd7989'),
  ($q$Quantitative Aptitude$q$,4,'ce-quant','1adbebc126b35c3240fbcc918c265df6'),
  ($q$Quantitative Aptitude$q$,5,'ce-quant','0a3a3ea930a686a4a0f523cff35dd154'),
  ($q$Quantitative Aptitude$q$,6,'ce-quant','30b95be25e019a26ee774b904f547d63'),
  ($q$Quantitative Aptitude$q$,7,'ce-quant','16551214f98f4ddd333051351cc26615'),
  ($q$Quantitative Aptitude$q$,8,'ce-quant','10b0073f999d0df337e58867ae06f85f'),
  ($q$Quantitative Aptitude$q$,9,'ce-quant','570faf41ba01a279f323048bb1d3be54'),
  ($q$Quantitative Aptitude$q$,10,'ce-quant','2fbf184f4709bd43f285e44b12d35f18'),
  ($q$Quantitative Aptitude$q$,11,'ce-quant','09417007a7c8d91c1c24a3570039f103'),
  ($q$Quantitative Aptitude$q$,12,'ce-quant','70c37b699a5eb460b49211c011604f57'),
  ($q$Quantitative Aptitude$q$,13,'ce-quant','339f7271d0695ee5024a9cef026863a1'),
  ($q$Quantitative Aptitude$q$,14,'ce-quant','5e7b734aa74e134ee2c11ab4f667d595'),
  ($q$Quantitative Aptitude$q$,15,'ce-quant','09668068c465671eff3c177ae291264b'),
  ($q$Logical Reasoning$q$,16,'ce-reasoning','6326e5ebf9b352a0f0b81f07d5652d68'),
  ($q$Logical Reasoning$q$,17,'ce-reasoning','102bac8ad90678ee82a8b095579b5f4d'),
  ($q$Logical Reasoning$q$,18,'ce-reasoning','5259db7bf61f689e5ec2c0426e67625c'),
  ($q$Logical Reasoning$q$,19,'ce-reasoning','4fbbb9ce9f04586dff5be3d283ddc7ab'),
  ($q$Logical Reasoning$q$,20,'ce-reasoning','3ef29256ab9c6db5c88098cdafb96183'),
  ($q$Logical Reasoning$q$,21,'ce-reasoning','42f10e56b8051aa6e45892714d1b5e37'),
  ($q$Logical Reasoning$q$,22,'ce-reasoning','a972f6cc47eaa4015dd3741d8a9a00ad'),
  ($q$Logical Reasoning$q$,23,'ce-reasoning','33965eba8bd26659bdb7c8427ad341a8'),
  ($q$Logical Reasoning$q$,24,'ce-reasoning','3389afab903702c96acd9acaada18e46'),
  ($q$Logical Reasoning$q$,25,'ce-reasoning','4f76fad3ca7a67e1896cdcf17f58453c'),
  ($q$Logical Reasoning$q$,26,'ce-reasoning','319cbc1536d1d1b8a6fdd6799b0552d3'),
  ($q$Logical Reasoning$q$,27,'ce-reasoning','cc574603adafdf9df3bafa546b82dcf4'),
  ($q$Logical Reasoning$q$,28,'ce-reasoning','f149c88465dabe8cdc781c5bc3e1aa0d'),
  ($q$Logical Reasoning$q$,29,'ce-reasoning','200a3316acd7f39d92a25e6e952c8693'),
  ($q$Logical Reasoning$q$,30,'ce-reasoning','1d0c184b93cecad750622c9cdc1924e1'),
  ($q$Verbal Ability$q$,31,'ce-verbal','67ff5991059ac627d41b64d0d177f058'),
  ($q$Verbal Ability$q$,32,'ce-verbal','25cb6f63d6fede056f30c0d10f1aecd0'),
  ($q$Verbal Ability$q$,33,'ce-verbal','5292d589f556b095f7fb5b4fb4357c2c'),
  ($q$Verbal Ability$q$,34,'ce-verbal','277f9fd7da889eb92bfb0d28c53a5a11'),
  ($q$Verbal Ability$q$,35,'ce-verbal','57d5c8ea163fa43da1112c72812844e4'),
  ($q$Verbal Ability$q$,36,'ce-verbal','17b3dc1088bb6c1c9c96307d11df511f'),
  ($q$Verbal Ability$q$,37,'ce-verbal','093f7dddbeaa551786dc82571dcf6d99'),
  ($q$Verbal Ability$q$,38,'ce-verbal','0555552a7a976f64eada6eb9a8b3cf95'),
  ($q$Verbal Ability$q$,39,'ce-verbal','053b18cf085df091b13f2871b8e1df74'),
  ($q$Verbal Ability$q$,40,'ce-verbal','82cfd486368f37a5bac40836bc174e13'),
  ($q$Analytical Thinking$q$,41,'ce-analytical','0586b79aa3e37870017fca312ece5e06'),
  ($q$Analytical Thinking$q$,42,'ce-analytical','2534410a3bf53726c2d861c842845ec0'),
  ($q$Analytical Thinking$q$,43,'ce-analytical','5c8f2f958c11cdb950c448ca0c9998eb'),
  ($q$Analytical Thinking$q$,44,'ce-analytical','b5917eea37c330dfd2368c1a701897bd'),
  ($q$Analytical Thinking$q$,45,'ce-analytical','0c15156ce20036fd752f1a2294e236a8'),
  ($q$Analytical Thinking$q$,46,'ce-analytical','0aa152ea574444e75764dbfb2b88bf30'),
  ($q$Analytical Thinking$q$,47,'ce-analytical','8b12e0f17d2a83854b5a87e420127f2c'),
  ($q$Analytical Thinking$q$,48,'ce-analytical','650aaf19022feef789e4e12b12250bea'),
  ($q$Analytical Thinking$q$,49,'ce-analytical','2f25c88723f70960b8a9b4c5b2a1552f'),
  ($q$Analytical Thinking$q$,50,'ce-analytical','1de09c7d8e960769aaa2fab5937b2809')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='common-entrance-standard';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('common-entrance-foundation',$q$Common Entrance Examination – Foundation$q$,$q$Easier 50-question version of the entrance test, suited to first-year or screening use. Same four sections and marks.$q$,null,'entrance','mixed','entrance',60,40,50)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='common-entrance-foundation');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Quantitative Aptitude$q$,1,'ce-quant','6795d4bc4204c790876a66cafeeaafec'),
  ($q$Quantitative Aptitude$q$,2,'ce-quant','6455b16ae91ff2412279f7ec6df14dee'),
  ($q$Quantitative Aptitude$q$,3,'ce-quant','48fb0fd5532f5e63cd609b129d9cdd9b'),
  ($q$Quantitative Aptitude$q$,4,'ce-quant','1c120e98107b0e98cf6cfba26bdcc43e'),
  ($q$Quantitative Aptitude$q$,5,'ce-quant','72160883cee6a82c6652e270e86704f5'),
  ($q$Quantitative Aptitude$q$,6,'ce-quant','10772a6c46fed8a4d732c69fb4399dca'),
  ($q$Quantitative Aptitude$q$,7,'ce-quant','5d49010fad8f92d553a78065576fa799'),
  ($q$Quantitative Aptitude$q$,8,'ce-quant','28a10dfb084a589db6bffd3a2957db33'),
  ($q$Quantitative Aptitude$q$,9,'ce-quant','16ae7b38bca748adf97ad97cc80b8cae'),
  ($q$Quantitative Aptitude$q$,10,'ce-quant','32b1dd4f57e8aa63ccc9f1ca6f230071'),
  ($q$Quantitative Aptitude$q$,11,'ce-quant','99017e8a1ac8fe80290019f124e84ba7'),
  ($q$Quantitative Aptitude$q$,12,'ce-quant','a048a0e86beddbdfc1489372e6e7e7af'),
  ($q$Quantitative Aptitude$q$,13,'ce-quant','0697a6515599a6926e51e31af6903e48'),
  ($q$Quantitative Aptitude$q$,14,'ce-quant','5eae9b5718024d72ed267bd2acbee299'),
  ($q$Quantitative Aptitude$q$,15,'ce-quant','6b7460d26ee8983dedd0f85b5fd4679c'),
  ($q$Logical Reasoning$q$,16,'ce-reasoning','7c2f51f144048034c6cb720e7d163ecd'),
  ($q$Logical Reasoning$q$,17,'ce-reasoning','36b04e8ffa795135dd519aa9cfd0cb52'),
  ($q$Logical Reasoning$q$,18,'ce-reasoning','0438aea727feab7de0945f31eb86d86f'),
  ($q$Logical Reasoning$q$,19,'ce-reasoning','0cf04f2c457ba1ef6eb017e2c8630be6'),
  ($q$Logical Reasoning$q$,20,'ce-reasoning','99178b5832c961ca04baa2a893535cb4'),
  ($q$Logical Reasoning$q$,21,'ce-reasoning','a1d9beff20d211ad629c50278642546a'),
  ($q$Logical Reasoning$q$,22,'ce-reasoning','aecfbf10ef8bf21f09024cb0832f3f4c'),
  ($q$Logical Reasoning$q$,23,'ce-reasoning','c621096bf99138784fd22b470633e1b1'),
  ($q$Logical Reasoning$q$,24,'ce-reasoning','2f530652fbd6cda044fde095cc9f4e64'),
  ($q$Logical Reasoning$q$,25,'ce-reasoning','0c583ddab1162dabdfba988838c9c734'),
  ($q$Logical Reasoning$q$,26,'ce-reasoning','19ace850bfde1742ff88c219c72856ef'),
  ($q$Logical Reasoning$q$,27,'ce-reasoning','77d7326c06359f21923b146ce30ec078'),
  ($q$Logical Reasoning$q$,28,'ce-reasoning','e50e30ca6145d95b81c12b8d3e13dbe1'),
  ($q$Logical Reasoning$q$,29,'ce-reasoning','4f5c0e1aaae62165888a6be4abdf1544'),
  ($q$Logical Reasoning$q$,30,'ce-reasoning','4a8a244e2395c4ac9ca498eda102bbd3'),
  ($q$Verbal Ability$q$,31,'ce-verbal','54b066f451ede356b470b20a4c9e3ffa'),
  ($q$Verbal Ability$q$,32,'ce-verbal','235dc62a5bce60e1147232bd831bcc2f'),
  ($q$Verbal Ability$q$,33,'ce-verbal','7b7ac621792d15474c7c58c2f2b1c7b7'),
  ($q$Verbal Ability$q$,34,'ce-verbal','70054b614bd2847ec5e3e67ef1aa0a10'),
  ($q$Verbal Ability$q$,35,'ce-verbal','9a5caf3beafcea5a54f5497ec78265b0'),
  ($q$Verbal Ability$q$,36,'ce-verbal','3c3a5cbb53a87756c25bbf5833627ae0'),
  ($q$Verbal Ability$q$,37,'ce-verbal','016eea3724ae700794ac1ba2c02649b7'),
  ($q$Verbal Ability$q$,38,'ce-verbal','53de87992482da949e3e0d8202a214a4'),
  ($q$Verbal Ability$q$,39,'ce-verbal','adad65d9c6020c008d766e57938c8d14'),
  ($q$Verbal Ability$q$,40,'ce-verbal','bd0a9d93203fd93130a152487010a1e4'),
  ($q$Analytical Thinking$q$,41,'ce-analytical','7c6070244bcca88dee859d4fa4cdbce5'),
  ($q$Analytical Thinking$q$,42,'ce-analytical','4ffc4e4afd93ecea83087f7df19c5771'),
  ($q$Analytical Thinking$q$,43,'ce-analytical','6e44b41c2332dd583cd90f6529e650e8'),
  ($q$Analytical Thinking$q$,44,'ce-analytical','67158ef239c972bc7abba4bd66c1f598'),
  ($q$Analytical Thinking$q$,45,'ce-analytical','22d1acc539ea75800e36d2132a33ff45'),
  ($q$Analytical Thinking$q$,46,'ce-analytical','00f2c070cbe94ba306ee14b6512c1c78'),
  ($q$Analytical Thinking$q$,47,'ce-analytical','d32a1c8f969a7ce77f259ce9decb359d'),
  ($q$Analytical Thinking$q$,48,'ce-analytical','34b1d493b7ceb7661bfcccdf96be1951'),
  ($q$Analytical Thinking$q$,49,'ce-analytical','17ccbfaa7f243d57d7f4d039a472c7e8'),
  ($q$Analytical Thinking$q$,50,'ce-analytical','0374bd7c775924209153e53d1617262f')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='common-entrance-foundation';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('common-entrance-challenge',$q$Common Entrance Examination – Challenge$q$,$q$Harder 50-question version of the entrance test for scholarship or final-round selection. Same four sections and marks.$q$,null,'entrance','mixed','entrance',60,40,50)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='common-entrance-challenge');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Quantitative Aptitude$q$,1,'ce-quant','664ad23cb44214bec59b9fc75317ae38'),
  ($q$Quantitative Aptitude$q$,2,'ce-quant','28d0b5a81d57285cb571c3e875a7de63'),
  ($q$Quantitative Aptitude$q$,3,'ce-quant','4b6b7a529642fb3ea16aca9e7320a374'),
  ($q$Quantitative Aptitude$q$,4,'ce-quant','1bfbe09c6d7412cbf163fb4eea316eff'),
  ($q$Quantitative Aptitude$q$,5,'ce-quant','a019e54b85d3952200ab0bde905f6a7f'),
  ($q$Quantitative Aptitude$q$,6,'ce-quant','3e542240957ae363970a8a2d92b18204'),
  ($q$Quantitative Aptitude$q$,7,'ce-quant','1b23528a2e15db21b106c0ee7c4b714c'),
  ($q$Quantitative Aptitude$q$,8,'ce-quant','8df701b075f4fcc5cd36a3bfc23725c7'),
  ($q$Quantitative Aptitude$q$,9,'ce-quant','bb18fbe96662b8eb2c437a86c0026a2a'),
  ($q$Quantitative Aptitude$q$,10,'ce-quant','2bc37137bfe3e8937be0e5b36a18ce32'),
  ($q$Quantitative Aptitude$q$,11,'ce-quant','9086d200ed8bbdb73cde53a37a8d54cb'),
  ($q$Quantitative Aptitude$q$,12,'ce-quant','1f67d5e2ce3d10c74a8b58e67379a093'),
  ($q$Quantitative Aptitude$q$,13,'ce-quant','7a2bcec4c652bbc3d3cc8226666b4d0d'),
  ($q$Quantitative Aptitude$q$,14,'ce-quant','61682792668572ac423d18e974c45e57'),
  ($q$Quantitative Aptitude$q$,15,'ce-quant','5173a1f19d3c7cbaf0a3e0b3a6143f93'),
  ($q$Logical Reasoning$q$,16,'ce-reasoning','80d14e23392af7d68f975cf18f46e181'),
  ($q$Logical Reasoning$q$,17,'ce-reasoning','0fb8cb2e4f3e4d09c14605293c0650f5'),
  ($q$Logical Reasoning$q$,18,'ce-reasoning','c6e2bb910fb615490f2d1da2c65d564c'),
  ($q$Logical Reasoning$q$,19,'ce-reasoning','486f1a2eb17ba317587ee0b4f246e6f7'),
  ($q$Logical Reasoning$q$,20,'ce-reasoning','601098c503274d9e5be559a9b522ed45'),
  ($q$Logical Reasoning$q$,21,'ce-reasoning','12c921d5786feb35e6642a1d63c5e5de'),
  ($q$Logical Reasoning$q$,22,'ce-reasoning','1df7e81a41c3b5aa397e3728a048830c'),
  ($q$Logical Reasoning$q$,23,'ce-reasoning','8f2458c91cf4666c81a28ef60165c174'),
  ($q$Logical Reasoning$q$,24,'ce-reasoning','28d6bac1c71d46522be62652a61a6715'),
  ($q$Logical Reasoning$q$,25,'ce-reasoning','4312bc2385da0c7a7f3bcaa57b8483c6'),
  ($q$Logical Reasoning$q$,26,'ce-reasoning','56feb60bae035cd460d646b928d44826'),
  ($q$Logical Reasoning$q$,27,'ce-reasoning','7403cd7107f3d10a7593e2853d520718'),
  ($q$Logical Reasoning$q$,28,'ce-reasoning','814529c7a1eea8f40ad6186619e8945f'),
  ($q$Logical Reasoning$q$,29,'ce-reasoning','d9391513091df24ce4b0dc1992de8eee'),
  ($q$Logical Reasoning$q$,30,'ce-reasoning','fced91dfcb43a4ce54f501849fe5c78a'),
  ($q$Verbal Ability$q$,31,'ce-verbal','73a5ce76baf1d6a6064814eaef053954'),
  ($q$Verbal Ability$q$,32,'ce-verbal','20371e783ca4fd7f2700d7c8a3b4360d'),
  ($q$Verbal Ability$q$,33,'ce-verbal','87f01041c82166f44be6d74d39156e71'),
  ($q$Verbal Ability$q$,34,'ce-verbal','120fef9dbb2123d2983fc248c377ee98'),
  ($q$Verbal Ability$q$,35,'ce-verbal','688767142838aaeecfaf71e0497c9212'),
  ($q$Verbal Ability$q$,36,'ce-verbal','126db08679861280e22085b93ab1b7ed'),
  ($q$Verbal Ability$q$,37,'ce-verbal','2375362fe809fe48201b1bc7580855bd'),
  ($q$Verbal Ability$q$,38,'ce-verbal','cc5c75bb50fc07652788b79997dbfbc1'),
  ($q$Verbal Ability$q$,39,'ce-verbal','32caa1187391438d40c2ea4c71e67a5c'),
  ($q$Verbal Ability$q$,40,'ce-verbal','32f923d65ff022cba6c4b4ac4bb57e9d'),
  ($q$Analytical Thinking$q$,41,'ce-analytical','7c6657ef7e9d667dcfc8f6509fb611bc'),
  ($q$Analytical Thinking$q$,42,'ce-analytical','a9490cc6890dcfaebda07917733b2648'),
  ($q$Analytical Thinking$q$,43,'ce-analytical','71a605c28be0a68818c6a3055577f27d'),
  ($q$Analytical Thinking$q$,44,'ce-analytical','5bc0ac38d5df7bad649005b13930c66b'),
  ($q$Analytical Thinking$q$,45,'ce-analytical','bc33a4f6f0dd7ff314d229bb6c478978'),
  ($q$Analytical Thinking$q$,46,'ce-analytical','abb687db640d58311ec266e3576ffae9'),
  ($q$Analytical Thinking$q$,47,'ce-analytical','9700b5479a08261d60a0dbe6352d9f5d'),
  ($q$Analytical Thinking$q$,48,'ce-analytical','7b4e0dcb7a07a00599ff842b52cb2f75'),
  ($q$Analytical Thinking$q$,49,'ce-analytical','48dd4df4a1aac2a2d8ed42b46c311642'),
  ($q$Analytical Thinking$q$,50,'ce-analytical','261bf067102db56890a1099081e4ef84')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='common-entrance-challenge';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('ce-quant-practice',$q$Common Entrance – Quantitative Aptitude Section Test$q$,$q$25-question section test on Quantitative Aptitude drawn from the full pool, mixed difficulty, 1 mark each.$q$,(select id from domains where slug='ce-quant'),'entrance','mixed','section',30,40,25)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='ce-quant-practice');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Quantitative Aptitude$q$,1,'ce-quant','4f13291ba18546f20aa46bd9d64a4527'),
  ($q$Quantitative Aptitude$q$,2,'ce-quant','06d83fac9b215d77e97d661193a8591a'),
  ($q$Quantitative Aptitude$q$,3,'ce-quant','66aadac7d46bffba4182718ccefd7989'),
  ($q$Quantitative Aptitude$q$,4,'ce-quant','1adbebc126b35c3240fbcc918c265df6'),
  ($q$Quantitative Aptitude$q$,5,'ce-quant','0a3a3ea930a686a4a0f523cff35dd154'),
  ($q$Quantitative Aptitude$q$,6,'ce-quant','6795d4bc4204c790876a66cafeeaafec'),
  ($q$Quantitative Aptitude$q$,7,'ce-quant','6455b16ae91ff2412279f7ec6df14dee'),
  ($q$Quantitative Aptitude$q$,8,'ce-quant','48fb0fd5532f5e63cd609b129d9cdd9b'),
  ($q$Quantitative Aptitude$q$,9,'ce-quant','30b95be25e019a26ee774b904f547d63'),
  ($q$Quantitative Aptitude$q$,10,'ce-quant','16551214f98f4ddd333051351cc26615'),
  ($q$Quantitative Aptitude$q$,11,'ce-quant','10b0073f999d0df337e58867ae06f85f'),
  ($q$Quantitative Aptitude$q$,12,'ce-quant','570faf41ba01a279f323048bb1d3be54'),
  ($q$Quantitative Aptitude$q$,13,'ce-quant','2fbf184f4709bd43f285e44b12d35f18'),
  ($q$Quantitative Aptitude$q$,14,'ce-quant','09417007a7c8d91c1c24a3570039f103'),
  ($q$Quantitative Aptitude$q$,15,'ce-quant','16ae7b38bca748adf97ad97cc80b8cae'),
  ($q$Quantitative Aptitude$q$,16,'ce-quant','32b1dd4f57e8aa63ccc9f1ca6f230071'),
  ($q$Quantitative Aptitude$q$,17,'ce-quant','99017e8a1ac8fe80290019f124e84ba7'),
  ($q$Quantitative Aptitude$q$,18,'ce-quant','a048a0e86beddbdfc1489372e6e7e7af'),
  ($q$Quantitative Aptitude$q$,19,'ce-quant','70c37b699a5eb460b49211c011604f57'),
  ($q$Quantitative Aptitude$q$,20,'ce-quant','339f7271d0695ee5024a9cef026863a1'),
  ($q$Quantitative Aptitude$q$,21,'ce-quant','5e7b734aa74e134ee2c11ab4f667d595'),
  ($q$Quantitative Aptitude$q$,22,'ce-quant','09668068c465671eff3c177ae291264b'),
  ($q$Quantitative Aptitude$q$,23,'ce-quant','6b7460d26ee8983dedd0f85b5fd4679c'),
  ($q$Quantitative Aptitude$q$,24,'ce-quant','bb18fbe96662b8eb2c437a86c0026a2a'),
  ($q$Quantitative Aptitude$q$,25,'ce-quant','2bc37137bfe3e8937be0e5b36a18ce32')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='ce-quant-practice';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('ce-reasoning-practice',$q$Common Entrance – Logical Reasoning Section Test$q$,$q$25-question section test on Logical Reasoning drawn from the full pool, mixed difficulty, 1 mark each.$q$,(select id from domains where slug='ce-reasoning'),'entrance','mixed','section',30,40,25)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='ce-reasoning-practice');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Logical Reasoning$q$,1,'ce-reasoning','6326e5ebf9b352a0f0b81f07d5652d68'),
  ($q$Logical Reasoning$q$,2,'ce-reasoning','102bac8ad90678ee82a8b095579b5f4d'),
  ($q$Logical Reasoning$q$,3,'ce-reasoning','5259db7bf61f689e5ec2c0426e67625c'),
  ($q$Logical Reasoning$q$,4,'ce-reasoning','4fbbb9ce9f04586dff5be3d283ddc7ab'),
  ($q$Logical Reasoning$q$,5,'ce-reasoning','3ef29256ab9c6db5c88098cdafb96183'),
  ($q$Logical Reasoning$q$,6,'ce-reasoning','7c2f51f144048034c6cb720e7d163ecd'),
  ($q$Logical Reasoning$q$,7,'ce-reasoning','36b04e8ffa795135dd519aa9cfd0cb52'),
  ($q$Logical Reasoning$q$,8,'ce-reasoning','0438aea727feab7de0945f31eb86d86f'),
  ($q$Logical Reasoning$q$,9,'ce-reasoning','42f10e56b8051aa6e45892714d1b5e37'),
  ($q$Logical Reasoning$q$,10,'ce-reasoning','a972f6cc47eaa4015dd3741d8a9a00ad'),
  ($q$Logical Reasoning$q$,11,'ce-reasoning','33965eba8bd26659bdb7c8427ad341a8'),
  ($q$Logical Reasoning$q$,12,'ce-reasoning','3389afab903702c96acd9acaada18e46'),
  ($q$Logical Reasoning$q$,13,'ce-reasoning','4f76fad3ca7a67e1896cdcf17f58453c'),
  ($q$Logical Reasoning$q$,14,'ce-reasoning','319cbc1536d1d1b8a6fdd6799b0552d3'),
  ($q$Logical Reasoning$q$,15,'ce-reasoning','2f530652fbd6cda044fde095cc9f4e64'),
  ($q$Logical Reasoning$q$,16,'ce-reasoning','0c583ddab1162dabdfba988838c9c734'),
  ($q$Logical Reasoning$q$,17,'ce-reasoning','19ace850bfde1742ff88c219c72856ef'),
  ($q$Logical Reasoning$q$,18,'ce-reasoning','77d7326c06359f21923b146ce30ec078'),
  ($q$Logical Reasoning$q$,19,'ce-reasoning','cc574603adafdf9df3bafa546b82dcf4'),
  ($q$Logical Reasoning$q$,20,'ce-reasoning','f149c88465dabe8cdc781c5bc3e1aa0d'),
  ($q$Logical Reasoning$q$,21,'ce-reasoning','200a3316acd7f39d92a25e6e952c8693'),
  ($q$Logical Reasoning$q$,22,'ce-reasoning','1d0c184b93cecad750622c9cdc1924e1'),
  ($q$Logical Reasoning$q$,23,'ce-reasoning','4a8a244e2395c4ac9ca498eda102bbd3'),
  ($q$Logical Reasoning$q$,24,'ce-reasoning','28d6bac1c71d46522be62652a61a6715'),
  ($q$Logical Reasoning$q$,25,'ce-reasoning','4312bc2385da0c7a7f3bcaa57b8483c6')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='ce-reasoning-practice';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('ce-verbal-practice',$q$Common Entrance – Verbal Ability Section Test$q$,$q$25-question section test on Verbal Ability drawn from the full pool, mixed difficulty, 1 mark each.$q$,(select id from domains where slug='ce-verbal'),'entrance','mixed','section',30,40,25)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='ce-verbal-practice');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Verbal Ability$q$,1,'ce-verbal','67ff5991059ac627d41b64d0d177f058'),
  ($q$Verbal Ability$q$,2,'ce-verbal','25cb6f63d6fede056f30c0d10f1aecd0'),
  ($q$Verbal Ability$q$,3,'ce-verbal','5292d589f556b095f7fb5b4fb4357c2c'),
  ($q$Verbal Ability$q$,4,'ce-verbal','277f9fd7da889eb92bfb0d28c53a5a11'),
  ($q$Verbal Ability$q$,5,'ce-verbal','54b066f451ede356b470b20a4c9e3ffa'),
  ($q$Verbal Ability$q$,6,'ce-verbal','235dc62a5bce60e1147232bd831bcc2f'),
  ($q$Verbal Ability$q$,7,'ce-verbal','7b7ac621792d15474c7c58c2f2b1c7b7'),
  ($q$Verbal Ability$q$,8,'ce-verbal','70054b614bd2847ec5e3e67ef1aa0a10'),
  ($q$Verbal Ability$q$,9,'ce-verbal','57d5c8ea163fa43da1112c72812844e4'),
  ($q$Verbal Ability$q$,10,'ce-verbal','17b3dc1088bb6c1c9c96307d11df511f'),
  ($q$Verbal Ability$q$,11,'ce-verbal','093f7dddbeaa551786dc82571dcf6d99'),
  ($q$Verbal Ability$q$,12,'ce-verbal','0555552a7a976f64eada6eb9a8b3cf95'),
  ($q$Verbal Ability$q$,13,'ce-verbal','3c3a5cbb53a87756c25bbf5833627ae0'),
  ($q$Verbal Ability$q$,14,'ce-verbal','016eea3724ae700794ac1ba2c02649b7'),
  ($q$Verbal Ability$q$,15,'ce-verbal','53de87992482da949e3e0d8202a214a4'),
  ($q$Verbal Ability$q$,16,'ce-verbal','adad65d9c6020c008d766e57938c8d14'),
  ($q$Verbal Ability$q$,17,'ce-verbal','20371e783ca4fd7f2700d7c8a3b4360d'),
  ($q$Verbal Ability$q$,18,'ce-verbal','87f01041c82166f44be6d74d39156e71'),
  ($q$Verbal Ability$q$,19,'ce-verbal','053b18cf085df091b13f2871b8e1df74'),
  ($q$Verbal Ability$q$,20,'ce-verbal','82cfd486368f37a5bac40836bc174e13'),
  ($q$Verbal Ability$q$,21,'ce-verbal','bd0a9d93203fd93130a152487010a1e4'),
  ($q$Verbal Ability$q$,22,'ce-verbal','126db08679861280e22085b93ab1b7ed'),
  ($q$Verbal Ability$q$,23,'ce-verbal','2375362fe809fe48201b1bc7580855bd'),
  ($q$Verbal Ability$q$,24,'ce-verbal','cc5c75bb50fc07652788b79997dbfbc1'),
  ($q$Verbal Ability$q$,25,'ce-verbal','32caa1187391438d40c2ea4c71e67a5c')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='ce-verbal-practice';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)
values ('ce-analytical-practice',$q$Common Entrance – Analytical Thinking Section Test$q$,$q$25-question section test on Analytical Thinking drawn from the full pool, mixed difficulty, 1 mark each.$q$,(select id from domains where slug='ce-analytical'),'entrance','mixed','section',30,40,25)
on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='ce-analytical-practice');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Analytical Thinking$q$,1,'ce-analytical','0586b79aa3e37870017fca312ece5e06'),
  ($q$Analytical Thinking$q$,2,'ce-analytical','2534410a3bf53726c2d861c842845ec0'),
  ($q$Analytical Thinking$q$,3,'ce-analytical','5c8f2f958c11cdb950c448ca0c9998eb'),
  ($q$Analytical Thinking$q$,4,'ce-analytical','7c6070244bcca88dee859d4fa4cdbce5'),
  ($q$Analytical Thinking$q$,5,'ce-analytical','4ffc4e4afd93ecea83087f7df19c5771'),
  ($q$Analytical Thinking$q$,6,'ce-analytical','b5917eea37c330dfd2368c1a701897bd'),
  ($q$Analytical Thinking$q$,7,'ce-analytical','0c15156ce20036fd752f1a2294e236a8'),
  ($q$Analytical Thinking$q$,8,'ce-analytical','0aa152ea574444e75764dbfb2b88bf30'),
  ($q$Analytical Thinking$q$,9,'ce-analytical','8b12e0f17d2a83854b5a87e420127f2c'),
  ($q$Analytical Thinking$q$,10,'ce-analytical','22d1acc539ea75800e36d2132a33ff45'),
  ($q$Analytical Thinking$q$,11,'ce-analytical','00f2c070cbe94ba306ee14b6512c1c78'),
  ($q$Analytical Thinking$q$,12,'ce-analytical','d32a1c8f969a7ce77f259ce9decb359d'),
  ($q$Analytical Thinking$q$,13,'ce-analytical','34b1d493b7ceb7661bfcccdf96be1951'),
  ($q$Analytical Thinking$q$,14,'ce-analytical','17ccbfaa7f243d57d7f4d039a472c7e8'),
  ($q$Analytical Thinking$q$,15,'ce-analytical','a9490cc6890dcfaebda07917733b2648'),
  ($q$Analytical Thinking$q$,16,'ce-analytical','650aaf19022feef789e4e12b12250bea'),
  ($q$Analytical Thinking$q$,17,'ce-analytical','2f25c88723f70960b8a9b4c5b2a1552f'),
  ($q$Analytical Thinking$q$,18,'ce-analytical','1de09c7d8e960769aaa2fab5937b2809'),
  ($q$Analytical Thinking$q$,19,'ce-analytical','0374bd7c775924209153e53d1617262f'),
  ($q$Analytical Thinking$q$,20,'ce-analytical','abb687db640d58311ec266e3576ffae9'),
  ($q$Analytical Thinking$q$,21,'ce-analytical','9700b5479a08261d60a0dbe6352d9f5d'),
  ($q$Analytical Thinking$q$,22,'ce-analytical','7b4e0dcb7a07a00599ff842b52cb2f75'),
  ($q$Analytical Thinking$q$,23,'ce-analytical','48dd4df4a1aac2a2d8ed42b46c311642'),
  ($q$Analytical Thinking$q$,24,'ce-analytical','261bf067102db56890a1099081e4ef84'),
  ($q$Analytical Thinking$q$,25,'ce-analytical','99e416e865d248b9c0ec3170eb7f2054')
) as v(sec,pos,dom,h)
join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='ce-analytical-practice';

select * from validate_all_library_exams();
