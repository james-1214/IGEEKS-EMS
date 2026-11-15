-- Exam library packages. Run AFTER the seed files. Re-runnable. Ends by validating every package inside the database.
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('html-beginner',$q$HTML Beginner$q$,$q$20 beginner-level questions on HTML: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$HTML$q$),'web','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='html-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$HTML$q$,'24a929b8549665a2810613bb99034a68'),
  ($q$Main$q$,2,$q$HTML$q$,'29d5483524547caa0a04306b167cc4bb'),
  ($q$Main$q$,3,$q$HTML$q$,'32417bf06b762ab9e06591e7d69fb324'),
  ($q$Main$q$,4,$q$HTML$q$,'4283ddada99082bad374ee87d17e40d3'),
  ($q$Main$q$,5,$q$HTML$q$,'1f901b0fd0b250ce00ab5f3edbebb36f'),
  ($q$Main$q$,6,$q$HTML$q$,'25fdfcd78992d7329e56267594cbfd06'),
  ($q$Main$q$,7,$q$HTML$q$,'b4baf2ca18c11b90e5731b3c4fa9131b'),
  ($q$Main$q$,8,$q$HTML$q$,'0eed23d700a9f25bd429a582687b85ae'),
  ($q$Main$q$,9,$q$HTML$q$,'e764eaea50e35661d72a36bfaf39ee21'),
  ($q$Main$q$,10,$q$HTML$q$,'78751caf3b43bcf91bdcc959b044ad3e'),
  ($q$Main$q$,11,$q$HTML$q$,'49edc1770b4255b520d1afc78a7308ee'),
  ($q$Main$q$,12,$q$HTML$q$,'72c44b8d84061b0e7041fc2fef5f4519'),
  ($q$Main$q$,13,$q$HTML$q$,'7db01f00f19e3c401ae0a41db37b11bc'),
  ($q$Main$q$,14,$q$HTML$q$,'67058a94bde39f7312f88f7b843c414b'),
  ($q$Main$q$,15,$q$HTML$q$,'b2251f8a174ffb839ad03c214671e76f'),
  ($q$Main$q$,16,$q$HTML$q$,'3ff54ae777fb6bcdc5c6af7fd2af8a86'),
  ($q$Main$q$,17,$q$HTML$q$,'13eac8a82aeb257286d3a9aa9a79579f'),
  ($q$Main$q$,18,$q$HTML$q$,'8574ed956f4d99472c710d53a11dc756'),
  ($q$Main$q$,19,$q$HTML$q$,'4cba564edfc3b8d3a8c3e1dfd9f22712'),
  ($q$Main$q$,20,$q$HTML$q$,'9d48616b4ea2aa1f7d305eb24ad3bb92')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='html-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('html-intermediate',$q$HTML Intermediate$q$,$q$20 intermediate-level questions on HTML: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$HTML$q$),'web','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='html-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$HTML$q$,'d51f1ebb4ae3262ae1543a347e6110d9'),
  ($q$Main$q$,2,$q$HTML$q$,'3dbdf03c241661824e9b911c7386ed8a'),
  ($q$Main$q$,3,$q$HTML$q$,'064c17aad34e527e84e08143d35fcffe'),
  ($q$Main$q$,4,$q$HTML$q$,'05e17ee43ccaa0cb512c48c4bc9afe7b'),
  ($q$Main$q$,5,$q$HTML$q$,'c9d234a7ff5dccd9023aeba8757979a3'),
  ($q$Main$q$,6,$q$HTML$q$,'1a9d1ba6a9f6031b2ad089ac5b1f4224'),
  ($q$Main$q$,7,$q$HTML$q$,'ce814d38043a708b90760df2fb7a1a83'),
  ($q$Main$q$,8,$q$HTML$q$,'ef9e0ce379b824bab4ee2264aabb4b04'),
  ($q$Main$q$,9,$q$HTML$q$,'0acf88c4250a737135d990b9ebe2c415'),
  ($q$Main$q$,10,$q$HTML$q$,'49ca55fd1ba33b4ecf7511f2e39ae531'),
  ($q$Main$q$,11,$q$HTML$q$,'1999461e9820be3d0da25e97717a3a03'),
  ($q$Main$q$,12,$q$HTML$q$,'50f6879eb21688f20a350f945c49314b'),
  ($q$Main$q$,13,$q$HTML$q$,'d1a15a009ee47c26241a5eae437d8b42'),
  ($q$Main$q$,14,$q$HTML$q$,'641db4fcd61d001e0c43254782fba998'),
  ($q$Main$q$,15,$q$HTML$q$,'fae8f3f7ea8b415e5969e49e02882f3c'),
  ($q$Main$q$,16,$q$HTML$q$,'19eae3cb168ad5f961cf9cfebacee8ed'),
  ($q$Main$q$,17,$q$HTML$q$,'71da96b71928986dc067cf20c2b5a4a0'),
  ($q$Main$q$,18,$q$HTML$q$,'2184454f30a211b11b56bfc9092ea9ea'),
  ($q$Main$q$,19,$q$HTML$q$,'8f5a31bd850df3557f196e880075a35a'),
  ($q$Main$q$,20,$q$HTML$q$,'891b484240ae6ffc79e38076e0f2451d')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='html-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('html-advanced',$q$HTML Advanced$q$,$q$20 advanced-level questions on HTML: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$HTML$q$),'web','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='html-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$HTML$q$,'0a7183fff4d93007dec15c8bcac38a5e'),
  ($q$Main$q$,2,$q$HTML$q$,'08c20f3071acff52786f2c255a089d31'),
  ($q$Main$q$,3,$q$HTML$q$,'6c6c7a246a10a049a35d732e2d7ca4c4'),
  ($q$Main$q$,4,$q$HTML$q$,'bdfdaa6316f5b30a8a516a11551aec6b'),
  ($q$Main$q$,5,$q$HTML$q$,'212c0c032b2266b94d776fa838c7022d'),
  ($q$Main$q$,6,$q$HTML$q$,'395dda3d6e217ae8768a9c54815177c2'),
  ($q$Main$q$,7,$q$HTML$q$,'06af476de48c6142b20c051bb92d66c2'),
  ($q$Main$q$,8,$q$HTML$q$,'8996ad02cd1a9f0b27ce310ea290bb43'),
  ($q$Main$q$,9,$q$HTML$q$,'9bc189686b43fa1a16ba3cf259e5faf7'),
  ($q$Main$q$,10,$q$HTML$q$,'7ded92fed75391235e494616380451f3'),
  ($q$Main$q$,11,$q$HTML$q$,'4ef531ba315ba00220e4383dff215886'),
  ($q$Main$q$,12,$q$HTML$q$,'43bbbf3ef7770bc03fe2f4f2ee7f4a02'),
  ($q$Main$q$,13,$q$HTML$q$,'326d1b4c934e19a188db5af327639a1f'),
  ($q$Main$q$,14,$q$HTML$q$,'8abed51abed87069c01db6536d000097'),
  ($q$Main$q$,15,$q$HTML$q$,'d2737e569da92ca705299d7d4ed23fa7'),
  ($q$Main$q$,16,$q$HTML$q$,'a529833822147dfae8a0f52be1021d51'),
  ($q$Main$q$,17,$q$HTML$q$,'671a48ae3ead0fa76bc6dd6cdff7e942'),
  ($q$Main$q$,18,$q$HTML$q$,'444c50fc608d12e8ccd48bdf0da18bda'),
  ($q$Main$q$,19,$q$HTML$q$,'608ed74fd73a78eca4d635d753c11f13'),
  ($q$Main$q$,20,$q$HTML$q$,'8cffdc351a217e68b652c4817831d226')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='html-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('css-beginner',$q$CSS Beginner$q$,$q$20 beginner-level questions on CSS: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$CSS$q$),'web','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='css-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$CSS$q$,'5915afcfdb732eb25e53973167baaeee'),
  ($q$Main$q$,2,$q$CSS$q$,'13dd33f442a7006654e401e03bc342b6'),
  ($q$Main$q$,3,$q$CSS$q$,'28eb0dcd7bed4e02935da132f5367d65'),
  ($q$Main$q$,4,$q$CSS$q$,'191b289ebb43021d1eee4b869b0dd14d'),
  ($q$Main$q$,5,$q$CSS$q$,'075ab7468cfd76c518b1115d38a5f2ad'),
  ($q$Main$q$,6,$q$CSS$q$,'734ba0413e76cee03d260e10d687cc12'),
  ($q$Main$q$,7,$q$CSS$q$,'88715eb9385299dfaca0e2921ff47fa5'),
  ($q$Main$q$,8,$q$CSS$q$,'54898e516b094f35f378da8f0f361c31'),
  ($q$Main$q$,9,$q$CSS$q$,'4b92c6a2f8252f5bf25c38c9ccce4821'),
  ($q$Main$q$,10,$q$CSS$q$,'9ac1010663e500283e3e30af3a16785c'),
  ($q$Main$q$,11,$q$CSS$q$,'a82dac5597dd50da1a9d0dcf8bed7a3c'),
  ($q$Main$q$,12,$q$CSS$q$,'63a1fe34fc07d34f4477fc60c55f87ae'),
  ($q$Main$q$,13,$q$CSS$q$,'9e304227ebca69cb925687b6eeb845da'),
  ($q$Main$q$,14,$q$CSS$q$,'d09f83ba1dfe81ad3e8b525495bb7ef5'),
  ($q$Main$q$,15,$q$CSS$q$,'9702b9a1c187009f822f69542c4a85e7'),
  ($q$Main$q$,16,$q$CSS$q$,'f97b723d0f6d037b2b108e7af3e19c83'),
  ($q$Main$q$,17,$q$CSS$q$,'c15a621f3dbe9e0e350eddff405ac161'),
  ($q$Main$q$,18,$q$CSS$q$,'ea3432b6c197946a00cfabbffddb1c6d'),
  ($q$Main$q$,19,$q$CSS$q$,'ec899dd3de723e720cdce2e4b54aa07e'),
  ($q$Main$q$,20,$q$CSS$q$,'f249c0a1206a895dd2f9f992d516b167')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='css-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('css-intermediate',$q$CSS Intermediate$q$,$q$20 intermediate-level questions on CSS: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$CSS$q$),'web','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='css-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$CSS$q$,'2d7c0a8444c921c9b88cc06c629fd416'),
  ($q$Main$q$,2,$q$CSS$q$,'21aeefdfda1884bc9493467074595037'),
  ($q$Main$q$,3,$q$CSS$q$,'4e1711fcc774241b284244d575580566'),
  ($q$Main$q$,4,$q$CSS$q$,'6280db825e86a6a3a8c945b34290c4db'),
  ($q$Main$q$,5,$q$CSS$q$,'2daaf7e1f8b39b53c4ba4d5db3392c06'),
  ($q$Main$q$,6,$q$CSS$q$,'85b89e438e301fd1cc5ee4c492572e57'),
  ($q$Main$q$,7,$q$CSS$q$,'5d22a1a901479beb08abb693eed6131f'),
  ($q$Main$q$,8,$q$CSS$q$,'710d2d7ee7c2a7a6d1b88d6db81bf17c'),
  ($q$Main$q$,9,$q$CSS$q$,'cab2fc546fbaa0036411fe475051b78f'),
  ($q$Main$q$,10,$q$CSS$q$,'31af4c0eb58a5dd747e714ad53270ec5'),
  ($q$Main$q$,11,$q$CSS$q$,'f350e14f86d8a5199d8496b2cbea0b8b'),
  ($q$Main$q$,12,$q$CSS$q$,'8b2123f71f3440cd519fad35ce2e56e6'),
  ($q$Main$q$,13,$q$CSS$q$,'3fa1f4a799f8868df63f70e7c6cffcd5'),
  ($q$Main$q$,14,$q$CSS$q$,'a8d7409065e25e0ffafdfdae2943b0ae'),
  ($q$Main$q$,15,$q$CSS$q$,'4036821d2d6cb76d65fc2f23691c517a'),
  ($q$Main$q$,16,$q$CSS$q$,'686b95e6ef74e52e8feeceb75e0657a0'),
  ($q$Main$q$,17,$q$CSS$q$,'b54721876aed8d32097eb866d98b13e1'),
  ($q$Main$q$,18,$q$CSS$q$,'d6a72c9cc1c35eaba2a9b9a76f35c3e6'),
  ($q$Main$q$,19,$q$CSS$q$,'f2f23ce7efcd0e346aa320152d38456e'),
  ($q$Main$q$,20,$q$CSS$q$,'f38cb8c5d2d07fe9e0d8887a12e14ef7')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='css-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('css-advanced',$q$CSS Advanced$q$,$q$20 advanced-level questions on CSS: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$CSS$q$),'web','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='css-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$CSS$q$,'1ae2835b12ea477526d55f86d4692de3'),
  ($q$Main$q$,2,$q$CSS$q$,'17dee464fdc6588daf84e1ca6842267b'),
  ($q$Main$q$,3,$q$CSS$q$,'02edb2aa2adfc1943113156d4ff0ab5c'),
  ($q$Main$q$,4,$q$CSS$q$,'0b318d0345c487723734678810991a49'),
  ($q$Main$q$,5,$q$CSS$q$,'2e3dbe32a33ecdc6a1098bc1539a0b9c'),
  ($q$Main$q$,6,$q$CSS$q$,'14d97bdf75f5f7204d3cf12354e54f98'),
  ($q$Main$q$,7,$q$CSS$q$,'2d6cff76206e0e84ee7e792f40426a1a'),
  ($q$Main$q$,8,$q$CSS$q$,'35f6f4e54bd3b073f3f122823fcfdbde'),
  ($q$Main$q$,9,$q$CSS$q$,'34f9458d2cec0f6b66dd2c2f98db9530'),
  ($q$Main$q$,10,$q$CSS$q$,'a251f043c9a92d9ee3281093784f1b35'),
  ($q$Main$q$,11,$q$CSS$q$,'4f02d22548f1a6ea93671d47c5f11a46'),
  ($q$Main$q$,12,$q$CSS$q$,'372a3e31d49a60836648768df64bfd49'),
  ($q$Main$q$,13,$q$CSS$q$,'cd5e73664e2a4edc04c828f006b810ad'),
  ($q$Main$q$,14,$q$CSS$q$,'5f176dad8290f2eef64ccd6d88c6860c'),
  ($q$Main$q$,15,$q$CSS$q$,'84448df1dadf06437058466db1e62bf8'),
  ($q$Main$q$,16,$q$CSS$q$,'d00a4f27dfa8a1be36b13e612d773cef'),
  ($q$Main$q$,17,$q$CSS$q$,'cf217f722b622f449d8ef3f7506272cb'),
  ($q$Main$q$,18,$q$CSS$q$,'b39c172f383898e9ddd07b2b887594eb'),
  ($q$Main$q$,19,$q$CSS$q$,'e9135791b9f0662ebe1c9930cda2d24d'),
  ($q$Main$q$,20,$q$CSS$q$,'c84c01d788a97e7e664b5648713476d8')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='css-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('javascript-beginner',$q$JavaScript Beginner$q$,$q$20 beginner-level questions on JavaScript: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$JavaScript$q$),'web','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='javascript-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$JavaScript$q$,'0ed49bccdabf409fc527c26394b4cf92'),
  ($q$Main$q$,2,$q$JavaScript$q$,'f159c79909ed81010116175e00bab6e9'),
  ($q$Main$q$,3,$q$JavaScript$q$,'b658536bf377f0e9a294d325ec5963c9'),
  ($q$Main$q$,4,$q$JavaScript$q$,'d825986ce4c444350656d7fc25cad955'),
  ($q$Main$q$,5,$q$JavaScript$q$,'0441d9f2e07f87454e42af6728261615'),
  ($q$Main$q$,6,$q$JavaScript$q$,'24ad19665c3245d1e03c1b4afdcdc487'),
  ($q$Main$q$,7,$q$JavaScript$q$,'d9a82ce4ddd297a76689cff3e778aacc'),
  ($q$Main$q$,8,$q$JavaScript$q$,'1b957dc58c6e8cc3df52fb70e9a26d05'),
  ($q$Main$q$,9,$q$JavaScript$q$,'3c2feb24f911df4d19ac9bca2f3d474f'),
  ($q$Main$q$,10,$q$JavaScript$q$,'4570c04d6bd8d7087ccfc7c998b33a6b'),
  ($q$Main$q$,11,$q$JavaScript$q$,'5999e7182d04de6b39aa8673178d365c'),
  ($q$Main$q$,12,$q$JavaScript$q$,'6072972ac2535cb32ac9d4d07522be56'),
  ($q$Main$q$,13,$q$JavaScript$q$,'6f5114ca91ed8929af69d84baccfdc27'),
  ($q$Main$q$,14,$q$JavaScript$q$,'9ea16911a00ee2aeb8e0757408dfa3ec'),
  ($q$Main$q$,15,$q$JavaScript$q$,'c0ba974298b10190a5222fccac1b32aa'),
  ($q$Main$q$,16,$q$JavaScript$q$,'c00325a7a295f465607568527aac0ff6'),
  ($q$Main$q$,17,$q$JavaScript$q$,'ca8402376a5d3cd38a0b8d80d22ff0cb'),
  ($q$Main$q$,18,$q$JavaScript$q$,'d3ddc2101af96fb446852d852bab1301'),
  ($q$Main$q$,19,$q$JavaScript$q$,'d82b22e66c930856cfe1c9c305798036'),
  ($q$Main$q$,20,$q$JavaScript$q$,'dc434347c26cc4be02ad24f8990ae127')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='javascript-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('javascript-intermediate',$q$JavaScript Intermediate$q$,$q$20 intermediate-level questions on JavaScript: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$JavaScript$q$),'web','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='javascript-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$JavaScript$q$,'029d5ac9ce5aa01c41933d3e7037d97a'),
  ($q$Main$q$,2,$q$JavaScript$q$,'35d5a5987d86eb6bbf964f96716ec547'),
  ($q$Main$q$,3,$q$JavaScript$q$,'0411504db3e7c8ffa0eb9e7df4278675'),
  ($q$Main$q$,4,$q$JavaScript$q$,'1f7012bc898215a5c18a38268a1a0223'),
  ($q$Main$q$,5,$q$JavaScript$q$,'1d65d4f1a0f5caa0f06c8b9dacbe91cd'),
  ($q$Main$q$,6,$q$JavaScript$q$,'0d9c75ee8e749aeb62609a5c04261404'),
  ($q$Main$q$,7,$q$JavaScript$q$,'4a2172a0602736e38d46e645edfcbb44'),
  ($q$Main$q$,8,$q$JavaScript$q$,'5bdfb0e3c272a1501965c93d3e33e132'),
  ($q$Main$q$,9,$q$JavaScript$q$,'3183ae5fde9f9bff95640d04059d0553'),
  ($q$Main$q$,10,$q$JavaScript$q$,'6597979cf3467f2aacf596ba9792e356'),
  ($q$Main$q$,11,$q$JavaScript$q$,'ca71c6fdd2be9d07bcbf4e9d5cfae354'),
  ($q$Main$q$,12,$q$JavaScript$q$,'80cea2d052dde3dae0c9a6138445dd37'),
  ($q$Main$q$,13,$q$JavaScript$q$,'6aac24a3524c07d04def7d2e150d775e'),
  ($q$Main$q$,14,$q$JavaScript$q$,'93734fab66283e4898c8196420d66a78'),
  ($q$Main$q$,15,$q$JavaScript$q$,'78788769a8389758995f65f8d3f4f98d'),
  ($q$Main$q$,16,$q$JavaScript$q$,'9859b99dfeea2a760adf5f1ee43f2bfa'),
  ($q$Main$q$,17,$q$JavaScript$q$,'7a0e1fcb18ae688388ae398a09a5fac5'),
  ($q$Main$q$,18,$q$JavaScript$q$,'9862bf7f118fc08418e86a58c21af61d'),
  ($q$Main$q$,19,$q$JavaScript$q$,'7c7ca0b7213f016bd7ced3f53576a8f0'),
  ($q$Main$q$,20,$q$JavaScript$q$,'fc1c0075b0236532243b1202c8eca38d')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='javascript-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('javascript-advanced',$q$JavaScript Advanced$q$,$q$20 advanced-level questions on JavaScript: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$JavaScript$q$),'web','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='javascript-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$JavaScript$q$,'189ae63f0d6c91ada080c9dcc4c60321'),
  ($q$Main$q$,2,$q$JavaScript$q$,'127b2a93d11e0532f0fc0490ddf8dc9b'),
  ($q$Main$q$,3,$q$JavaScript$q$,'1270ac95ba606a7e340abebdfef57b0e'),
  ($q$Main$q$,4,$q$JavaScript$q$,'3383c379a3e31ba472729a40fa6b541c'),
  ($q$Main$q$,5,$q$JavaScript$q$,'7352aa2761468a9e5034eb7250a95b7b'),
  ($q$Main$q$,6,$q$JavaScript$q$,'347d84df7e7bc6bf42ae484ca543f4b3'),
  ($q$Main$q$,7,$q$JavaScript$q$,'1b141e4b5db026ba342459d600e92e61'),
  ($q$Main$q$,8,$q$JavaScript$q$,'645ef3426c2e4fdda959556b20abfb14'),
  ($q$Main$q$,9,$q$JavaScript$q$,'6060e0999561dcd68c659e307ea67e8c'),
  ($q$Main$q$,10,$q$JavaScript$q$,'484fd1fc9169919c319f68ce4ae7ee29'),
  ($q$Main$q$,11,$q$JavaScript$q$,'67a1f954a340afd1a04ea9b49b7319f4'),
  ($q$Main$q$,12,$q$JavaScript$q$,'bab440185363a582aa113a7afef9b3b5'),
  ($q$Main$q$,13,$q$JavaScript$q$,'eec39627c7b4d463ffe5dd0cba34f1a4'),
  ($q$Main$q$,14,$q$JavaScript$q$,'54e7f7d91348264b6806b6584651431c'),
  ($q$Main$q$,15,$q$JavaScript$q$,'a3917ae99bcd5f8618972e1d996ecb73'),
  ($q$Main$q$,16,$q$JavaScript$q$,'fe6916eab0933b8b1ea49b002dcef945'),
  ($q$Main$q$,17,$q$JavaScript$q$,'a82646325b191d06a4a6a604bd92462e'),
  ($q$Main$q$,18,$q$JavaScript$q$,'d775c8f9994aa680e9e40bf862e21427'),
  ($q$Main$q$,19,$q$JavaScript$q$,'b5b9e9950201ac413952a67ca33b8fda'),
  ($q$Main$q$,20,$q$JavaScript$q$,'ec62bc2fd93b363e5c317e34c14b9a1c')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='javascript-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('react-beginner',$q$React Beginner$q$,$q$20 beginner-level questions on React: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$React$q$),'web','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='react-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$React$q$,'1bef5724019fc5ac76e06fd5480edc48'),
  ($q$Main$q$,2,$q$React$q$,'28350e01b5909928d9f68112513fbce5'),
  ($q$Main$q$,3,$q$React$q$,'448aa1c815b2da1059374d7481d73daa'),
  ($q$Main$q$,4,$q$React$q$,'2383ff95069c2995b3c7715f5b5843de'),
  ($q$Main$q$,5,$q$React$q$,'5e53d735b1ecc56cd6a61ffb90ebfb45'),
  ($q$Main$q$,6,$q$React$q$,'630f3b27dd230a7ecaa7ca5c06d7aeba'),
  ($q$Main$q$,7,$q$React$q$,'f21de1ede8dd08b301a0444ff6e6fd8b'),
  ($q$Main$q$,8,$q$React$q$,'7e60e422f97adfdc7b932899f361f060'),
  ($q$Main$q$,9,$q$React$q$,'8608a85ebe35e0a893e43d697a8d889c'),
  ($q$Main$q$,10,$q$React$q$,'d53aca5ef4c9ac4eacce22dca04512bf'),
  ($q$Main$q$,11,$q$React$q$,'7218dd4fc7ce6d59866cfe1a565b0cbe'),
  ($q$Main$q$,12,$q$React$q$,'c7acfb72c8bc38c0e227afe1b206c232'),
  ($q$Main$q$,13,$q$React$q$,'acb4a83d0995798b89a7190fe51be618'),
  ($q$Main$q$,14,$q$React$q$,'ee5afc03fd7c49a9b571949131145099'),
  ($q$Main$q$,15,$q$React$q$,'958f407426bf83e6fe5ea0ccab546e52'),
  ($q$Main$q$,16,$q$React$q$,'e825aa099b0b0ee27d447919ad506ad3'),
  ($q$Main$q$,17,$q$React$q$,'ccd51a1baa84746ef008ad181357e1ff'),
  ($q$Main$q$,18,$q$React$q$,'c797e0eee687c9dd29fd5f5b6b80a3fd'),
  ($q$Main$q$,19,$q$React$q$,'d0e6b8de95ee9c8ec5c601bbcc697e78'),
  ($q$Main$q$,20,$q$React$q$,'e0c63f8ea12dd9265c4fdb24820d4431')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='react-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('react-intermediate',$q$React Intermediate$q$,$q$20 intermediate-level questions on React: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$React$q$),'web','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='react-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$React$q$,'09250eba751237ced4abd5b08882e079'),
  ($q$Main$q$,2,$q$React$q$,'0b1a718834d4eec27b3a650766224839'),
  ($q$Main$q$,3,$q$React$q$,'865d855e867c3c5965850657651807d2'),
  ($q$Main$q$,4,$q$React$q$,'0cbb2e990d829f3517f981d4574f0cb0'),
  ($q$Main$q$,5,$q$React$q$,'2247b5f75ace7b6307c6838407477baa'),
  ($q$Main$q$,6,$q$React$q$,'34bdbecb923be1cb32a810e6459b180b'),
  ($q$Main$q$,7,$q$React$q$,'912048e49d1aaeaa4a9524d4562209f1'),
  ($q$Main$q$,8,$q$React$q$,'5e121948916428dcc3650163e976ec8a'),
  ($q$Main$q$,9,$q$React$q$,'ecf5a2323e7d1600bd53b580648cd1f1'),
  ($q$Main$q$,10,$q$React$q$,'5123ce196db5ca6e7cccd0c5ab524dc4'),
  ($q$Main$q$,11,$q$React$q$,'ebec9c832d56f00dfcae503868eda423'),
  ($q$Main$q$,12,$q$React$q$,'6a1388b70820086fa5e92f63770dfcec'),
  ($q$Main$q$,13,$q$React$q$,'67cff324919a5e9fab07aa0c769ad352'),
  ($q$Main$q$,14,$q$React$q$,'77fe78c2213dfe79a48c8af054044f11'),
  ($q$Main$q$,15,$q$React$q$,'6b7b2ad9dc741d7e1e05660eae2db289'),
  ($q$Main$q$,16,$q$React$q$,'b4c4746df8c0aa5e992cfa9b3d742859'),
  ($q$Main$q$,17,$q$React$q$,'b9070c03546b4a62d6b166aec83bb23b'),
  ($q$Main$q$,18,$q$React$q$,'b9108075eb4ca788d27d51f2f89b8f8f'),
  ($q$Main$q$,19,$q$React$q$,'c0ab0ee1e2f6d9ad56c77d5d572d1b59'),
  ($q$Main$q$,20,$q$React$q$,'ea143bffecb0744a2cc90e0c5459b40c')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='react-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('react-advanced',$q$React Advanced$q$,$q$20 advanced-level questions on React: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$React$q$),'web','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='react-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$React$q$,'06d73652dceb3b138528c1562446041c'),
  ($q$Main$q$,2,$q$React$q$,'082f831a40c18aac289e484dc4248559'),
  ($q$Main$q$,3,$q$React$q$,'09acaed66a7f45919c8989bc06a1d07b'),
  ($q$Main$q$,4,$q$React$q$,'0e96111ecfbaf058375ccac75b10ee10'),
  ($q$Main$q$,5,$q$React$q$,'1318c5894f08f2a45bd0efb221e748eb'),
  ($q$Main$q$,6,$q$React$q$,'477b90eab5225331acc02f698e1ba9fb'),
  ($q$Main$q$,7,$q$React$q$,'621522aeff27c25cbcf16e402c0ab606'),
  ($q$Main$q$,8,$q$React$q$,'6b910605e839e0c3c55e7bb836c18c63'),
  ($q$Main$q$,9,$q$React$q$,'6b96e8d136d30d7e7b708e95b665af2f'),
  ($q$Main$q$,10,$q$React$q$,'758d24bd5194116721e327e650476de1'),
  ($q$Main$q$,11,$q$React$q$,'a925612d403aa0877b616adb73c752af'),
  ($q$Main$q$,12,$q$React$q$,'ab5a03bc6fad1e2c1cf874c4250b3852'),
  ($q$Main$q$,13,$q$React$q$,'adf50ca5a31f440e8603775240706bc5'),
  ($q$Main$q$,14,$q$React$q$,'b3a6490b72d066cbed044b79ec01aeef'),
  ($q$Main$q$,15,$q$React$q$,'c3fdbd4327ebde77517d131c31955ff9'),
  ($q$Main$q$,16,$q$React$q$,'c6293831bdf26ab83d50bddb778d2504'),
  ($q$Main$q$,17,$q$React$q$,'cfa381ee50b8e732126b07bd46eb1794'),
  ($q$Main$q$,18,$q$React$q$,'dfe92cb8d483a4d048db87a8e5c1c7af'),
  ($q$Main$q$,19,$q$React$q$,'f116cc93f636523925baeaabf6a8c63e'),
  ($q$Main$q$,20,$q$React$q$,'f3903b8e26e4df4289dc6bd24aeb0168')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='react-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('nodejs-beginner',$q$Node.js Beginner$q$,$q$20 beginner-level questions on Node.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Node.js$q$),'web','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='nodejs-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Node.js$q$,'534a34ef75a4e660e10647c7e17e4f32'),
  ($q$Main$q$,2,$q$Node.js$q$,'039e11834d5ea1b0c18f8e13cb558312'),
  ($q$Main$q$,3,$q$Node.js$q$,'6980f85dfac90a0df3a7dec08c080a34'),
  ($q$Main$q$,4,$q$Node.js$q$,'059923dfea9d1313c7763ed108520b47'),
  ($q$Main$q$,5,$q$Node.js$q$,'8023835eeede2b6e08368ffe3d7c5a07'),
  ($q$Main$q$,6,$q$Node.js$q$,'027c69a277f397c4331394ccbd6dcdfe'),
  ($q$Main$q$,7,$q$Node.js$q$,'2a9bc2f6bf4772f949e073f819fda130'),
  ($q$Main$q$,8,$q$Node.js$q$,'909cb33e8dbf64f524c4d7eb1625ddaf'),
  ($q$Main$q$,9,$q$Node.js$q$,'a739d8fdf2323d7e0c080560d438fea4'),
  ($q$Main$q$,10,$q$Node.js$q$,'361474ed3f47b1021a18e9ec26101ef1'),
  ($q$Main$q$,11,$q$Node.js$q$,'028962e8f56319bc3282bb25657ad3c4'),
  ($q$Main$q$,12,$q$Node.js$q$,'2fe94d9f16a82168e2fca07889fa7017'),
  ($q$Main$q$,13,$q$Node.js$q$,'af793f03b1ad53805b57f1325f3b999f'),
  ($q$Main$q$,14,$q$Node.js$q$,'ff639a71c2c87239b878f6893ef3518b'),
  ($q$Main$q$,15,$q$Node.js$q$,'04f262158617dbe9152e5890cff92532'),
  ($q$Main$q$,16,$q$Node.js$q$,'f7bdcf731d3c59122a1825c950703358'),
  ($q$Main$q$,17,$q$Node.js$q$,'af7d7a9a4f2cd8dea3a19252b07636cf'),
  ($q$Main$q$,18,$q$Node.js$q$,'0b5ec76511b2190f3c73fedbde17e825'),
  ($q$Main$q$,19,$q$Node.js$q$,'91b213459cef3907da3d665c0d1c6402'),
  ($q$Main$q$,20,$q$Node.js$q$,'a6c4823112d897e08a95f29caea86c6e')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='nodejs-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('nodejs-intermediate',$q$Node.js Intermediate$q$,$q$20 intermediate-level questions on Node.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Node.js$q$),'web','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='nodejs-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Node.js$q$,'1076a3cbc714f1e91900f0a9515b7d2e'),
  ($q$Main$q$,2,$q$Node.js$q$,'de6be51eda237354748f86a246acdd91'),
  ($q$Main$q$,3,$q$Node.js$q$,'3b46a0d104944a8283f9673615a355c0'),
  ($q$Main$q$,4,$q$Node.js$q$,'1e64b566e81aa0d4ff2f678f5d998916'),
  ($q$Main$q$,5,$q$Node.js$q$,'1197c169167dfaed68e1ac356092a791'),
  ($q$Main$q$,6,$q$Node.js$q$,'86afb36cf314f6b27a5a67deb29d232d'),
  ($q$Main$q$,7,$q$Node.js$q$,'5da7486074d1adf4d6ed07ef4bd21658'),
  ($q$Main$q$,8,$q$Node.js$q$,'7cc1432d5813e73e91a2dbfbeb5f9e97'),
  ($q$Main$q$,9,$q$Node.js$q$,'e53195eafd2c59e47b6089ad1f4ac325'),
  ($q$Main$q$,10,$q$Node.js$q$,'52e3a4aa5cc63b34600c0330095a1dee'),
  ($q$Main$q$,11,$q$Node.js$q$,'daeb1f8f6ba3927ad53ddcc9e7281a4c'),
  ($q$Main$q$,12,$q$Node.js$q$,'a3b6904f9ffb98421a6add917dfec305'),
  ($q$Main$q$,13,$q$Node.js$q$,'954c574970d86a2e71b49522b4c0f4b0'),
  ($q$Main$q$,14,$q$Node.js$q$,'bc0c96cd390cc88d8f709b50e258d896'),
  ($q$Main$q$,15,$q$Node.js$q$,'a1d33761c4badee7e59633dfb675809a'),
  ($q$Main$q$,16,$q$Node.js$q$,'d24bed9fa81767f1a2f8fd6fae73b924'),
  ($q$Main$q$,17,$q$Node.js$q$,'ad8f50158149c89f24ebfc10c9795004'),
  ($q$Main$q$,18,$q$Node.js$q$,'c6372e90b5c608fefe03b81ffdc86601'),
  ($q$Main$q$,19,$q$Node.js$q$,'d20729217f76193217878849022dbb93'),
  ($q$Main$q$,20,$q$Node.js$q$,'f60eb319428c9031f1c20f7f40718887')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='nodejs-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('nodejs-advanced',$q$Node.js Advanced$q$,$q$20 advanced-level questions on Node.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Node.js$q$),'web','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='nodejs-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Node.js$q$,'5743f0781224d2d1e0cb611fb9fd7a29'),
  ($q$Main$q$,2,$q$Node.js$q$,'0c60d38db5f641a913c918d8685c95ff'),
  ($q$Main$q$,3,$q$Node.js$q$,'eada0b1efcd79e2a83f6625950635f43'),
  ($q$Main$q$,4,$q$Node.js$q$,'3f74745c01182664bbbd4c3c6f7e95ce'),
  ($q$Main$q$,5,$q$Node.js$q$,'1471136267568984015006917634a733'),
  ($q$Main$q$,6,$q$Node.js$q$,'ad417ecee429d00f4928267b7bc07221'),
  ($q$Main$q$,7,$q$Node.js$q$,'77eb308c8a77775dde72a6d5eb7f4365'),
  ($q$Main$q$,8,$q$Node.js$q$,'27e0600f87906993d4df014140e75270'),
  ($q$Main$q$,9,$q$Node.js$q$,'ee9c14f07ef2123fbbdc965d346ebff5'),
  ($q$Main$q$,10,$q$Node.js$q$,'75f1c74b04e8e1a692efca21e56afedf'),
  ($q$Main$q$,11,$q$Node.js$q$,'90f2747ce0f7a0cc75acfe5385cd56da'),
  ($q$Main$q$,12,$q$Node.js$q$,'d0f31e656b2610f4d2804d2bd066b6df'),
  ($q$Main$q$,13,$q$Node.js$q$,'8796bd27ec46712bf00ab79b32f641bb'),
  ($q$Main$q$,14,$q$Node.js$q$,'f8652460866f1637e7b7b90f068a9a6b'),
  ($q$Main$q$,15,$q$Node.js$q$,'8cabdf2d614196cb8d78755e5e9569da'),
  ($q$Main$q$,16,$q$Node.js$q$,'f86b38162b6c3793f046cf0add1a3ea4'),
  ($q$Main$q$,17,$q$Node.js$q$,'bf631bc4ded11bd0315a972c8cb36e67'),
  ($q$Main$q$,18,$q$Node.js$q$,'c7dbc610137e907a675d8933b8413b85'),
  ($q$Main$q$,19,$q$Node.js$q$,'c8200678ab7834c0144ef1c6cc7fa8c7'),
  ($q$Main$q$,20,$q$Node.js$q$,'fc79d2d3395f5dbcf45888a7e2754bd8')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='nodejs-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('expressjs-beginner',$q$Express.js Beginner$q$,$q$20 beginner-level questions on Express.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Express.js$q$),'web','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='expressjs-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Express.js$q$,'07d10d3d612ad48620de40f2505e0d36'),
  ($q$Main$q$,2,$q$Express.js$q$,'8d4f78a91f6dc29f7af2c823830bd9ce'),
  ($q$Main$q$,3,$q$Express.js$q$,'041aae89b373cea9b8fd0b0f6fa2fb02'),
  ($q$Main$q$,4,$q$Express.js$q$,'04059aaf9522b04db7ade208ea8732a5'),
  ($q$Main$q$,5,$q$Express.js$q$,'c9dd0ec4f290052f4946bd94d798efd0'),
  ($q$Main$q$,6,$q$Express.js$q$,'9d32e50d71365926e898ff7f5c756847'),
  ($q$Main$q$,7,$q$Express.js$q$,'085f89c23e03b886aee1f3fbaf3f35dd'),
  ($q$Main$q$,8,$q$Express.js$q$,'2d942cd3720cba0ad883fe4e1340332a'),
  ($q$Main$q$,9,$q$Express.js$q$,'cad9d96c2b8c6a5533cce0219fc56529'),
  ($q$Main$q$,10,$q$Express.js$q$,'aebd841a7d477b1cbda6c3ad87dbf12a'),
  ($q$Main$q$,11,$q$Express.js$q$,'1415c77281353fb5f344e92067cbb677'),
  ($q$Main$q$,12,$q$Express.js$q$,'35065981bb3b3526d77407d3995293d7'),
  ($q$Main$q$,13,$q$Express.js$q$,'568bc3b4a79799170083dba399b42fc6'),
  ($q$Main$q$,14,$q$Express.js$q$,'aeb7edb7d6d6a756dc20bdb9ad43d994'),
  ($q$Main$q$,15,$q$Express.js$q$,'61ad7078a88af731d1f5487afd71d8a5'),
  ($q$Main$q$,16,$q$Express.js$q$,'697543be824154fa60f23ca0d6feab90'),
  ($q$Main$q$,17,$q$Express.js$q$,'8a0d1251b953578fae5cde146133e0fc'),
  ($q$Main$q$,18,$q$Express.js$q$,'91d4c9e02b36d516ea6d49ac883b2524'),
  ($q$Main$q$,19,$q$Express.js$q$,'b7399600cf0e069c1e076144bfb3517b'),
  ($q$Main$q$,20,$q$Express.js$q$,'cd3e2f5fe1b8ca7c8d55b7324cc62bf7')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='expressjs-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('expressjs-intermediate',$q$Express.js Intermediate$q$,$q$20 intermediate-level questions on Express.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Express.js$q$),'web','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='expressjs-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Express.js$q$,'f5d88a83a4973c3e5f62c7ee538faedf'),
  ($q$Main$q$,2,$q$Express.js$q$,'28cfe7690add939bc8565b712502a3c1'),
  ($q$Main$q$,3,$q$Express.js$q$,'0e0604c364c44587d2f3674fbb945462'),
  ($q$Main$q$,4,$q$Express.js$q$,'181e0d48ed1e7d1b1e367469709992b0'),
  ($q$Main$q$,5,$q$Express.js$q$,'253be800eaefd75e66b30588cc7f8265'),
  ($q$Main$q$,6,$q$Express.js$q$,'4f322181b616bf66d5381355201df4d1'),
  ($q$Main$q$,7,$q$Express.js$q$,'1d0fdab898ee646f14b553bf1e86a942'),
  ($q$Main$q$,8,$q$Express.js$q$,'98cb4bae321c1a07c481444168174a4a'),
  ($q$Main$q$,9,$q$Express.js$q$,'6f4257224c50cc8ef807cc999a3f33ec'),
  ($q$Main$q$,10,$q$Express.js$q$,'84ffe483754fdb9b4abb159d9433ca7a'),
  ($q$Main$q$,11,$q$Express.js$q$,'2979662f6a1fe27cb331646cabb94a60'),
  ($q$Main$q$,12,$q$Express.js$q$,'aedd0d712b4d6acabb26ffa0b524448f'),
  ($q$Main$q$,13,$q$Express.js$q$,'84a571c035c67bf1c31d084525f92e25'),
  ($q$Main$q$,14,$q$Express.js$q$,'8fbcbf36ceba07302226838b6b033bc0'),
  ($q$Main$q$,15,$q$Express.js$q$,'a654b414a0e2e3f9849c3e28b91c4ba0'),
  ($q$Main$q$,16,$q$Express.js$q$,'d2a0714af6963b5bcc7a40a07f808416'),
  ($q$Main$q$,17,$q$Express.js$q$,'9ebfc89481ebb4a272f4c7ce58bb4dc5'),
  ($q$Main$q$,18,$q$Express.js$q$,'c5edacddb214ab4a5108475c4ce04bd0'),
  ($q$Main$q$,19,$q$Express.js$q$,'d74007aa41f5021a128e9f09fa3269c7'),
  ($q$Main$q$,20,$q$Express.js$q$,'a24b488fa498bd0d539b262292fe3b0b')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='expressjs-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('expressjs-advanced',$q$Express.js Advanced$q$,$q$20 advanced-level questions on Express.js: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Express.js$q$),'web','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='expressjs-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Express.js$q$,'0337118efe7fce249fc966b74737c863'),
  ($q$Main$q$,2,$q$Express.js$q$,'61629b3848198815962421d1e84aa04b'),
  ($q$Main$q$,3,$q$Express.js$q$,'22ea55cfb8976565312657184efad044'),
  ($q$Main$q$,4,$q$Express.js$q$,'2178dc44d5f110aa5b635d087585d2a4'),
  ($q$Main$q$,5,$q$Express.js$q$,'31f5f42c46030bda9ca8e6064650c757'),
  ($q$Main$q$,6,$q$Express.js$q$,'b93c13041a55b69038783ab315d1cbc2'),
  ($q$Main$q$,7,$q$Express.js$q$,'ae45c45f202bc5e6ffce417465f62d50'),
  ($q$Main$q$,8,$q$Express.js$q$,'2427a9250729958d76a11b510cdbdeaf'),
  ($q$Main$q$,9,$q$Express.js$q$,'383fb05d779d7f5a50df9cd435b62ed4'),
  ($q$Main$q$,10,$q$Express.js$q$,'d2d35d62f8e3e1e28d3333edc2175d18'),
  ($q$Main$q$,11,$q$Express.js$q$,'30c552d3ff4be5751247bc715b58b7ab'),
  ($q$Main$q$,12,$q$Express.js$q$,'439306a4c014a955aa95964cbd09edc3'),
  ($q$Main$q$,13,$q$Express.js$q$,'4dbed58610127a15b2caba51e2a9e349'),
  ($q$Main$q$,14,$q$Express.js$q$,'45ca68b3f2e70b1e6189408f4d3def73'),
  ($q$Main$q$,15,$q$Express.js$q$,'7e80699cefb3525cfc4ebb018a890059'),
  ($q$Main$q$,16,$q$Express.js$q$,'551c94cb4cce5110f2c8bd0af1980515'),
  ($q$Main$q$,17,$q$Express.js$q$,'a476d8578cbfd21c00ad4ebb7215b3c3'),
  ($q$Main$q$,18,$q$Express.js$q$,'7d453177c23c04ce5e98821922569ffd'),
  ($q$Main$q$,19,$q$Express.js$q$,'808a4f3bca434ff252231a88e398a02a'),
  ($q$Main$q$,20,$q$Express.js$q$,'fc434fc6e417043579e603db492642ba')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='expressjs-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('angular-beginner',$q$Angular Beginner$q$,$q$20 beginner-level questions on Angular: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Angular$q$),'web','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='angular-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Angular$q$,'091aceaac174da4ced650bee9a7a8cd3'),
  ($q$Main$q$,2,$q$Angular$q$,'6302b67896331f28a91f6726b4142463'),
  ($q$Main$q$,3,$q$Angular$q$,'afc86afe40f0341055f6713c12e638df'),
  ($q$Main$q$,4,$q$Angular$q$,'abaea31bf5528284eccbc93a52b2de39'),
  ($q$Main$q$,5,$q$Angular$q$,'14143fdbababed311427eca6466afa12'),
  ($q$Main$q$,6,$q$Angular$q$,'835164d88a21d1e83a7ce2887f2871d1'),
  ($q$Main$q$,7,$q$Angular$q$,'b3898205cd5b15b9454b8671a21d20c1'),
  ($q$Main$q$,8,$q$Angular$q$,'1702e116fd3c2c95864c498107657fee'),
  ($q$Main$q$,9,$q$Angular$q$,'e80e5247e00dc62f5edc8e1bc9806f6f'),
  ($q$Main$q$,10,$q$Angular$q$,'19ce08726f6337bad5f3f3b2194630a6'),
  ($q$Main$q$,11,$q$Angular$q$,'26495a779c058761dc6cf67622538db1'),
  ($q$Main$q$,12,$q$Angular$q$,'2d7f754e65e9928b4e50d12bb3f4db3e'),
  ($q$Main$q$,13,$q$Angular$q$,'328af1db28fe67834c313837d81308ac'),
  ($q$Main$q$,14,$q$Angular$q$,'363e218c86d2d57acc964a81096d5486'),
  ($q$Main$q$,15,$q$Angular$q$,'4893d95e0cac438d77e627bc5e499a4c'),
  ($q$Main$q$,16,$q$Angular$q$,'5b0c77cd42766d24336777b706d8126a'),
  ($q$Main$q$,17,$q$Angular$q$,'620748df0cade4eb9bc8cdf0558315c4'),
  ($q$Main$q$,18,$q$Angular$q$,'63ceed050e43dff513d3aaa48ff6bbf9'),
  ($q$Main$q$,19,$q$Angular$q$,'b061102721829b136f33b52ecb2b5ce3'),
  ($q$Main$q$,20,$q$Angular$q$,'dcd6abc5de2cd426d6ca7a203294a72f')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='angular-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('angular-intermediate',$q$Angular Intermediate$q$,$q$20 intermediate-level questions on Angular: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Angular$q$),'web','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='angular-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Angular$q$,'6d4b776cad38579ed19191afcff9f138'),
  ($q$Main$q$,2,$q$Angular$q$,'170590d0d7a1e651a7bf6aaa45c07999'),
  ($q$Main$q$,3,$q$Angular$q$,'0594f42b32338d1ef2ac067f3c0dafb2'),
  ($q$Main$q$,4,$q$Angular$q$,'9291e78fe9548f9e3143b78b6c9bc6cd'),
  ($q$Main$q$,5,$q$Angular$q$,'1e57b7921b3f2e17ebf696854786e2b2'),
  ($q$Main$q$,6,$q$Angular$q$,'2862ec8449ad74e798d1f64a66f12502'),
  ($q$Main$q$,7,$q$Angular$q$,'b450bc5d75c0c64b06f6263edadd0e82'),
  ($q$Main$q$,8,$q$Angular$q$,'b39811ae53425d0b88bba7d55fa9b723'),
  ($q$Main$q$,9,$q$Angular$q$,'19df5dc30895641c07598f012260e8cc'),
  ($q$Main$q$,10,$q$Angular$q$,'1c3ff4db78118705c9717d1cc4d6f871'),
  ($q$Main$q$,11,$q$Angular$q$,'503b44e777dca7e47896f70cb08f9751'),
  ($q$Main$q$,12,$q$Angular$q$,'c697d6c46918d7de6933a24b015efe2f'),
  ($q$Main$q$,13,$q$Angular$q$,'2385f28bd803b367fc5937d7e32983ad'),
  ($q$Main$q$,14,$q$Angular$q$,'fd32a4f1f1545b41b07e40808f57fea9'),
  ($q$Main$q$,15,$q$Angular$q$,'251b8cd33b8e37a1352929a09c0b763c'),
  ($q$Main$q$,16,$q$Angular$q$,'34f74ee8f2f83efe1544bcecc6370276'),
  ($q$Main$q$,17,$q$Angular$q$,'706cb632efb0575c8bc89ed74d8c98bb'),
  ($q$Main$q$,18,$q$Angular$q$,'74c61aed5ff5bbbe0604c230bffbd14f'),
  ($q$Main$q$,19,$q$Angular$q$,'9cd9a5cc89d00fd7552675235bb81050'),
  ($q$Main$q$,20,$q$Angular$q$,'c04676fc0ef85a805ce3db0e1a53e22f')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='angular-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('angular-advanced',$q$Angular Advanced$q$,$q$20 advanced-level questions on Angular: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Angular$q$),'web','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='angular-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Angular$q$,'13c77e2313207d244442f05e62d45689'),
  ($q$Main$q$,2,$q$Angular$q$,'2955e7f03f0b6eefdbd7086ae6f6db38'),
  ($q$Main$q$,3,$q$Angular$q$,'1df2d9ede1ba12a8c181a557a0052b20'),
  ($q$Main$q$,4,$q$Angular$q$,'cca0830468a11ea72baccec2cb98c58b'),
  ($q$Main$q$,5,$q$Angular$q$,'787f6bfba7ea82451a734f2a4ea4beea'),
  ($q$Main$q$,6,$q$Angular$q$,'caf4945e6f780e41cbc1d6e6bd7709a5'),
  ($q$Main$q$,7,$q$Angular$q$,'2e5eb056529821dd68303bad5d179074'),
  ($q$Main$q$,8,$q$Angular$q$,'3263b5aa964f8a100c37c9f3c38bcf95'),
  ($q$Main$q$,9,$q$Angular$q$,'bd5b6dbf93328e31bcdb86c6dcfa91cc'),
  ($q$Main$q$,10,$q$Angular$q$,'8b95ce4fea618a8f0f40fe9a7880c6b8'),
  ($q$Main$q$,11,$q$Angular$q$,'391f4db113730d0f460d1df4c3dd5194'),
  ($q$Main$q$,12,$q$Angular$q$,'3b4f9f18894e4abdf3542e227b4218b8'),
  ($q$Main$q$,13,$q$Angular$q$,'94f3c03b6ae2c61b27858e2d81b413f2'),
  ($q$Main$q$,14,$q$Angular$q$,'45f2908131043fe73891b33cad8fe7d3'),
  ($q$Main$q$,15,$q$Angular$q$,'7827155999eb6fa64ce91326924cd71e'),
  ($q$Main$q$,16,$q$Angular$q$,'d75ad3dd5b52046360b113f474e08a93'),
  ($q$Main$q$,17,$q$Angular$q$,'4efb3ae58ff8bb6b6d283434dcf60c14'),
  ($q$Main$q$,18,$q$Angular$q$,'e115d99fca5a5d4bb9a8868f9f716353'),
  ($q$Main$q$,19,$q$Angular$q$,'4fb6d9cfcddc468faaad7f87962909f1'),
  ($q$Main$q$,20,$q$Angular$q$,'cb220ff35095b9c673e3711abde8a460')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='angular-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('c-beginner',$q$C Beginner$q$,$q$20 beginner-level questions on C: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$C$q$),'language','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='c-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$C$q$,'0b3a85b63729d2072c6141646306a9d1'),
  ($q$Main$q$,2,$q$C$q$,'1168146f65696aa003444aee25bae428'),
  ($q$Main$q$,3,$q$C$q$,'9be6292e9a9b80ffa79afa233a558f19'),
  ($q$Main$q$,4,$q$C$q$,'bdb7ca9efa5c47fad0afd3d401ae3d63'),
  ($q$Main$q$,5,$q$C$q$,'1d60f3b1f183b1b48743f55f9c305eb4'),
  ($q$Main$q$,6,$q$C$q$,'c37d9866da487be72c59662068d85742'),
  ($q$Main$q$,7,$q$C$q$,'3c00376c555e69eac64b42c5cd26b985'),
  ($q$Main$q$,8,$q$C$q$,'edeb7670005fae652f8895e9139d0c61'),
  ($q$Main$q$,9,$q$C$q$,'be5139917d45ddf2f0902e80924124e9'),
  ($q$Main$q$,10,$q$C$q$,'f78fc36b7940be10fad844ff42e5119d'),
  ($q$Main$q$,11,$q$C$q$,'ddfc481a8453c225c98fe5b7faeab0da'),
  ($q$Main$q$,12,$q$C$q$,'6a034ab518f098336827b180e5f1f114'),
  ($q$Main$q$,13,$q$C$q$,'c2b1bb8f790dcd34b117bafc05d07c90'),
  ($q$Main$q$,14,$q$C$q$,'e5479df2792eab261bf3df55610fb6e7'),
  ($q$Main$q$,15,$q$C$q$,'9420a011e4c5f8d98b4bb4f485cb6c83'),
  ($q$Main$q$,16,$q$C$q$,'c30f8dd6f61b3355513213c901dec709'),
  ($q$Main$q$,17,$q$C$q$,'eda2227b66a59dacf0a7cbfea6413ed2'),
  ($q$Main$q$,18,$q$C$q$,'9f23befa65a15418a777704a41d86d0e'),
  ($q$Main$q$,19,$q$C$q$,'c3ec996b1c4a88f5ed930642b784e2c8'),
  ($q$Main$q$,20,$q$C$q$,'fc772fbd867677772a9823752297d1fb')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='c-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('c-intermediate',$q$C Intermediate$q$,$q$20 intermediate-level questions on C: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$C$q$),'language','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='c-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$C$q$,'1c4099fdcc86ec0817bed2b0a5ab47eb'),
  ($q$Main$q$,2,$q$C$q$,'1d485f93042aba6ae51ce3b80ab3dd21'),
  ($q$Main$q$,3,$q$C$q$,'c39842b04d6644cad3c787cfa8f6ed58'),
  ($q$Main$q$,4,$q$C$q$,'18bde340f987c62cf2c002060799d59d'),
  ($q$Main$q$,5,$q$C$q$,'866945c697e2ed3c7e473c6cf7799090'),
  ($q$Main$q$,6,$q$C$q$,'e0c975a486da26be6f214536d79db9b5'),
  ($q$Main$q$,7,$q$C$q$,'4ae28da91760c1756c6d37c077f437a8'),
  ($q$Main$q$,8,$q$C$q$,'38e6c2cfc85283acb06de48d8066c23a'),
  ($q$Main$q$,9,$q$C$q$,'43645b4f78b8fb69a7eac10db01f7e06'),
  ($q$Main$q$,10,$q$C$q$,'b54b93efcf976b512180cacee45d5f59'),
  ($q$Main$q$,11,$q$C$q$,'5be9727524b3d73d00dffe7870bbd183'),
  ($q$Main$q$,12,$q$C$q$,'aa6328972a51589d21b24778cc31af01'),
  ($q$Main$q$,13,$q$C$q$,'69e0fabf6ee53607eda065a89e099dd1'),
  ($q$Main$q$,14,$q$C$q$,'845f55b7f1339b84da3547ba8b3c6ffe'),
  ($q$Main$q$,15,$q$C$q$,'fd06ebe3082c666a8fb296a03a80b893'),
  ($q$Main$q$,16,$q$C$q$,'e90746e350c3d24c29c80a604b64000c'),
  ($q$Main$q$,17,$q$C$q$,'85a5d209694d320a77c7357b58e561a0'),
  ($q$Main$q$,18,$q$C$q$,'fd375ee7f0a050758b3f07f34415ff39'),
  ($q$Main$q$,19,$q$C$q$,'fdefa7ba1e042237ebcf20c23b093e95'),
  ($q$Main$q$,20,$q$C$q$,'ca374f445dd7a32d21828ef5e8247927')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='c-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('c-advanced',$q$C Advanced$q$,$q$20 advanced-level questions on C: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$C$q$),'language','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='c-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$C$q$,'f9a9be487ae84458d3beb1cda16e8cc2'),
  ($q$Main$q$,2,$q$C$q$,'127efed842ee63a4945981a04ed4a705'),
  ($q$Main$q$,3,$q$C$q$,'0c337dff42333f5ef8e366fe3e782884'),
  ($q$Main$q$,4,$q$C$q$,'c21eaef700a81dafac345747ad5aa08b'),
  ($q$Main$q$,5,$q$C$q$,'38218bd0459fde0fc9e222622ce3c789'),
  ($q$Main$q$,6,$q$C$q$,'4612cb434f1ecd37d94b1daac75aafd1'),
  ($q$Main$q$,7,$q$C$q$,'896c6c3340573f3a20d66bcda6d9169a'),
  ($q$Main$q$,8,$q$C$q$,'547de769d69a5a1a0985d1a31c2bce27'),
  ($q$Main$q$,9,$q$C$q$,'9efc8538a2bc409303fede6618381248'),
  ($q$Main$q$,10,$q$C$q$,'5735c9bc95ac3980687b2b6e45885b99'),
  ($q$Main$q$,11,$q$C$q$,'fc8e20421846eb6824404eace5bde805'),
  ($q$Main$q$,12,$q$C$q$,'6e2e277b654365905d52948bd178a6fb'),
  ($q$Main$q$,13,$q$C$q$,'7c5a07e88684536dee1dbd591ce5b4ed'),
  ($q$Main$q$,14,$q$C$q$,'7d5c687b1c64dcd93ec2b63dc186a05d'),
  ($q$Main$q$,15,$q$C$q$,'7f34d44e11e30c63e695756acfabacac'),
  ($q$Main$q$,16,$q$C$q$,'90e4c19e33a897c634f5a4a59877b3a0'),
  ($q$Main$q$,17,$q$C$q$,'93b28ddfb975c53dea5c6f90afb143ca'),
  ($q$Main$q$,18,$q$C$q$,'9e7cf2b071bc7a589b042578e8b166bd'),
  ($q$Main$q$,19,$q$C$q$,'b28e74797d9d2ad2a2f66ae8700256da'),
  ($q$Main$q$,20,$q$C$q$,'e774f01580f44c0e8b4fa8873dace20c')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='c-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('cpp-beginner',$q$C++ Beginner$q$,$q$20 beginner-level questions on C++: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$C++$q$),'language','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='cpp-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$C++$q$,'3f78eb6d2ac3b5c45af8295e79fda5bf'),
  ($q$Main$q$,2,$q$C++$q$,'461aff6a5f821b51f093d0280d693b9d'),
  ($q$Main$q$,3,$q$C++$q$,'5d86ce5904d19e6917236d26759cef5c'),
  ($q$Main$q$,4,$q$C++$q$,'0208daeb299d2dc9af07155d0e41cda4'),
  ($q$Main$q$,5,$q$C++$q$,'09f59ecf5a24f6e96e7b2d8daeb96622'),
  ($q$Main$q$,6,$q$C++$q$,'66da2524d9a7529042e598c53e032cd7'),
  ($q$Main$q$,7,$q$C++$q$,'52425d2fde16d4ae656f2083292515f0'),
  ($q$Main$q$,8,$q$C++$q$,'2fa22703181baeb6ea463e644193ddd7'),
  ($q$Main$q$,9,$q$C++$q$,'3e414bf75925125cbffb3117a94e1c2d'),
  ($q$Main$q$,10,$q$C++$q$,'d5d93b39a683e6ef029d95751e27bbc7'),
  ($q$Main$q$,11,$q$C++$q$,'79fee9a5fbc8ec600c9b28d4cbb021d7'),
  ($q$Main$q$,12,$q$C++$q$,'72505448efa092a0c93e2c1d0f587264'),
  ($q$Main$q$,13,$q$C++$q$,'766e02aa212b3cf11c823cd2babdb069'),
  ($q$Main$q$,14,$q$C++$q$,'be27de05fc9ca78e8efb446e629a2dc2'),
  ($q$Main$q$,15,$q$C++$q$,'843ce1393778e374eb844a519af2c046'),
  ($q$Main$q$,16,$q$C++$q$,'956355946cc008b3a0f399dcae3376bf'),
  ($q$Main$q$,17,$q$C++$q$,'de9c8e22731ab67d1ffec3fadf04da97'),
  ($q$Main$q$,18,$q$C++$q$,'8ee60fbdd7a1521a924298091a99aa26'),
  ($q$Main$q$,19,$q$C++$q$,'bd81df12be5cc63fa952f48830bb2e0d'),
  ($q$Main$q$,20,$q$C++$q$,'f57d69b84ff7fd2e11457eb2ec358f07')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='cpp-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('cpp-intermediate',$q$C++ Intermediate$q$,$q$20 intermediate-level questions on C++: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$C++$q$),'language','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='cpp-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$C++$q$,'26350df14eca052ffa872b078e16db5c'),
  ($q$Main$q$,2,$q$C++$q$,'13e83bd28f1094ffc76265454a8dfd5d'),
  ($q$Main$q$,3,$q$C++$q$,'6483ea157912b43ea7164bb3f5563307'),
  ($q$Main$q$,4,$q$C++$q$,'0093eb36c0202729459e2a432816acea'),
  ($q$Main$q$,5,$q$C++$q$,'6d7c69a114ff7eaf1c5c7faf6852dbbc'),
  ($q$Main$q$,6,$q$C++$q$,'1b2099977c4ea9b0b26ab8b70d59beae'),
  ($q$Main$q$,7,$q$C++$q$,'64dfdc167f47b62d3eb7fe9afd6fa4f5'),
  ($q$Main$q$,8,$q$C++$q$,'2775969617f73d1da93dd012631bb8b7'),
  ($q$Main$q$,9,$q$C++$q$,'ac7e656ad22e17be67e207e1b5f4ea8c'),
  ($q$Main$q$,10,$q$C++$q$,'2e0c40978012d68e2569db8675735a66'),
  ($q$Main$q$,11,$q$C++$q$,'b5761269d5fd6f97d6eae14b9f418688'),
  ($q$Main$q$,12,$q$C++$q$,'342803baa0839b020537e29e83b1aa19'),
  ($q$Main$q$,13,$q$C++$q$,'70e8ef4c847b0e3877c04325e22b25ff'),
  ($q$Main$q$,14,$q$C++$q$,'e7580eed8c4f8d0ac5d395eb04980642'),
  ($q$Main$q$,15,$q$C++$q$,'544f0861301bb1e81d13495ef64b07ea'),
  ($q$Main$q$,16,$q$C++$q$,'9ec7a70536e82e3e23151d065d95e7ad'),
  ($q$Main$q$,17,$q$C++$q$,'eda19fad4c74a912c1a648a0ad459b2f'),
  ($q$Main$q$,18,$q$C++$q$,'579bb0fcb73bf6a2c14652994a08cd3f'),
  ($q$Main$q$,19,$q$C++$q$,'96df86a9c98e33c884056f42fd85497c'),
  ($q$Main$q$,20,$q$C++$q$,'9c7c183c7f3326957582db44af6830a3')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='cpp-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('cpp-advanced',$q$C++ Advanced$q$,$q$20 advanced-level questions on C++: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$C++$q$),'language','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='cpp-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$C++$q$,'1f3e7dcae1de464c5f3d6c3c77706d12'),
  ($q$Main$q$,2,$q$C++$q$,'1843cf9a4f3766c46778c9d557190c0a'),
  ($q$Main$q$,3,$q$C++$q$,'a0b1a17fd61c6aaa1a9902dda53ccd4b'),
  ($q$Main$q$,4,$q$C++$q$,'3e6b8ea7b86f1a0bf808aacba1f39476'),
  ($q$Main$q$,5,$q$C++$q$,'e60208dd16a774076f5ac8406d9b2da9'),
  ($q$Main$q$,6,$q$C++$q$,'1a0000e1cdafea8356166361c6ba5894'),
  ($q$Main$q$,7,$q$C++$q$,'b0909a839a9801c8a8fd5cbcbd785122'),
  ($q$Main$q$,8,$q$C++$q$,'53ad52089193631e7dd8bcb1782f19f8'),
  ($q$Main$q$,9,$q$C++$q$,'689c48a943c87e210f1907d8f7563b8d'),
  ($q$Main$q$,10,$q$C++$q$,'73193beaddc9048641b92a8288f14441'),
  ($q$Main$q$,11,$q$C++$q$,'744195a7a9a7250643174d437706b9d9'),
  ($q$Main$q$,12,$q$C++$q$,'79b9184b669d815c26a9993582462e76'),
  ($q$Main$q$,13,$q$C++$q$,'7fd62eb63e71f006e50173d45a683024'),
  ($q$Main$q$,14,$q$C++$q$,'83b264a0bac7c7df8de3ba8f324db0bd'),
  ($q$Main$q$,15,$q$C++$q$,'9f3585196e8bea01e1c375cae5b1ff48'),
  ($q$Main$q$,16,$q$C++$q$,'a72f4aedd1f24a5b165859d3b3a926f6'),
  ($q$Main$q$,17,$q$C++$q$,'c758af6f1c2a9b0ac264dce025b16823'),
  ($q$Main$q$,18,$q$C++$q$,'d8c489410992e10182e7a09dfb213af7'),
  ($q$Main$q$,19,$q$C++$q$,'f42821facc65f129d843281e20c92ce1'),
  ($q$Main$q$,20,$q$C++$q$,'f93ed55994dc44d799d3b5b09962a321')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='cpp-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('java-beginner',$q$Java Beginner$q$,$q$20 beginner-level questions on Java: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Java$q$),'language','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='java-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Java$q$,'5b5a3d33b458200f43747a4d7a689e2c'),
  ($q$Main$q$,2,$q$Java$q$,'60b36e99a54f473d101dabcdaffecd8c'),
  ($q$Main$q$,3,$q$Java$q$,'4f34127be196afc8afbd8f3e67a76a67'),
  ($q$Main$q$,4,$q$Java$q$,'342093d6a6bf7d04dfa2e1fa7ced5e80'),
  ($q$Main$q$,5,$q$Java$q$,'04cf15daa956a91d4a570bef25aba52b'),
  ($q$Main$q$,6,$q$Java$q$,'3ae6bc10b777cf75ec2fdd69b1e6b118'),
  ($q$Main$q$,7,$q$Java$q$,'0a00cb752e724c49cf45abe56b11aa9d'),
  ($q$Main$q$,8,$q$Java$q$,'4a2890481274038fb7cf10960bb762fb'),
  ($q$Main$q$,9,$q$Java$q$,'105e3b376e485466c6fdf9657d37e539'),
  ($q$Main$q$,10,$q$Java$q$,'14f33d3b65c3396d3113089848ceeaa8'),
  ($q$Main$q$,11,$q$Java$q$,'1c33ac9274437c79a2c1f7a8ff8011c0'),
  ($q$Main$q$,12,$q$Java$q$,'1c3f94a6315c676d7da3fc7d74824f2f'),
  ($q$Main$q$,13,$q$Java$q$,'680971aea829074b5be4578df1252ce8'),
  ($q$Main$q$,14,$q$Java$q$,'6bd271c996eb941c2607e05335c4ba69'),
  ($q$Main$q$,15,$q$Java$q$,'72659634b93abf1a984c1e2b198e2ea4'),
  ($q$Main$q$,16,$q$Java$q$,'77d2561b4dd1a74f02f818ad7fc4b757'),
  ($q$Main$q$,17,$q$Java$q$,'9e3e25b43d156f42006a5f551e7c205e'),
  ($q$Main$q$,18,$q$Java$q$,'bf1035ada273cdd3d0adf97ab720a25a'),
  ($q$Main$q$,19,$q$Java$q$,'cf74889d0b0e24c08b41ee1ae55f21bb'),
  ($q$Main$q$,20,$q$Java$q$,'e317fac2301cab9a26d7e415c811e43d')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='java-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('java-intermediate',$q$Java Intermediate$q$,$q$20 intermediate-level questions on Java: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Java$q$),'language','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='java-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Java$q$,'7ced63d4d4df1b8417bfed07595c0d36'),
  ($q$Main$q$,2,$q$Java$q$,'0f94f5617223cc80594893072d7872c3'),
  ($q$Main$q$,3,$q$Java$q$,'87699ef03630453af2563273426c0b9a'),
  ($q$Main$q$,4,$q$Java$q$,'05fbfc25367fd6b9f245feb5fc42c8bb'),
  ($q$Main$q$,5,$q$Java$q$,'11cf0d4c7a9dbfa62f053b4bee4325fb'),
  ($q$Main$q$,6,$q$Java$q$,'ca3c1c8392118d7b725f5dd4231fff33'),
  ($q$Main$q$,7,$q$Java$q$,'2041e82840cfdee94bc14adf8031d5b4'),
  ($q$Main$q$,8,$q$Java$q$,'c56f6de3e84ba0a2746fc68d53201e00'),
  ($q$Main$q$,9,$q$Java$q$,'106018312054e89e634a73c2fe2b2c81'),
  ($q$Main$q$,10,$q$Java$q$,'14665f09a8513ee4dd4c5f052d9d1934'),
  ($q$Main$q$,11,$q$Java$q$,'549d1e9712caa1cf626e6d7ef6ee711b'),
  ($q$Main$q$,12,$q$Java$q$,'1f3ede350a6b7dcb2dd5f9ab87194fe3'),
  ($q$Main$q$,13,$q$Java$q$,'bb67a2acfc3736f10e90c6c9b63b2378'),
  ($q$Main$q$,14,$q$Java$q$,'3d3a0fc9f6e639949edbfa0fee8684c6'),
  ($q$Main$q$,15,$q$Java$q$,'e0ea60633a1e8a9593e0eddad7cdade6'),
  ($q$Main$q$,16,$q$Java$q$,'4cfa3181a257ce424c4ec283723a7fa2'),
  ($q$Main$q$,17,$q$Java$q$,'651ef195d782a0fbf2317bef8b3a8e11'),
  ($q$Main$q$,18,$q$Java$q$,'b8959c6716b91ce1e1d3b942046f31ad'),
  ($q$Main$q$,19,$q$Java$q$,'f3fa1b3a525f239204cb78ec2a3d74b0'),
  ($q$Main$q$,20,$q$Java$q$,'fc772fbd867677772a9823752297d1fb')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='java-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('java-advanced',$q$Java Advanced$q$,$q$20 advanced-level questions on Java: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Java$q$),'language','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='java-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Java$q$,'81fab82f56fbace85e6193494762a5b0'),
  ($q$Main$q$,2,$q$Java$q$,'05b136aef860d767672db367425a47fa'),
  ($q$Main$q$,3,$q$Java$q$,'29053110e3873a1a15b2d65f992ddb4d'),
  ($q$Main$q$,4,$q$Java$q$,'0e304b05c96f2c7d4650e61a9aba909f'),
  ($q$Main$q$,5,$q$Java$q$,'0e7cebf9420223e4bb1e697f20d15c83'),
  ($q$Main$q$,6,$q$Java$q$,'1eb75ffc26bf55286e359daf9a057df1'),
  ($q$Main$q$,7,$q$Java$q$,'9edb32cb3927ede38bf874bf4e42d1b2'),
  ($q$Main$q$,8,$q$Java$q$,'6a56d393b47c5e69c7e93d46444bb816'),
  ($q$Main$q$,9,$q$Java$q$,'2c18f3d2d2ca5929b5d0de159f35f327'),
  ($q$Main$q$,10,$q$Java$q$,'53fad28211acccbfc72c500d912105c8'),
  ($q$Main$q$,11,$q$Java$q$,'65d3452bf63e3b8fa8cebccf7964ad89'),
  ($q$Main$q$,12,$q$Java$q$,'1fca8982b58056b44af0084dcab65ec9'),
  ($q$Main$q$,13,$q$Java$q$,'8aed7607c86ffaaf57729e2b2a5b2897'),
  ($q$Main$q$,14,$q$Java$q$,'305a1976bb17f9b02a8cb0d62b2646fa'),
  ($q$Main$q$,15,$q$Java$q$,'a91a85de2ffb0c06a68b48bfe5dd947d'),
  ($q$Main$q$,16,$q$Java$q$,'e4df84fac6955e540827dba2d69bac21'),
  ($q$Main$q$,17,$q$Java$q$,'670ad23e0319b6ad0de88517590329b7'),
  ($q$Main$q$,18,$q$Java$q$,'eee8919da36bc054ce3d4795bc237f24'),
  ($q$Main$q$,19,$q$Java$q$,'98f540aa5bcf56bbbcc8ed9f2ff78f3a'),
  ($q$Main$q$,20,$q$Java$q$,'8d9ae024925396c485b44d32ab2f154f')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='java-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('python-beginner',$q$Python Beginner$q$,$q$20 beginner-level questions on Python: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Python$q$),'language','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='python-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Python$q$,'fc77446eff4cee36a5be09b9ce1ccd03'),
  ($q$Main$q$,2,$q$Python$q$,'100ca533dfa7a9769e3b3ade2e2f1002'),
  ($q$Main$q$,3,$q$Python$q$,'c265840e1b8069a420d46f5d2f6d363e'),
  ($q$Main$q$,4,$q$Python$q$,'64f5df2b5ad73d0635061b7802c9da0b'),
  ($q$Main$q$,5,$q$Python$q$,'0e71d9a580008d27a05356024c3e7ed2'),
  ($q$Main$q$,6,$q$Python$q$,'f01408f23707955d8191d4f863b7eb20'),
  ($q$Main$q$,7,$q$Python$q$,'0f3708952935c854c92860a7fb3a50e5'),
  ($q$Main$q$,8,$q$Python$q$,'27df0f53ed3755c676ecc73b64c6e87a'),
  ($q$Main$q$,9,$q$Python$q$,'2a90af5082bc18233494cf921dde09f0'),
  ($q$Main$q$,10,$q$Python$q$,'3d4ac556bddd02340920d0c2706509f4'),
  ($q$Main$q$,11,$q$Python$q$,'42ce4dfd7361cc6f558aabfe080bbab1'),
  ($q$Main$q$,12,$q$Python$q$,'59054b9609c0750da1369499ca6f01ca'),
  ($q$Main$q$,13,$q$Python$q$,'64aa544454fc39d196e8580492f61a21'),
  ($q$Main$q$,14,$q$Python$q$,'7f09f19bfbd09c768fecd2968eb96c46'),
  ($q$Main$q$,15,$q$Python$q$,'9162d208047da0efedf936bb4d041117'),
  ($q$Main$q$,16,$q$Python$q$,'96e52147f84e3eddfe1671818922cff4'),
  ($q$Main$q$,17,$q$Python$q$,'e8d0bb146220d2c1c0446e55df65e444'),
  ($q$Main$q$,18,$q$Python$q$,'ea80a0a05ef00752009b080ab555330e'),
  ($q$Main$q$,19,$q$Python$q$,'f21199ed9256d5dcce2367381af5f317'),
  ($q$Main$q$,20,$q$Python$q$,'f7e512539a0e515244d2581efc0b3a01')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='python-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('python-intermediate',$q$Python Intermediate$q$,$q$20 intermediate-level questions on Python: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Python$q$),'language','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='python-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Python$q$,'0b2fd9c44ffd8df190d39a3afb5f8d4b'),
  ($q$Main$q$,2,$q$Python$q$,'05ae0f8100ec1fa571ddc2c4d790f3f0'),
  ($q$Main$q$,3,$q$Python$q$,'2366fd21f01d011a9818996105cf94b3'),
  ($q$Main$q$,4,$q$Python$q$,'18ddb835e3c59cf7963f66153ecaa593'),
  ($q$Main$q$,5,$q$Python$q$,'297b14512ccfbf2734278f4a8832ff65'),
  ($q$Main$q$,6,$q$Python$q$,'3f33c853cc43c839d92a90b1f47b3e47'),
  ($q$Main$q$,7,$q$Python$q$,'f721ae32050c4766ccd9d2b742e39cee'),
  ($q$Main$q$,8,$q$Python$q$,'c31680c7b5e6b3373e14a7a4d401a80e'),
  ($q$Main$q$,9,$q$Python$q$,'cc454c4b5ef9b80caa0fba5b9a45e657'),
  ($q$Main$q$,10,$q$Python$q$,'39fc3eb4b7ca62a0f9a0503705cf9f10'),
  ($q$Main$q$,11,$q$Python$q$,'4c16017e9ca3b43c76e30fb8f09096d7'),
  ($q$Main$q$,12,$q$Python$q$,'3d5b5cbffcaefa6097efecabb2825a55'),
  ($q$Main$q$,13,$q$Python$q$,'4d9899265f8d48df35bab689bc360875'),
  ($q$Main$q$,14,$q$Python$q$,'6eb8f71be38cb98c4b1cb16e1c1bb3fa'),
  ($q$Main$q$,15,$q$Python$q$,'632eef01a246925df74f5b147c2b33af'),
  ($q$Main$q$,16,$q$Python$q$,'e41e149b69b7f18ccea856ad8b723d78'),
  ($q$Main$q$,17,$q$Python$q$,'7b38c6ff73bcf9ce2779a7d5a831f3a0'),
  ($q$Main$q$,18,$q$Python$q$,'95fdbeb38e8e142463d84dd19a9b9252'),
  ($q$Main$q$,19,$q$Python$q$,'9c6ddc9668c7691afb8391deae592ecc'),
  ($q$Main$q$,20,$q$Python$q$,'a16e9767a9bf9c0d75c2bf0c3b3891f3')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='python-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('python-advanced',$q$Python Advanced$q$,$q$20 advanced-level questions on Python: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$Python$q$),'language','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='python-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$Python$q$,'cb9740646e1f9cd588b7459cdaf31f94'),
  ($q$Main$q$,2,$q$Python$q$,'2b4eb913799924d6b42d25e98ea618a9'),
  ($q$Main$q$,3,$q$Python$q$,'304b9eeb74ab287487a76d2f2f170e36'),
  ($q$Main$q$,4,$q$Python$q$,'00085b573298fe32f8b5e64042738fb2'),
  ($q$Main$q$,5,$q$Python$q$,'6dcc8de0ce2298987c36e0e6e1236082'),
  ($q$Main$q$,6,$q$Python$q$,'691f7da65940c025a27c8b86fb610bac'),
  ($q$Main$q$,7,$q$Python$q$,'30a1f7050f8d41e5585078c6b52b4468'),
  ($q$Main$q$,8,$q$Python$q$,'1cf1535d067bdea9321a22b086b19b7e'),
  ($q$Main$q$,9,$q$Python$q$,'ea7c9d2dd1e3e47e046c57ec96bf78a5'),
  ($q$Main$q$,10,$q$Python$q$,'33dff4a44b45a3c3c02e91038f313d31'),
  ($q$Main$q$,11,$q$Python$q$,'656e5d24e62307356c822b336a561953'),
  ($q$Main$q$,12,$q$Python$q$,'7a88b84b50c65501a5c3f8564eb3f59f'),
  ($q$Main$q$,13,$q$Python$q$,'71c5f5887c8f3af4e8472bc8719fd7d6'),
  ($q$Main$q$,14,$q$Python$q$,'896b92c56a532d95c7c86e8132cefbe6'),
  ($q$Main$q$,15,$q$Python$q$,'9d0e7916e392c583164957c55e421869'),
  ($q$Main$q$,16,$q$Python$q$,'f40ac9aa5ac5d316695ffd853d759f87'),
  ($q$Main$q$,17,$q$Python$q$,'c26f3a853d81f6fe4818598f502d65f4'),
  ($q$Main$q$,18,$q$Python$q$,'ceaacb09b5f48cbac1271a66e25f53fc'),
  ($q$Main$q$,19,$q$Python$q$,'ee5c37f4a8dbadebab4397a78bdffa16'),
  ($q$Main$q$,20,$q$Python$q$,'f557a98e31f37d4c24af9c0f1513d864')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='python-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('csharp-beginner',$q$C# Beginner$q$,$q$20 beginner-level questions on C#: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$C#$q$),'language','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='csharp-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$C#$q$,'52a05494456bc070debc3998b92dada3'),
  ($q$Main$q$,2,$q$C#$q$,'43c691b3fd43561ac0ec87a585502596'),
  ($q$Main$q$,3,$q$C#$q$,'0b5b35a160cf46ac2461bf7782f3a2ea'),
  ($q$Main$q$,4,$q$C#$q$,'0149f85e917c2481ee2f00c8093206aa'),
  ($q$Main$q$,5,$q$C#$q$,'0c836bdde0ea0c94ab54a0d41717382b'),
  ($q$Main$q$,6,$q$C#$q$,'92d7db583cfb3e3b8e0974795dc01c28'),
  ($q$Main$q$,7,$q$C#$q$,'484ab6fe5ccbdeca93a307acd9b0b8c4'),
  ($q$Main$q$,8,$q$C#$q$,'1e629cf12a648b32d251d3f535def35d'),
  ($q$Main$q$,9,$q$C#$q$,'4dfb9eec5caa2c5ceab59926bd43f07f'),
  ($q$Main$q$,10,$q$C#$q$,'ba7a0b88148e97135cabb591bca8f57f'),
  ($q$Main$q$,11,$q$C#$q$,'487aa5b2958c37fe1e22ba80039f1864'),
  ($q$Main$q$,12,$q$C#$q$,'6f8a4f641fa9beee857414d824dd9c04'),
  ($q$Main$q$,13,$q$C#$q$,'f08b42da6497b138b4a85a781e1cbf90'),
  ($q$Main$q$,14,$q$C#$q$,'51476cccd3e9be9dfafda7b6ada885c4'),
  ($q$Main$q$,15,$q$C#$q$,'65ff127ff56bc8b9555df2fe85a37a0b'),
  ($q$Main$q$,16,$q$C#$q$,'790a703e2a113a86d6699d73966b5eb3'),
  ($q$Main$q$,17,$q$C#$q$,'874ba4846a41caf477c70bff00d8221e'),
  ($q$Main$q$,18,$q$C#$q$,'ab2135ff1ecab0d0e0219377af73bc57'),
  ($q$Main$q$,19,$q$C#$q$,'beb4ac962575952032ae268beca553e2'),
  ($q$Main$q$,20,$q$C#$q$,'dbf84a1318bc17646860acfb8a791c00')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='csharp-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('csharp-intermediate',$q$C# Intermediate$q$,$q$20 intermediate-level questions on C#: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$C#$q$),'language','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='csharp-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$C#$q$,'4aaa9eb425b6c6c9b9925ce95cde4e4d'),
  ($q$Main$q$,2,$q$C#$q$,'a4582f21bb1d49f308126fc4ebcbec82'),
  ($q$Main$q$,3,$q$C#$q$,'fbaf2dc6bdac7643392824bae1b8480b'),
  ($q$Main$q$,4,$q$C#$q$,'09832e021a37b89c8825348f9d1ebe29'),
  ($q$Main$q$,5,$q$C#$q$,'1b38c915eee9c8d904cfa9f7699e47cf'),
  ($q$Main$q$,6,$q$C#$q$,'2313c69f33257b0d3d682d2dbe930d74'),
  ($q$Main$q$,7,$q$C#$q$,'cfd0de2c921effff2415279b891899ba'),
  ($q$Main$q$,8,$q$C#$q$,'37b73934c988fbc06f03981a10937a81'),
  ($q$Main$q$,9,$q$C#$q$,'209d3ba85916afa54f340a783878fe63'),
  ($q$Main$q$,10,$q$C#$q$,'2e64085d69af8987e663d955e8f7509b'),
  ($q$Main$q$,11,$q$C#$q$,'df272fba39a4db04c5ea57c71cb3d8d4'),
  ($q$Main$q$,12,$q$C#$q$,'b9e000764f21bbb4aba556293e4e2516'),
  ($q$Main$q$,13,$q$C#$q$,'6c4eba131cc0230c6030fa6462d25360'),
  ($q$Main$q$,14,$q$C#$q$,'a2cd768e263a40ab4fad58290998d46e'),
  ($q$Main$q$,15,$q$C#$q$,'e7b7247af978720f684cb24d890421f1'),
  ($q$Main$q$,16,$q$C#$q$,'fe54a315ea2fb9f236088413a0e78647'),
  ($q$Main$q$,17,$q$C#$q$,'93541f2e514cf91332ef15121e94af2f'),
  ($q$Main$q$,18,$q$C#$q$,'e0db77083039d87831ece38983cd017e'),
  ($q$Main$q$,19,$q$C#$q$,'94e2055464674ce8ec4d6f7365e160ae'),
  ($q$Main$q$,20,$q$C#$q$,'ba99f069f03ca7121aff19213d49e7d9')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='csharp-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('csharp-advanced',$q$C# Advanced$q$,$q$20 advanced-level questions on C#: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$C#$q$),'language','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='csharp-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$C#$q$,'19af0240d8c31641f02692d094fe449e'),
  ($q$Main$q$,2,$q$C#$q$,'06b1e1dac232d7ede713351b20df5f19'),
  ($q$Main$q$,3,$q$C#$q$,'8e9b40332f354b5cc4917e20050052cc'),
  ($q$Main$q$,4,$q$C#$q$,'fd4db5488a19970e9730341d235fa7cf'),
  ($q$Main$q$,5,$q$C#$q$,'3d493556c3bf26bfadb3d94a53ab2517'),
  ($q$Main$q$,6,$q$C#$q$,'96fd68ac06e0d10f995dd600d1bd11a8'),
  ($q$Main$q$,7,$q$C#$q$,'ba39dd296d064e117010071a780289a8'),
  ($q$Main$q$,8,$q$C#$q$,'5b4572d8be75b0712d98074f875bdcba'),
  ($q$Main$q$,9,$q$C#$q$,'a97f1d95fd604b19b8a2a303b0b27abc'),
  ($q$Main$q$,10,$q$C#$q$,'5d4da21f08c70d2822bd20687ae7422b'),
  ($q$Main$q$,11,$q$C#$q$,'a5d950da9267f5745f45d8295b6f12bb'),
  ($q$Main$q$,12,$q$C#$q$,'c87ee49f3c461fade9a5ad191c7d235d'),
  ($q$Main$q$,13,$q$C#$q$,'c07917e53f03515edfebe3bbaf4e0b80'),
  ($q$Main$q$,14,$q$C#$q$,'7bd36e844018de4aee3105194e86a499'),
  ($q$Main$q$,15,$q$C#$q$,'ab5f64fa4f43f4ca4042bf23b8cf7e6b'),
  ($q$Main$q$,16,$q$C#$q$,'ec8dd8f20af9002f8dd098c9d17428ee'),
  ($q$Main$q$,17,$q$C#$q$,'bfd5c2d35ad19868e99cd90efbb6732f'),
  ($q$Main$q$,18,$q$C#$q$,'f1cc5bd6554a88c7500686e68c84be2d'),
  ($q$Main$q$,19,$q$C#$q$,'c3a79669178d6b1310dd1b6a85d45bab'),
  ($q$Main$q$,20,$q$C#$q$,'f8ad300ec82a6168bee16a53bb7265ef')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='csharp-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('mongodb-beginner',$q$MongoDB Beginner$q$,$q$20 beginner-level questions on MongoDB: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$MongoDB$q$),'database','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='mongodb-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$MongoDB$q$,'014b7e895c4a445634172ff2c278a2c7'),
  ($q$Main$q$,2,$q$MongoDB$q$,'729840717d271635a38aeb870e80ab56'),
  ($q$Main$q$,3,$q$MongoDB$q$,'2781493649ab6733aaed1839e97dc7c1'),
  ($q$Main$q$,4,$q$MongoDB$q$,'06631aa1a29db5b9fb0fdbde2ef59746'),
  ($q$Main$q$,5,$q$MongoDB$q$,'9bb600064a47598614fb07bf5092ff44'),
  ($q$Main$q$,6,$q$MongoDB$q$,'8cb12212b4e0d5043f4102a5dcc64727'),
  ($q$Main$q$,7,$q$MongoDB$q$,'6eb8808bc0e64ef1ce2688f8f480e5da'),
  ($q$Main$q$,8,$q$MongoDB$q$,'e55f333724a9ba89ae4c6caacf63a352'),
  ($q$Main$q$,9,$q$MongoDB$q$,'c6bcb526ba75aed8dd02e419c93d2661'),
  ($q$Main$q$,10,$q$MongoDB$q$,'78eff92bcc68194a7bd9ded3360e46b4'),
  ($q$Main$q$,11,$q$MongoDB$q$,'ddbb6f05afda196bc28a53ae990f17e7'),
  ($q$Main$q$,12,$q$MongoDB$q$,'8738727c40f0b86e920dbd643374a358'),
  ($q$Main$q$,13,$q$MongoDB$q$,'8a99fc13335d57f384852c3182123888'),
  ($q$Main$q$,14,$q$MongoDB$q$,'a138023c7e7aadb2cab1eb837bad2dcb'),
  ($q$Main$q$,15,$q$MongoDB$q$,'c25722d1a18a6b97ebfa4f9f0be772f2'),
  ($q$Main$q$,16,$q$MongoDB$q$,'d593dcfd936d8a2ded135e152f311048'),
  ($q$Main$q$,17,$q$MongoDB$q$,'dcc18263ee5520a237df5d3bb7cabf52'),
  ($q$Main$q$,18,$q$MongoDB$q$,'e09baad7733227d104ff6caee234b8a4'),
  ($q$Main$q$,19,$q$MongoDB$q$,'e10afe2830d8e0e84a0a67eb47b470da'),
  ($q$Main$q$,20,$q$MongoDB$q$,'e215e6b54578bf142753e43769e693f6')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='mongodb-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('mongodb-intermediate',$q$MongoDB Intermediate$q$,$q$20 intermediate-level questions on MongoDB: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$MongoDB$q$),'database','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='mongodb-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$MongoDB$q$,'59b21e3779842382d73afb1b1604fb98'),
  ($q$Main$q$,2,$q$MongoDB$q$,'1558dbdfc32583c02849f4ecdc4306ac'),
  ($q$Main$q$,3,$q$MongoDB$q$,'726020cbda5c9625320a78dc27face7e'),
  ($q$Main$q$,4,$q$MongoDB$q$,'08d3682bf35f430194b9901416c1df74'),
  ($q$Main$q$,5,$q$MongoDB$q$,'1126be26ea759d263ad4ef1650aec973'),
  ($q$Main$q$,6,$q$MongoDB$q$,'9bf16fe6155f604ea49b8dc492077b9d'),
  ($q$Main$q$,7,$q$MongoDB$q$,'5e50d429be045c7fa92c17f1d4625b21'),
  ($q$Main$q$,8,$q$MongoDB$q$,'c65093bb8c5e29b0404ef6bceec63efa'),
  ($q$Main$q$,9,$q$MongoDB$q$,'23db1550ac0bc837604e3fe6cedb3071'),
  ($q$Main$q$,10,$q$MongoDB$q$,'c73a07d966b9539bcfb87be2edaa42fa'),
  ($q$Main$q$,11,$q$MongoDB$q$,'9eceba66c760bd047f26d315ab2c8ee5'),
  ($q$Main$q$,12,$q$MongoDB$q$,'df2891eb3626bac6afa896945708f093'),
  ($q$Main$q$,13,$q$MongoDB$q$,'2b62386601a8dec3c3d56eeb08df245b'),
  ($q$Main$q$,14,$q$MongoDB$q$,'e3ac52b5a93041a6d5ff3aaecece8d7d'),
  ($q$Main$q$,15,$q$MongoDB$q$,'a1904091fbbf5e0df608aaa1f9dc5320'),
  ($q$Main$q$,16,$q$MongoDB$q$,'fca7f940826ea9884083a10256867bcb'),
  ($q$Main$q$,17,$q$MongoDB$q$,'913cd15c631b8dee26b34ff1fc00251c'),
  ($q$Main$q$,18,$q$MongoDB$q$,'a8e2240bd159c2f93e56366bbfa3a8fb'),
  ($q$Main$q$,19,$q$MongoDB$q$,'fdfda366a34136abbed27f3704bd98c5'),
  ($q$Main$q$,20,$q$MongoDB$q$,'d4700acadf03489abc1954bf3a955710')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='mongodb-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('mongodb-advanced',$q$MongoDB Advanced$q$,$q$20 advanced-level questions on MongoDB: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$MongoDB$q$),'database','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='mongodb-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$MongoDB$q$,'40c3543b8c30cb8535fe572a12496e96'),
  ($q$Main$q$,2,$q$MongoDB$q$,'870d70b3f2372c8e5a732cf6b18ebb47'),
  ($q$Main$q$,3,$q$MongoDB$q$,'40fba79ba787f332403cc87f4f780fdc'),
  ($q$Main$q$,4,$q$MongoDB$q$,'41c84cbb8e1433fc279e177f7d76ab03'),
  ($q$Main$q$,5,$q$MongoDB$q$,'21a7c87d5170f724b559f970751a720c'),
  ($q$Main$q$,6,$q$MongoDB$q$,'362718d060296b273533d48e7444bfba'),
  ($q$Main$q$,7,$q$MongoDB$q$,'52cfa154c8e1445e96c2bf08e7fe69a0'),
  ($q$Main$q$,8,$q$MongoDB$q$,'415b9a8328f3baba96f5f5853675b4b6'),
  ($q$Main$q$,9,$q$MongoDB$q$,'4ea8d488835a296cb1c272f270e818df'),
  ($q$Main$q$,10,$q$MongoDB$q$,'ad6d0d29a9fe08776106bcee154f33cd'),
  ($q$Main$q$,11,$q$MongoDB$q$,'5b35e06d2bcfcc32f32bdd4d6543e6a9'),
  ($q$Main$q$,12,$q$MongoDB$q$,'ba11621691498c854ebd08b0a9300e8f'),
  ($q$Main$q$,13,$q$MongoDB$q$,'9c7967e102ed4e45f8dc7a621269e5ad'),
  ($q$Main$q$,14,$q$MongoDB$q$,'89810f964f3bc364e3157969f43af545'),
  ($q$Main$q$,15,$q$MongoDB$q$,'d03e2f4f84d782a736e57578e85f5207'),
  ($q$Main$q$,16,$q$MongoDB$q$,'c873b059f9dae0e74452426f9051a5f2'),
  ($q$Main$q$,17,$q$MongoDB$q$,'d3a290a7a9092e0a0345dd26b1c2f43b'),
  ($q$Main$q$,18,$q$MongoDB$q$,'c60d7514663f12abcbc23345b7d82ec1'),
  ($q$Main$q$,19,$q$MongoDB$q$,'edd208a66e7b0862dd5f2c665a8025d3'),
  ($q$Main$q$,20,$q$MongoDB$q$,'dfd0b5936bf5108f7df015b8877e8ab6')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='mongodb-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('sql-beginner',$q$SQL & Databases Beginner$q$,$q$20 beginner-level questions on SQL & Databases: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$SQL & Databases$q$),'database','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='sql-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$SQL & Databases$q$,'05fbb57a11541582eaa48a06d596b4d8'),
  ($q$Main$q$,2,$q$SQL & Databases$q$,'24ec0d0e1215b32d4437f9e48cb34051'),
  ($q$Main$q$,3,$q$SQL & Databases$q$,'219b02960c80e8be23977f845705d4a6'),
  ($q$Main$q$,4,$q$SQL & Databases$q$,'7207a3cee024a03cb5fe7cd80abf3298'),
  ($q$Main$q$,5,$q$SQL & Databases$q$,'9770ffc89261654ef9ae952e72776f6b'),
  ($q$Main$q$,6,$q$SQL & Databases$q$,'2a8848d1d14253bedb588251e67c25e6'),
  ($q$Main$q$,7,$q$SQL & Databases$q$,'7676c8791253cecf6baf42ca370e799c'),
  ($q$Main$q$,8,$q$SQL & Databases$q$,'f7e47233dcf8483bfff75f4dc1d9e068'),
  ($q$Main$q$,9,$q$SQL & Databases$q$,'3254c5f028fde3f0cfccf49633598fdc'),
  ($q$Main$q$,10,$q$SQL & Databases$q$,'926fffb550c59afc8507d984e85462f3'),
  ($q$Main$q$,11,$q$SQL & Databases$q$,'6666ad1cd9b1c95d30db40214b7aa084'),
  ($q$Main$q$,12,$q$SQL & Databases$q$,'b1f19afbd9e0f8ae5038f2646dfbb57f'),
  ($q$Main$q$,13,$q$SQL & Databases$q$,'76ed00ad5bba5bc2cf9a4aab2d3fe288'),
  ($q$Main$q$,14,$q$SQL & Databases$q$,'d8bd30849331e1e7203615a94e5552d6'),
  ($q$Main$q$,15,$q$SQL & Databases$q$,'7a5e3bc5a06dd1ed2e7de2c7853bc471'),
  ($q$Main$q$,16,$q$SQL & Databases$q$,'7e4d0eebae09b13aa50239cfbaa77ccb'),
  ($q$Main$q$,17,$q$SQL & Databases$q$,'9350a4f9d87350b4adf83bae7e621b39'),
  ($q$Main$q$,18,$q$SQL & Databases$q$,'a328dcc64d466cbf6e580997b640e61f'),
  ($q$Main$q$,19,$q$SQL & Databases$q$,'dee131eb0720160fef69c212dc13fa6a'),
  ($q$Main$q$,20,$q$SQL & Databases$q$,'e8736adb7f204c33af202d2fddf74ba9')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='sql-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('sql-intermediate',$q$SQL & Databases Intermediate$q$,$q$20 intermediate-level questions on SQL & Databases: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$SQL & Databases$q$),'database','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='sql-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$SQL & Databases$q$,'70dd33ace504cc4fb430e36b70b3a022'),
  ($q$Main$q$,2,$q$SQL & Databases$q$,'0b0868c04726d5f05c351fc3d4f79b67'),
  ($q$Main$q$,3,$q$SQL & Databases$q$,'481d26d59aebdbc9e07839b8d83e4274'),
  ($q$Main$q$,4,$q$SQL & Databases$q$,'9eccd3c91a1c4a16cc5fecc56b948135'),
  ($q$Main$q$,5,$q$SQL & Databases$q$,'5844230617ac96425970238b8216f4b1'),
  ($q$Main$q$,6,$q$SQL & Databases$q$,'75a7b9fb49e48dacdabfbbd9fc8e5219'),
  ($q$Main$q$,7,$q$SQL & Databases$q$,'eda3c0cf4ee0421b6d16014fd1ca8d9b'),
  ($q$Main$q$,8,$q$SQL & Databases$q$,'7cb59e4cd07f71ee201ffdde18c824b9'),
  ($q$Main$q$,9,$q$SQL & Databases$q$,'8bae6a19d766b82f9f368c4c84ce6f9c'),
  ($q$Main$q$,10,$q$SQL & Databases$q$,'4a98f2857994c51aaa4b42593dda2301'),
  ($q$Main$q$,11,$q$SQL & Databases$q$,'6379c34cca77cf6765ff2ec06bb03299'),
  ($q$Main$q$,12,$q$SQL & Databases$q$,'99e5eed0444182c95cbb90f03e34397f'),
  ($q$Main$q$,13,$q$SQL & Databases$q$,'ed27e6f0f240d37277a6a8213f79d453'),
  ($q$Main$q$,14,$q$SQL & Databases$q$,'8e23fd7e0b101073a97884cdb99b71b7'),
  ($q$Main$q$,15,$q$SQL & Databases$q$,'870a3892b204fe043edfaba5d339bb25'),
  ($q$Main$q$,16,$q$SQL & Databases$q$,'8f7305c639e47e0da30511b2c218be7b'),
  ($q$Main$q$,17,$q$SQL & Databases$q$,'b9b566353915b2f1767146768b15e8d1'),
  ($q$Main$q$,18,$q$SQL & Databases$q$,'f3f2339cab627c9559cd3680166fe5c1'),
  ($q$Main$q$,19,$q$SQL & Databases$q$,'e089c05db8c91749e55af1680a5d4fb8'),
  ($q$Main$q$,20,$q$SQL & Databases$q$,'f46dcfbddfb5e61eae59c37d672b9cc1')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='sql-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('sql-advanced',$q$SQL & Databases Advanced$q$,$q$20 advanced-level questions on SQL & Databases: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$SQL & Databases$q$),'database','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='sql-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$SQL & Databases$q$,'7423b47586e14d2a913d2bc3e914edc0'),
  ($q$Main$q$,2,$q$SQL & Databases$q$,'679791192c25b07f899e6cb6d37732a3'),
  ($q$Main$q$,3,$q$SQL & Databases$q$,'04f5953de6336a33b4c5ae09dc4158fa'),
  ($q$Main$q$,4,$q$SQL & Databases$q$,'21a5fe1327126ae2b2bf29c74ebccd04'),
  ($q$Main$q$,5,$q$SQL & Databases$q$,'d0706b301ebe8ea39396957f80e63edd'),
  ($q$Main$q$,6,$q$SQL & Databases$q$,'1cafed883d55c0e86a8989fe839d012f'),
  ($q$Main$q$,7,$q$SQL & Databases$q$,'5ef324f3e2d97b86b91dd515911ea2c0'),
  ($q$Main$q$,8,$q$SQL & Databases$q$,'ddc5c738877b7dbf90f33fff972acdf5'),
  ($q$Main$q$,9,$q$SQL & Databases$q$,'2e5e4f31ddb325386c97d5c879d341e0'),
  ($q$Main$q$,10,$q$SQL & Databases$q$,'344fabb41378bf0addd5a5e0c19e5a3e'),
  ($q$Main$q$,11,$q$SQL & Databases$q$,'67cf12e30e572e74feb07dab985ec116'),
  ($q$Main$q$,12,$q$SQL & Databases$q$,'6c754b7d308e7a626c87d36d5c798228'),
  ($q$Main$q$,13,$q$SQL & Databases$q$,'74eb996eb4030dc626587d8458d4545b'),
  ($q$Main$q$,14,$q$SQL & Databases$q$,'878fec061ef476c8d727cb43d71e1845'),
  ($q$Main$q$,15,$q$SQL & Databases$q$,'97f109c38acc08434bce53a3db0b71ec'),
  ($q$Main$q$,16,$q$SQL & Databases$q$,'adc7a8be413a92212ecedc1e3703b9d1'),
  ($q$Main$q$,17,$q$SQL & Databases$q$,'b943159a861385af6b63adc0217f5ae1'),
  ($q$Main$q$,18,$q$SQL & Databases$q$,'baedbeb444bd40ab75b31dde9e6549e1'),
  ($q$Main$q$,19,$q$SQL & Databases$q$,'bf25123229197ec21fd513c20c00da30'),
  ($q$Main$q$,20,$q$SQL & Databases$q$,'d218e3e0d0640c856e831433cb7c313c')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='sql-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('dotnet-beginner',$q$.NET Beginner$q$,$q$20 beginner-level questions on .NET: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$.NET$q$),'database','beginner','subject',30,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='dotnet-beginner');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$.NET$q$,'0bc4a6c3047e88e8b793d43d138bc0e5'),
  ($q$Main$q$,2,$q$.NET$q$,'709fdd1bd9bba470a9cbbb6c3c887dd1'),
  ($q$Main$q$,3,$q$.NET$q$,'1b48f181e7498fe77411acdc256d862c'),
  ($q$Main$q$,4,$q$.NET$q$,'1465c71ed06cf64e92a5c7f667f8844a'),
  ($q$Main$q$,5,$q$.NET$q$,'4c13b563839809a7905aa2a2e11980b5'),
  ($q$Main$q$,6,$q$.NET$q$,'19d2584e8b7897911610dd1e2dc9e860'),
  ($q$Main$q$,7,$q$.NET$q$,'fd095677fe194a991f7c3265ec040896'),
  ($q$Main$q$,8,$q$.NET$q$,'d98bcc2ad287240b11a1f6707597d2ad'),
  ($q$Main$q$,9,$q$.NET$q$,'91bc30359c4ab93a16bc9a263494a7b5'),
  ($q$Main$q$,10,$q$.NET$q$,'501d7ba8c3a962429c8b38c55985fe5b'),
  ($q$Main$q$,11,$q$.NET$q$,'830304b7671c2f5ce4c524bc8a5a5fa9'),
  ($q$Main$q$,12,$q$.NET$q$,'dd86045051d9c2cc6f6c82f237f792b5'),
  ($q$Main$q$,13,$q$.NET$q$,'9f61acdaea90ed3af3faff4c45e7e1df'),
  ($q$Main$q$,14,$q$.NET$q$,'58eeb3e87cb09f791f5f6b22381bc003'),
  ($q$Main$q$,15,$q$.NET$q$,'c7a101dff5b717d82d47f526cbc37e26'),
  ($q$Main$q$,16,$q$.NET$q$,'5b8ecf295ccf37e74056865af6d1cc56'),
  ($q$Main$q$,17,$q$.NET$q$,'dfd504582815916d540286f3d3605549'),
  ($q$Main$q$,18,$q$.NET$q$,'7a471f62efdd16f09a985d6785242395'),
  ($q$Main$q$,19,$q$.NET$q$,'b4c9494c324ae886e61df38dd3aaf7e6'),
  ($q$Main$q$,20,$q$.NET$q$,'c8f8102bd0bc20e07f148edab238983c')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='dotnet-beginner';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('dotnet-intermediate',$q$.NET Intermediate$q$,$q$20 intermediate-level questions on .NET: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$.NET$q$),'database','intermediate','subject',40,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='dotnet-intermediate');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$.NET$q$,'1eb0ef58bc1a2a05a36905b552447df4'),
  ($q$Main$q$,2,$q$.NET$q$,'57e28416ac4d14ced4393993586280f6'),
  ($q$Main$q$,3,$q$.NET$q$,'3768626359d7724219e5fc1a424ecc1d'),
  ($q$Main$q$,4,$q$.NET$q$,'7abaebbc8551e63dd6802c0a225fa5e0'),
  ($q$Main$q$,5,$q$.NET$q$,'29e64572f269a61f42c9606f8cd584fe'),
  ($q$Main$q$,6,$q$.NET$q$,'9176297b27549cd82c6364045f858ddc'),
  ($q$Main$q$,7,$q$.NET$q$,'443a571bf23894c5f2cb548af33bae92'),
  ($q$Main$q$,8,$q$.NET$q$,'611f9e478cada3feffb3dc95907abea8'),
  ($q$Main$q$,9,$q$.NET$q$,'b1e5c83dbeb80f76138f8f6d84d4efb3'),
  ($q$Main$q$,10,$q$.NET$q$,'9b7c35e9028859c726f5ec403365bb5c'),
  ($q$Main$q$,11,$q$.NET$q$,'3a5f0eb5e0a3c4882d05435437e88245'),
  ($q$Main$q$,12,$q$.NET$q$,'5c00ffc6d14ea4eb2305199fe5817645'),
  ($q$Main$q$,13,$q$.NET$q$,'c10e11b021045c320636938610275fda'),
  ($q$Main$q$,14,$q$.NET$q$,'cde3d78d401ab84989f7c3be9af898d5'),
  ($q$Main$q$,15,$q$.NET$q$,'8af2bcac434a4496dba0d9b7f19dfed7'),
  ($q$Main$q$,16,$q$.NET$q$,'d29755df9fcbcf179580dbcc34af0031'),
  ($q$Main$q$,17,$q$.NET$q$,'9825baf605e4298e1d7a9bd0b180cef1'),
  ($q$Main$q$,18,$q$.NET$q$,'9c72316644022b4c3e87bbf73a4df310'),
  ($q$Main$q$,19,$q$.NET$q$,'cc5f820a6225aa38380174d79f13a88e'),
  ($q$Main$q$,20,$q$.NET$q$,'d5fbe67ee87b27858a29e002fbc27fa2')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='dotnet-intermediate';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('dotnet-advanced',$q$.NET Advanced$q$,$q$20 advanced-level questions on .NET: topic-balanced, with answers and explanations. Ready to host.$q$,(select id from domains where name=$q$.NET$q$),'database','advanced','subject',50,50,20,$q${"Main": 20}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='dotnet-advanced');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Main$q$,1,$q$.NET$q$,'18ecf1747466f6054d944668dc29037f'),
  ($q$Main$q$,2,$q$.NET$q$,'07215b78697fbf319b622b0a180f023f'),
  ($q$Main$q$,3,$q$.NET$q$,'20a8b5d15efdf6068ef15fdc6de69867'),
  ($q$Main$q$,4,$q$.NET$q$,'72c79aa4e184d9c94ac722899d58ee0b'),
  ($q$Main$q$,5,$q$.NET$q$,'1358fb79cf4338c0ba21c7adfa0c8fd8'),
  ($q$Main$q$,6,$q$.NET$q$,'ecb5341184dbf7f0aac7321fd3429646'),
  ($q$Main$q$,7,$q$.NET$q$,'6b2f2b71b81276e07b9a571b2591ca68'),
  ($q$Main$q$,8,$q$.NET$q$,'20ced9303c5d436c0acb30bef0ecf0ba'),
  ($q$Main$q$,9,$q$.NET$q$,'6025b98ac92d968107999c48b6bf97b6'),
  ($q$Main$q$,10,$q$.NET$q$,'b4a51487bedb14aed91a27ac2ea22e4a'),
  ($q$Main$q$,11,$q$.NET$q$,'6cc825eaa069bf1a423d7909d01cced7'),
  ($q$Main$q$,12,$q$.NET$q$,'a38f2e48c16ecc4c09703d51e069063c'),
  ($q$Main$q$,13,$q$.NET$q$,'6de50927ff0bb8de5b3be64c7df34c27'),
  ($q$Main$q$,14,$q$.NET$q$,'ddc488cd929c81f962a85ce2909d041f'),
  ($q$Main$q$,15,$q$.NET$q$,'71174cf9bd9ce48ad7891e4dc3a350a4'),
  ($q$Main$q$,16,$q$.NET$q$,'728a45cac6f225fa7986282e49b0222a'),
  ($q$Main$q$,17,$q$.NET$q$,'edc8fd05a09f74a5b8d6d5e7a7a45348'),
  ($q$Main$q$,18,$q$.NET$q$,'ac3004c412ea6d7dd21f0fa51e6f5098'),
  ($q$Main$q$,19,$q$.NET$q$,'cbd695a3b8e4787afe7edc048e8e0b8d'),
  ($q$Main$q$,20,$q$.NET$q$,'d34df8d54a641158e269d28f0701d2fc')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='dotnet-advanced';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('common-entrance-standard',$q$Common Entrance Examination – Standard$q$,$q$Complete 50-question entrance test for every engineering branch: Quantitative Aptitude 15, Logical Reasoning 15, Verbal Ability 10, Analytical Thinking 10. Balanced difficulty, 1 mark each.$q$,null,'entrance','mixed','entrance',60,40,50,$q${"Quantitative Aptitude": 15, "Logical Reasoning": 15, "Verbal Ability": 10, "Analytical Thinking": 10}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='common-entrance-standard');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Quantitative Aptitude$q$,1,$q$Quantitative Aptitude$q$,'4f13291ba18546f20aa46bd9d64a4527'),
  ($q$Quantitative Aptitude$q$,2,$q$Quantitative Aptitude$q$,'06d83fac9b215d77e97d661193a8591a'),
  ($q$Quantitative Aptitude$q$,3,$q$Quantitative Aptitude$q$,'66aadac7d46bffba4182718ccefd7989'),
  ($q$Quantitative Aptitude$q$,4,$q$Quantitative Aptitude$q$,'1adbebc126b35c3240fbcc918c265df6'),
  ($q$Quantitative Aptitude$q$,5,$q$Quantitative Aptitude$q$,'0a3a3ea930a686a4a0f523cff35dd154'),
  ($q$Quantitative Aptitude$q$,6,$q$Quantitative Aptitude$q$,'30b95be25e019a26ee774b904f547d63'),
  ($q$Quantitative Aptitude$q$,7,$q$Quantitative Aptitude$q$,'16551214f98f4ddd333051351cc26615'),
  ($q$Quantitative Aptitude$q$,8,$q$Quantitative Aptitude$q$,'10b0073f999d0df337e58867ae06f85f'),
  ($q$Quantitative Aptitude$q$,9,$q$Quantitative Aptitude$q$,'570faf41ba01a279f323048bb1d3be54'),
  ($q$Quantitative Aptitude$q$,10,$q$Quantitative Aptitude$q$,'2fbf184f4709bd43f285e44b12d35f18'),
  ($q$Quantitative Aptitude$q$,11,$q$Quantitative Aptitude$q$,'09417007a7c8d91c1c24a3570039f103'),
  ($q$Quantitative Aptitude$q$,12,$q$Quantitative Aptitude$q$,'70c37b699a5eb460b49211c011604f57'),
  ($q$Quantitative Aptitude$q$,13,$q$Quantitative Aptitude$q$,'339f7271d0695ee5024a9cef026863a1'),
  ($q$Quantitative Aptitude$q$,14,$q$Quantitative Aptitude$q$,'5e7b734aa74e134ee2c11ab4f667d595'),
  ($q$Quantitative Aptitude$q$,15,$q$Quantitative Aptitude$q$,'09668068c465671eff3c177ae291264b'),
  ($q$Logical Reasoning$q$,16,$q$Logical Reasoning$q$,'6326e5ebf9b352a0f0b81f07d5652d68'),
  ($q$Logical Reasoning$q$,17,$q$Logical Reasoning$q$,'102bac8ad90678ee82a8b095579b5f4d'),
  ($q$Logical Reasoning$q$,18,$q$Logical Reasoning$q$,'5259db7bf61f689e5ec2c0426e67625c'),
  ($q$Logical Reasoning$q$,19,$q$Logical Reasoning$q$,'4fbbb9ce9f04586dff5be3d283ddc7ab'),
  ($q$Logical Reasoning$q$,20,$q$Logical Reasoning$q$,'3ef29256ab9c6db5c88098cdafb96183'),
  ($q$Logical Reasoning$q$,21,$q$Logical Reasoning$q$,'42f10e56b8051aa6e45892714d1b5e37'),
  ($q$Logical Reasoning$q$,22,$q$Logical Reasoning$q$,'a972f6cc47eaa4015dd3741d8a9a00ad'),
  ($q$Logical Reasoning$q$,23,$q$Logical Reasoning$q$,'33965eba8bd26659bdb7c8427ad341a8'),
  ($q$Logical Reasoning$q$,24,$q$Logical Reasoning$q$,'3389afab903702c96acd9acaada18e46'),
  ($q$Logical Reasoning$q$,25,$q$Logical Reasoning$q$,'4f76fad3ca7a67e1896cdcf17f58453c'),
  ($q$Logical Reasoning$q$,26,$q$Logical Reasoning$q$,'319cbc1536d1d1b8a6fdd6799b0552d3'),
  ($q$Logical Reasoning$q$,27,$q$Logical Reasoning$q$,'cc574603adafdf9df3bafa546b82dcf4'),
  ($q$Logical Reasoning$q$,28,$q$Logical Reasoning$q$,'f149c88465dabe8cdc781c5bc3e1aa0d'),
  ($q$Logical Reasoning$q$,29,$q$Logical Reasoning$q$,'200a3316acd7f39d92a25e6e952c8693'),
  ($q$Logical Reasoning$q$,30,$q$Logical Reasoning$q$,'1d0c184b93cecad750622c9cdc1924e1'),
  ($q$Verbal Ability$q$,31,$q$Verbal Ability$q$,'67ff5991059ac627d41b64d0d177f058'),
  ($q$Verbal Ability$q$,32,$q$Verbal Ability$q$,'25cb6f63d6fede056f30c0d10f1aecd0'),
  ($q$Verbal Ability$q$,33,$q$Verbal Ability$q$,'5292d589f556b095f7fb5b4fb4357c2c'),
  ($q$Verbal Ability$q$,34,$q$Verbal Ability$q$,'277f9fd7da889eb92bfb0d28c53a5a11'),
  ($q$Verbal Ability$q$,35,$q$Verbal Ability$q$,'57d5c8ea163fa43da1112c72812844e4'),
  ($q$Verbal Ability$q$,36,$q$Verbal Ability$q$,'17b3dc1088bb6c1c9c96307d11df511f'),
  ($q$Verbal Ability$q$,37,$q$Verbal Ability$q$,'093f7dddbeaa551786dc82571dcf6d99'),
  ($q$Verbal Ability$q$,38,$q$Verbal Ability$q$,'0555552a7a976f64eada6eb9a8b3cf95'),
  ($q$Verbal Ability$q$,39,$q$Verbal Ability$q$,'053b18cf085df091b13f2871b8e1df74'),
  ($q$Verbal Ability$q$,40,$q$Verbal Ability$q$,'82cfd486368f37a5bac40836bc174e13'),
  ($q$Analytical Thinking$q$,41,$q$Analytical Thinking$q$,'0586b79aa3e37870017fca312ece5e06'),
  ($q$Analytical Thinking$q$,42,$q$Analytical Thinking$q$,'2534410a3bf53726c2d861c842845ec0'),
  ($q$Analytical Thinking$q$,43,$q$Analytical Thinking$q$,'5c8f2f958c11cdb950c448ca0c9998eb'),
  ($q$Analytical Thinking$q$,44,$q$Analytical Thinking$q$,'b5917eea37c330dfd2368c1a701897bd'),
  ($q$Analytical Thinking$q$,45,$q$Analytical Thinking$q$,'0c15156ce20036fd752f1a2294e236a8'),
  ($q$Analytical Thinking$q$,46,$q$Analytical Thinking$q$,'0aa152ea574444e75764dbfb2b88bf30'),
  ($q$Analytical Thinking$q$,47,$q$Analytical Thinking$q$,'8b12e0f17d2a83854b5a87e420127f2c'),
  ($q$Analytical Thinking$q$,48,$q$Analytical Thinking$q$,'650aaf19022feef789e4e12b12250bea'),
  ($q$Analytical Thinking$q$,49,$q$Analytical Thinking$q$,'2f25c88723f70960b8a9b4c5b2a1552f'),
  ($q$Analytical Thinking$q$,50,$q$Analytical Thinking$q$,'1de09c7d8e960769aaa2fab5937b2809')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='common-entrance-standard';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('common-entrance-foundation',$q$Common Entrance Examination – Foundation$q$,$q$Easier 50-question version of the entrance test, suited to first-year or screening use. Same four sections and marks.$q$,null,'entrance','mixed','entrance',60,40,50,$q${"Quantitative Aptitude": 15, "Logical Reasoning": 15, "Verbal Ability": 10, "Analytical Thinking": 10}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='common-entrance-foundation');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Quantitative Aptitude$q$,1,$q$Quantitative Aptitude$q$,'6795d4bc4204c790876a66cafeeaafec'),
  ($q$Quantitative Aptitude$q$,2,$q$Quantitative Aptitude$q$,'6455b16ae91ff2412279f7ec6df14dee'),
  ($q$Quantitative Aptitude$q$,3,$q$Quantitative Aptitude$q$,'48fb0fd5532f5e63cd609b129d9cdd9b'),
  ($q$Quantitative Aptitude$q$,4,$q$Quantitative Aptitude$q$,'1c120e98107b0e98cf6cfba26bdcc43e'),
  ($q$Quantitative Aptitude$q$,5,$q$Quantitative Aptitude$q$,'72160883cee6a82c6652e270e86704f5'),
  ($q$Quantitative Aptitude$q$,6,$q$Quantitative Aptitude$q$,'10772a6c46fed8a4d732c69fb4399dca'),
  ($q$Quantitative Aptitude$q$,7,$q$Quantitative Aptitude$q$,'5d49010fad8f92d553a78065576fa799'),
  ($q$Quantitative Aptitude$q$,8,$q$Quantitative Aptitude$q$,'28a10dfb084a589db6bffd3a2957db33'),
  ($q$Quantitative Aptitude$q$,9,$q$Quantitative Aptitude$q$,'16ae7b38bca748adf97ad97cc80b8cae'),
  ($q$Quantitative Aptitude$q$,10,$q$Quantitative Aptitude$q$,'32b1dd4f57e8aa63ccc9f1ca6f230071'),
  ($q$Quantitative Aptitude$q$,11,$q$Quantitative Aptitude$q$,'99017e8a1ac8fe80290019f124e84ba7'),
  ($q$Quantitative Aptitude$q$,12,$q$Quantitative Aptitude$q$,'a048a0e86beddbdfc1489372e6e7e7af'),
  ($q$Quantitative Aptitude$q$,13,$q$Quantitative Aptitude$q$,'0697a6515599a6926e51e31af6903e48'),
  ($q$Quantitative Aptitude$q$,14,$q$Quantitative Aptitude$q$,'5eae9b5718024d72ed267bd2acbee299'),
  ($q$Quantitative Aptitude$q$,15,$q$Quantitative Aptitude$q$,'6b7460d26ee8983dedd0f85b5fd4679c'),
  ($q$Logical Reasoning$q$,16,$q$Logical Reasoning$q$,'7c2f51f144048034c6cb720e7d163ecd'),
  ($q$Logical Reasoning$q$,17,$q$Logical Reasoning$q$,'36b04e8ffa795135dd519aa9cfd0cb52'),
  ($q$Logical Reasoning$q$,18,$q$Logical Reasoning$q$,'0438aea727feab7de0945f31eb86d86f'),
  ($q$Logical Reasoning$q$,19,$q$Logical Reasoning$q$,'0cf04f2c457ba1ef6eb017e2c8630be6'),
  ($q$Logical Reasoning$q$,20,$q$Logical Reasoning$q$,'99178b5832c961ca04baa2a893535cb4'),
  ($q$Logical Reasoning$q$,21,$q$Logical Reasoning$q$,'a1d9beff20d211ad629c50278642546a'),
  ($q$Logical Reasoning$q$,22,$q$Logical Reasoning$q$,'aecfbf10ef8bf21f09024cb0832f3f4c'),
  ($q$Logical Reasoning$q$,23,$q$Logical Reasoning$q$,'c621096bf99138784fd22b470633e1b1'),
  ($q$Logical Reasoning$q$,24,$q$Logical Reasoning$q$,'2f530652fbd6cda044fde095cc9f4e64'),
  ($q$Logical Reasoning$q$,25,$q$Logical Reasoning$q$,'0c583ddab1162dabdfba988838c9c734'),
  ($q$Logical Reasoning$q$,26,$q$Logical Reasoning$q$,'19ace850bfde1742ff88c219c72856ef'),
  ($q$Logical Reasoning$q$,27,$q$Logical Reasoning$q$,'77d7326c06359f21923b146ce30ec078'),
  ($q$Logical Reasoning$q$,28,$q$Logical Reasoning$q$,'e50e30ca6145d95b81c12b8d3e13dbe1'),
  ($q$Logical Reasoning$q$,29,$q$Logical Reasoning$q$,'4f5c0e1aaae62165888a6be4abdf1544'),
  ($q$Logical Reasoning$q$,30,$q$Logical Reasoning$q$,'4a8a244e2395c4ac9ca498eda102bbd3'),
  ($q$Verbal Ability$q$,31,$q$Verbal Ability$q$,'54b066f451ede356b470b20a4c9e3ffa'),
  ($q$Verbal Ability$q$,32,$q$Verbal Ability$q$,'235dc62a5bce60e1147232bd831bcc2f'),
  ($q$Verbal Ability$q$,33,$q$Verbal Ability$q$,'7b7ac621792d15474c7c58c2f2b1c7b7'),
  ($q$Verbal Ability$q$,34,$q$Verbal Ability$q$,'70054b614bd2847ec5e3e67ef1aa0a10'),
  ($q$Verbal Ability$q$,35,$q$Verbal Ability$q$,'9a5caf3beafcea5a54f5497ec78265b0'),
  ($q$Verbal Ability$q$,36,$q$Verbal Ability$q$,'3c3a5cbb53a87756c25bbf5833627ae0'),
  ($q$Verbal Ability$q$,37,$q$Verbal Ability$q$,'016eea3724ae700794ac1ba2c02649b7'),
  ($q$Verbal Ability$q$,38,$q$Verbal Ability$q$,'53de87992482da949e3e0d8202a214a4'),
  ($q$Verbal Ability$q$,39,$q$Verbal Ability$q$,'adad65d9c6020c008d766e57938c8d14'),
  ($q$Verbal Ability$q$,40,$q$Verbal Ability$q$,'bd0a9d93203fd93130a152487010a1e4'),
  ($q$Analytical Thinking$q$,41,$q$Analytical Thinking$q$,'7c6070244bcca88dee859d4fa4cdbce5'),
  ($q$Analytical Thinking$q$,42,$q$Analytical Thinking$q$,'4ffc4e4afd93ecea83087f7df19c5771'),
  ($q$Analytical Thinking$q$,43,$q$Analytical Thinking$q$,'6e44b41c2332dd583cd90f6529e650e8'),
  ($q$Analytical Thinking$q$,44,$q$Analytical Thinking$q$,'67158ef239c972bc7abba4bd66c1f598'),
  ($q$Analytical Thinking$q$,45,$q$Analytical Thinking$q$,'22d1acc539ea75800e36d2132a33ff45'),
  ($q$Analytical Thinking$q$,46,$q$Analytical Thinking$q$,'00f2c070cbe94ba306ee14b6512c1c78'),
  ($q$Analytical Thinking$q$,47,$q$Analytical Thinking$q$,'d32a1c8f969a7ce77f259ce9decb359d'),
  ($q$Analytical Thinking$q$,48,$q$Analytical Thinking$q$,'34b1d493b7ceb7661bfcccdf96be1951'),
  ($q$Analytical Thinking$q$,49,$q$Analytical Thinking$q$,'17ccbfaa7f243d57d7f4d039a472c7e8'),
  ($q$Analytical Thinking$q$,50,$q$Analytical Thinking$q$,'0374bd7c775924209153e53d1617262f')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='common-entrance-foundation';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('common-entrance-challenge',$q$Common Entrance Examination – Challenge$q$,$q$Harder 50-question version of the entrance test for scholarship or final-round selection. Same four sections and marks.$q$,null,'entrance','mixed','entrance',60,40,50,$q${"Quantitative Aptitude": 15, "Logical Reasoning": 15, "Verbal Ability": 10, "Analytical Thinking": 10}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='common-entrance-challenge');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Quantitative Aptitude$q$,1,$q$Quantitative Aptitude$q$,'664ad23cb44214bec59b9fc75317ae38'),
  ($q$Quantitative Aptitude$q$,2,$q$Quantitative Aptitude$q$,'28d0b5a81d57285cb571c3e875a7de63'),
  ($q$Quantitative Aptitude$q$,3,$q$Quantitative Aptitude$q$,'4b6b7a529642fb3ea16aca9e7320a374'),
  ($q$Quantitative Aptitude$q$,4,$q$Quantitative Aptitude$q$,'1bfbe09c6d7412cbf163fb4eea316eff'),
  ($q$Quantitative Aptitude$q$,5,$q$Quantitative Aptitude$q$,'a019e54b85d3952200ab0bde905f6a7f'),
  ($q$Quantitative Aptitude$q$,6,$q$Quantitative Aptitude$q$,'3e542240957ae363970a8a2d92b18204'),
  ($q$Quantitative Aptitude$q$,7,$q$Quantitative Aptitude$q$,'1b23528a2e15db21b106c0ee7c4b714c'),
  ($q$Quantitative Aptitude$q$,8,$q$Quantitative Aptitude$q$,'8df701b075f4fcc5cd36a3bfc23725c7'),
  ($q$Quantitative Aptitude$q$,9,$q$Quantitative Aptitude$q$,'bb18fbe96662b8eb2c437a86c0026a2a'),
  ($q$Quantitative Aptitude$q$,10,$q$Quantitative Aptitude$q$,'2bc37137bfe3e8937be0e5b36a18ce32'),
  ($q$Quantitative Aptitude$q$,11,$q$Quantitative Aptitude$q$,'9086d200ed8bbdb73cde53a37a8d54cb'),
  ($q$Quantitative Aptitude$q$,12,$q$Quantitative Aptitude$q$,'1f67d5e2ce3d10c74a8b58e67379a093'),
  ($q$Quantitative Aptitude$q$,13,$q$Quantitative Aptitude$q$,'7a2bcec4c652bbc3d3cc8226666b4d0d'),
  ($q$Quantitative Aptitude$q$,14,$q$Quantitative Aptitude$q$,'61682792668572ac423d18e974c45e57'),
  ($q$Quantitative Aptitude$q$,15,$q$Quantitative Aptitude$q$,'5173a1f19d3c7cbaf0a3e0b3a6143f93'),
  ($q$Logical Reasoning$q$,16,$q$Logical Reasoning$q$,'80d14e23392af7d68f975cf18f46e181'),
  ($q$Logical Reasoning$q$,17,$q$Logical Reasoning$q$,'0fb8cb2e4f3e4d09c14605293c0650f5'),
  ($q$Logical Reasoning$q$,18,$q$Logical Reasoning$q$,'c6e2bb910fb615490f2d1da2c65d564c'),
  ($q$Logical Reasoning$q$,19,$q$Logical Reasoning$q$,'486f1a2eb17ba317587ee0b4f246e6f7'),
  ($q$Logical Reasoning$q$,20,$q$Logical Reasoning$q$,'601098c503274d9e5be559a9b522ed45'),
  ($q$Logical Reasoning$q$,21,$q$Logical Reasoning$q$,'12c921d5786feb35e6642a1d63c5e5de'),
  ($q$Logical Reasoning$q$,22,$q$Logical Reasoning$q$,'1df7e81a41c3b5aa397e3728a048830c'),
  ($q$Logical Reasoning$q$,23,$q$Logical Reasoning$q$,'8f2458c91cf4666c81a28ef60165c174'),
  ($q$Logical Reasoning$q$,24,$q$Logical Reasoning$q$,'28d6bac1c71d46522be62652a61a6715'),
  ($q$Logical Reasoning$q$,25,$q$Logical Reasoning$q$,'4312bc2385da0c7a7f3bcaa57b8483c6'),
  ($q$Logical Reasoning$q$,26,$q$Logical Reasoning$q$,'56feb60bae035cd460d646b928d44826'),
  ($q$Logical Reasoning$q$,27,$q$Logical Reasoning$q$,'7403cd7107f3d10a7593e2853d520718'),
  ($q$Logical Reasoning$q$,28,$q$Logical Reasoning$q$,'814529c7a1eea8f40ad6186619e8945f'),
  ($q$Logical Reasoning$q$,29,$q$Logical Reasoning$q$,'d9391513091df24ce4b0dc1992de8eee'),
  ($q$Logical Reasoning$q$,30,$q$Logical Reasoning$q$,'fced91dfcb43a4ce54f501849fe5c78a'),
  ($q$Verbal Ability$q$,31,$q$Verbal Ability$q$,'73a5ce76baf1d6a6064814eaef053954'),
  ($q$Verbal Ability$q$,32,$q$Verbal Ability$q$,'20371e783ca4fd7f2700d7c8a3b4360d'),
  ($q$Verbal Ability$q$,33,$q$Verbal Ability$q$,'87f01041c82166f44be6d74d39156e71'),
  ($q$Verbal Ability$q$,34,$q$Verbal Ability$q$,'120fef9dbb2123d2983fc248c377ee98'),
  ($q$Verbal Ability$q$,35,$q$Verbal Ability$q$,'688767142838aaeecfaf71e0497c9212'),
  ($q$Verbal Ability$q$,36,$q$Verbal Ability$q$,'126db08679861280e22085b93ab1b7ed'),
  ($q$Verbal Ability$q$,37,$q$Verbal Ability$q$,'2375362fe809fe48201b1bc7580855bd'),
  ($q$Verbal Ability$q$,38,$q$Verbal Ability$q$,'cc5c75bb50fc07652788b79997dbfbc1'),
  ($q$Verbal Ability$q$,39,$q$Verbal Ability$q$,'32caa1187391438d40c2ea4c71e67a5c'),
  ($q$Verbal Ability$q$,40,$q$Verbal Ability$q$,'32f923d65ff022cba6c4b4ac4bb57e9d'),
  ($q$Analytical Thinking$q$,41,$q$Analytical Thinking$q$,'7c6657ef7e9d667dcfc8f6509fb611bc'),
  ($q$Analytical Thinking$q$,42,$q$Analytical Thinking$q$,'a9490cc6890dcfaebda07917733b2648'),
  ($q$Analytical Thinking$q$,43,$q$Analytical Thinking$q$,'71a605c28be0a68818c6a3055577f27d'),
  ($q$Analytical Thinking$q$,44,$q$Analytical Thinking$q$,'5bc0ac38d5df7bad649005b13930c66b'),
  ($q$Analytical Thinking$q$,45,$q$Analytical Thinking$q$,'bc33a4f6f0dd7ff314d229bb6c478978'),
  ($q$Analytical Thinking$q$,46,$q$Analytical Thinking$q$,'abb687db640d58311ec266e3576ffae9'),
  ($q$Analytical Thinking$q$,47,$q$Analytical Thinking$q$,'9700b5479a08261d60a0dbe6352d9f5d'),
  ($q$Analytical Thinking$q$,48,$q$Analytical Thinking$q$,'7b4e0dcb7a07a00599ff842b52cb2f75'),
  ($q$Analytical Thinking$q$,49,$q$Analytical Thinking$q$,'48dd4df4a1aac2a2d8ed42b46c311642'),
  ($q$Analytical Thinking$q$,50,$q$Analytical Thinking$q$,'261bf067102db56890a1099081e4ef84')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='common-entrance-challenge';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('ce-quant-practice',$q$Common Entrance – Quantitative Aptitude Section Test$q$,$q$25-question section test on Quantitative Aptitude drawn from the full pool, mixed difficulty, 1 mark each.$q$,(select id from domains where name=$q$Quantitative Aptitude$q$),'entrance','mixed','section',30,40,25,$q${"Quantitative Aptitude": 25}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='ce-quant-practice');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Quantitative Aptitude$q$,1,$q$Quantitative Aptitude$q$,'4f13291ba18546f20aa46bd9d64a4527'),
  ($q$Quantitative Aptitude$q$,2,$q$Quantitative Aptitude$q$,'06d83fac9b215d77e97d661193a8591a'),
  ($q$Quantitative Aptitude$q$,3,$q$Quantitative Aptitude$q$,'66aadac7d46bffba4182718ccefd7989'),
  ($q$Quantitative Aptitude$q$,4,$q$Quantitative Aptitude$q$,'1adbebc126b35c3240fbcc918c265df6'),
  ($q$Quantitative Aptitude$q$,5,$q$Quantitative Aptitude$q$,'0a3a3ea930a686a4a0f523cff35dd154'),
  ($q$Quantitative Aptitude$q$,6,$q$Quantitative Aptitude$q$,'6795d4bc4204c790876a66cafeeaafec'),
  ($q$Quantitative Aptitude$q$,7,$q$Quantitative Aptitude$q$,'6455b16ae91ff2412279f7ec6df14dee'),
  ($q$Quantitative Aptitude$q$,8,$q$Quantitative Aptitude$q$,'48fb0fd5532f5e63cd609b129d9cdd9b'),
  ($q$Quantitative Aptitude$q$,9,$q$Quantitative Aptitude$q$,'30b95be25e019a26ee774b904f547d63'),
  ($q$Quantitative Aptitude$q$,10,$q$Quantitative Aptitude$q$,'16551214f98f4ddd333051351cc26615'),
  ($q$Quantitative Aptitude$q$,11,$q$Quantitative Aptitude$q$,'10b0073f999d0df337e58867ae06f85f'),
  ($q$Quantitative Aptitude$q$,12,$q$Quantitative Aptitude$q$,'570faf41ba01a279f323048bb1d3be54'),
  ($q$Quantitative Aptitude$q$,13,$q$Quantitative Aptitude$q$,'2fbf184f4709bd43f285e44b12d35f18'),
  ($q$Quantitative Aptitude$q$,14,$q$Quantitative Aptitude$q$,'09417007a7c8d91c1c24a3570039f103'),
  ($q$Quantitative Aptitude$q$,15,$q$Quantitative Aptitude$q$,'16ae7b38bca748adf97ad97cc80b8cae'),
  ($q$Quantitative Aptitude$q$,16,$q$Quantitative Aptitude$q$,'32b1dd4f57e8aa63ccc9f1ca6f230071'),
  ($q$Quantitative Aptitude$q$,17,$q$Quantitative Aptitude$q$,'99017e8a1ac8fe80290019f124e84ba7'),
  ($q$Quantitative Aptitude$q$,18,$q$Quantitative Aptitude$q$,'a048a0e86beddbdfc1489372e6e7e7af'),
  ($q$Quantitative Aptitude$q$,19,$q$Quantitative Aptitude$q$,'70c37b699a5eb460b49211c011604f57'),
  ($q$Quantitative Aptitude$q$,20,$q$Quantitative Aptitude$q$,'339f7271d0695ee5024a9cef026863a1'),
  ($q$Quantitative Aptitude$q$,21,$q$Quantitative Aptitude$q$,'5e7b734aa74e134ee2c11ab4f667d595'),
  ($q$Quantitative Aptitude$q$,22,$q$Quantitative Aptitude$q$,'09668068c465671eff3c177ae291264b'),
  ($q$Quantitative Aptitude$q$,23,$q$Quantitative Aptitude$q$,'6b7460d26ee8983dedd0f85b5fd4679c'),
  ($q$Quantitative Aptitude$q$,24,$q$Quantitative Aptitude$q$,'bb18fbe96662b8eb2c437a86c0026a2a'),
  ($q$Quantitative Aptitude$q$,25,$q$Quantitative Aptitude$q$,'2bc37137bfe3e8937be0e5b36a18ce32')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='ce-quant-practice';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('ce-reasoning-practice',$q$Common Entrance – Logical Reasoning Section Test$q$,$q$25-question section test on Logical Reasoning drawn from the full pool, mixed difficulty, 1 mark each.$q$,(select id from domains where name=$q$Logical Reasoning$q$),'entrance','mixed','section',30,40,25,$q${"Logical Reasoning": 25}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='ce-reasoning-practice');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Logical Reasoning$q$,1,$q$Logical Reasoning$q$,'6326e5ebf9b352a0f0b81f07d5652d68'),
  ($q$Logical Reasoning$q$,2,$q$Logical Reasoning$q$,'102bac8ad90678ee82a8b095579b5f4d'),
  ($q$Logical Reasoning$q$,3,$q$Logical Reasoning$q$,'5259db7bf61f689e5ec2c0426e67625c'),
  ($q$Logical Reasoning$q$,4,$q$Logical Reasoning$q$,'4fbbb9ce9f04586dff5be3d283ddc7ab'),
  ($q$Logical Reasoning$q$,5,$q$Logical Reasoning$q$,'3ef29256ab9c6db5c88098cdafb96183'),
  ($q$Logical Reasoning$q$,6,$q$Logical Reasoning$q$,'7c2f51f144048034c6cb720e7d163ecd'),
  ($q$Logical Reasoning$q$,7,$q$Logical Reasoning$q$,'36b04e8ffa795135dd519aa9cfd0cb52'),
  ($q$Logical Reasoning$q$,8,$q$Logical Reasoning$q$,'0438aea727feab7de0945f31eb86d86f'),
  ($q$Logical Reasoning$q$,9,$q$Logical Reasoning$q$,'42f10e56b8051aa6e45892714d1b5e37'),
  ($q$Logical Reasoning$q$,10,$q$Logical Reasoning$q$,'a972f6cc47eaa4015dd3741d8a9a00ad'),
  ($q$Logical Reasoning$q$,11,$q$Logical Reasoning$q$,'33965eba8bd26659bdb7c8427ad341a8'),
  ($q$Logical Reasoning$q$,12,$q$Logical Reasoning$q$,'3389afab903702c96acd9acaada18e46'),
  ($q$Logical Reasoning$q$,13,$q$Logical Reasoning$q$,'4f76fad3ca7a67e1896cdcf17f58453c'),
  ($q$Logical Reasoning$q$,14,$q$Logical Reasoning$q$,'319cbc1536d1d1b8a6fdd6799b0552d3'),
  ($q$Logical Reasoning$q$,15,$q$Logical Reasoning$q$,'2f530652fbd6cda044fde095cc9f4e64'),
  ($q$Logical Reasoning$q$,16,$q$Logical Reasoning$q$,'0c583ddab1162dabdfba988838c9c734'),
  ($q$Logical Reasoning$q$,17,$q$Logical Reasoning$q$,'19ace850bfde1742ff88c219c72856ef'),
  ($q$Logical Reasoning$q$,18,$q$Logical Reasoning$q$,'77d7326c06359f21923b146ce30ec078'),
  ($q$Logical Reasoning$q$,19,$q$Logical Reasoning$q$,'cc574603adafdf9df3bafa546b82dcf4'),
  ($q$Logical Reasoning$q$,20,$q$Logical Reasoning$q$,'f149c88465dabe8cdc781c5bc3e1aa0d'),
  ($q$Logical Reasoning$q$,21,$q$Logical Reasoning$q$,'200a3316acd7f39d92a25e6e952c8693'),
  ($q$Logical Reasoning$q$,22,$q$Logical Reasoning$q$,'1d0c184b93cecad750622c9cdc1924e1'),
  ($q$Logical Reasoning$q$,23,$q$Logical Reasoning$q$,'4a8a244e2395c4ac9ca498eda102bbd3'),
  ($q$Logical Reasoning$q$,24,$q$Logical Reasoning$q$,'28d6bac1c71d46522be62652a61a6715'),
  ($q$Logical Reasoning$q$,25,$q$Logical Reasoning$q$,'4312bc2385da0c7a7f3bcaa57b8483c6')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='ce-reasoning-practice';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('ce-verbal-practice',$q$Common Entrance – Verbal Ability Section Test$q$,$q$25-question section test on Verbal Ability drawn from the full pool, mixed difficulty, 1 mark each.$q$,(select id from domains where name=$q$Verbal Ability$q$),'entrance','mixed','section',30,40,25,$q${"Verbal Ability": 25}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='ce-verbal-practice');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Verbal Ability$q$,1,$q$Verbal Ability$q$,'67ff5991059ac627d41b64d0d177f058'),
  ($q$Verbal Ability$q$,2,$q$Verbal Ability$q$,'25cb6f63d6fede056f30c0d10f1aecd0'),
  ($q$Verbal Ability$q$,3,$q$Verbal Ability$q$,'5292d589f556b095f7fb5b4fb4357c2c'),
  ($q$Verbal Ability$q$,4,$q$Verbal Ability$q$,'277f9fd7da889eb92bfb0d28c53a5a11'),
  ($q$Verbal Ability$q$,5,$q$Verbal Ability$q$,'54b066f451ede356b470b20a4c9e3ffa'),
  ($q$Verbal Ability$q$,6,$q$Verbal Ability$q$,'235dc62a5bce60e1147232bd831bcc2f'),
  ($q$Verbal Ability$q$,7,$q$Verbal Ability$q$,'7b7ac621792d15474c7c58c2f2b1c7b7'),
  ($q$Verbal Ability$q$,8,$q$Verbal Ability$q$,'70054b614bd2847ec5e3e67ef1aa0a10'),
  ($q$Verbal Ability$q$,9,$q$Verbal Ability$q$,'57d5c8ea163fa43da1112c72812844e4'),
  ($q$Verbal Ability$q$,10,$q$Verbal Ability$q$,'17b3dc1088bb6c1c9c96307d11df511f'),
  ($q$Verbal Ability$q$,11,$q$Verbal Ability$q$,'093f7dddbeaa551786dc82571dcf6d99'),
  ($q$Verbal Ability$q$,12,$q$Verbal Ability$q$,'0555552a7a976f64eada6eb9a8b3cf95'),
  ($q$Verbal Ability$q$,13,$q$Verbal Ability$q$,'3c3a5cbb53a87756c25bbf5833627ae0'),
  ($q$Verbal Ability$q$,14,$q$Verbal Ability$q$,'016eea3724ae700794ac1ba2c02649b7'),
  ($q$Verbal Ability$q$,15,$q$Verbal Ability$q$,'53de87992482da949e3e0d8202a214a4'),
  ($q$Verbal Ability$q$,16,$q$Verbal Ability$q$,'adad65d9c6020c008d766e57938c8d14'),
  ($q$Verbal Ability$q$,17,$q$Verbal Ability$q$,'20371e783ca4fd7f2700d7c8a3b4360d'),
  ($q$Verbal Ability$q$,18,$q$Verbal Ability$q$,'87f01041c82166f44be6d74d39156e71'),
  ($q$Verbal Ability$q$,19,$q$Verbal Ability$q$,'053b18cf085df091b13f2871b8e1df74'),
  ($q$Verbal Ability$q$,20,$q$Verbal Ability$q$,'82cfd486368f37a5bac40836bc174e13'),
  ($q$Verbal Ability$q$,21,$q$Verbal Ability$q$,'bd0a9d93203fd93130a152487010a1e4'),
  ($q$Verbal Ability$q$,22,$q$Verbal Ability$q$,'126db08679861280e22085b93ab1b7ed'),
  ($q$Verbal Ability$q$,23,$q$Verbal Ability$q$,'2375362fe809fe48201b1bc7580855bd'),
  ($q$Verbal Ability$q$,24,$q$Verbal Ability$q$,'cc5c75bb50fc07652788b79997dbfbc1'),
  ($q$Verbal Ability$q$,25,$q$Verbal Ability$q$,'32caa1187391438d40c2ea4c71e67a5c')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='ce-verbal-practice';
insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions,section_targets)
values ('ce-analytical-practice',$q$Common Entrance – Analytical Thinking Section Test$q$,$q$25-question section test on Analytical Thinking drawn from the full pool, mixed difficulty, 1 mark each.$q$,(select id from domains where name=$q$Analytical Thinking$q$),'entrance','mixed','section',30,40,25,$q${"Analytical Thinking": 25}$q$::jsonb)
on conflict (slug) do update set description=excluded.description, section_targets=excluded.section_targets, target_questions=excluded.target_questions;
delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='ce-analytical-practice');
insert into library_exam_questions(library_exam_id,question_id,section,position)
select le.id,qq.id,v.sec,v.pos from library_exams le
cross join (values
  ($q$Analytical Thinking$q$,1,$q$Analytical Thinking$q$,'0586b79aa3e37870017fca312ece5e06'),
  ($q$Analytical Thinking$q$,2,$q$Analytical Thinking$q$,'2534410a3bf53726c2d861c842845ec0'),
  ($q$Analytical Thinking$q$,3,$q$Analytical Thinking$q$,'5c8f2f958c11cdb950c448ca0c9998eb'),
  ($q$Analytical Thinking$q$,4,$q$Analytical Thinking$q$,'7c6070244bcca88dee859d4fa4cdbce5'),
  ($q$Analytical Thinking$q$,5,$q$Analytical Thinking$q$,'4ffc4e4afd93ecea83087f7df19c5771'),
  ($q$Analytical Thinking$q$,6,$q$Analytical Thinking$q$,'b5917eea37c330dfd2368c1a701897bd'),
  ($q$Analytical Thinking$q$,7,$q$Analytical Thinking$q$,'0c15156ce20036fd752f1a2294e236a8'),
  ($q$Analytical Thinking$q$,8,$q$Analytical Thinking$q$,'0aa152ea574444e75764dbfb2b88bf30'),
  ($q$Analytical Thinking$q$,9,$q$Analytical Thinking$q$,'8b12e0f17d2a83854b5a87e420127f2c'),
  ($q$Analytical Thinking$q$,10,$q$Analytical Thinking$q$,'22d1acc539ea75800e36d2132a33ff45'),
  ($q$Analytical Thinking$q$,11,$q$Analytical Thinking$q$,'00f2c070cbe94ba306ee14b6512c1c78'),
  ($q$Analytical Thinking$q$,12,$q$Analytical Thinking$q$,'d32a1c8f969a7ce77f259ce9decb359d'),
  ($q$Analytical Thinking$q$,13,$q$Analytical Thinking$q$,'34b1d493b7ceb7661bfcccdf96be1951'),
  ($q$Analytical Thinking$q$,14,$q$Analytical Thinking$q$,'17ccbfaa7f243d57d7f4d039a472c7e8'),
  ($q$Analytical Thinking$q$,15,$q$Analytical Thinking$q$,'a9490cc6890dcfaebda07917733b2648'),
  ($q$Analytical Thinking$q$,16,$q$Analytical Thinking$q$,'650aaf19022feef789e4e12b12250bea'),
  ($q$Analytical Thinking$q$,17,$q$Analytical Thinking$q$,'2f25c88723f70960b8a9b4c5b2a1552f'),
  ($q$Analytical Thinking$q$,18,$q$Analytical Thinking$q$,'1de09c7d8e960769aaa2fab5937b2809'),
  ($q$Analytical Thinking$q$,19,$q$Analytical Thinking$q$,'0374bd7c775924209153e53d1617262f'),
  ($q$Analytical Thinking$q$,20,$q$Analytical Thinking$q$,'abb687db640d58311ec266e3576ffae9'),
  ($q$Analytical Thinking$q$,21,$q$Analytical Thinking$q$,'9700b5479a08261d60a0dbe6352d9f5d'),
  ($q$Analytical Thinking$q$,22,$q$Analytical Thinking$q$,'7b4e0dcb7a07a00599ff842b52cb2f75'),
  ($q$Analytical Thinking$q$,23,$q$Analytical Thinking$q$,'48dd4df4a1aac2a2d8ed42b46c311642'),
  ($q$Analytical Thinking$q$,24,$q$Analytical Thinking$q$,'261bf067102db56890a1099081e4ef84'),
  ($q$Analytical Thinking$q$,25,$q$Analytical Thinking$q$,'99e416e865d248b9c0ec3170eb7f2054')
) as v(sec,pos,dom,h)
join domains d on d.name=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h
where le.slug='ce-analytical-practice';

select * from validate_all_library_exams();
