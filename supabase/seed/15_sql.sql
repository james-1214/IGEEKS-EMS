-- sql: 63 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which SQL statement retrieves rows from a table?$q$,null,$q$["GET", "SELECT", "READ", "FETCH"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$SELECT is the query statement. The others are not SQL statements for reading rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which clause filters rows before they are returned?$q$,null,$q$["WHERE", "HAVING", "LIMIT", "GROUP BY"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$WHERE keeps only the rows that satisfy a condition. HAVING filters groups after aggregation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword removes duplicate rows from a result?$q$,null,$q$["UNIQUE", "DIFFERENT", "SINGLE", "DISTINCT"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$SELECT DISTINCT returns each distinct row once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which clause sorts the result?$q$,null,$q$["SORT BY", "ARRANGE", "ORDER BY", "GROUP BY"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$ORDER BY sorts ascending by default. Add DESC for descending order.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator matches a text pattern such as names starting with 'A'?$q$,null,$q$["EQUALS", "MATCH", "LIKE", "SIMILAR"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$name LIKE 'A%' matches values that start with A. % stands for any run of characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does SELECT * FROM students return?$q$,null,$q$["Only the primary key column", "Every column of every row in students", "The number of rows", "Only the first row"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The asterisk means all columns, and with no WHERE clause all rows are returned.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which statement adds new rows to a table?$q$,null,$q$["APPEND", "ADD", "INSERT", "UPDATE"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$INSERT INTO table (columns) VALUES (...) creates rows. UPDATE changes existing ones.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which statement changes values in existing rows?$q$,null,$q$["ALTER", "MODIFY", "UPDATE", "CHANGE"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$UPDATE ... SET column = value [WHERE ...]. ALTER changes the table structure, not its rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which constraint uniquely identifies each row and does not allow NULL?$q$,null,$q$["PRIMARY KEY", "CHECK", "FOREIGN KEY", "DEFAULT"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A primary key is unique and not null. A table can have only one.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(*) from emp;$q$,null,$q$["1", "5", "6", "4"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$COUNT(*) counts every row, and the table has 5 rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select max(sal) from emp;$q$,null,$q$["60", "50", "70", "240"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$MAX returns the largest salary, 70.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(dept) from emp;$q$,null,$q$["2", "1", "4", "5"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$COUNT(column) ignores NULLs. Ed has no department, so 4 values are counted.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(distinct dept) from emp;$q$,null,$q$["3", "4", "2", "5"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The distinct non-null departments are IT and HR.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select sum(sal) from emp where dept = 'HR';$q$,null,$q$["160", "110", "40", "80"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Cy and Di earn 40 each, so the sum is 80.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select (avg(sal))::int from emp where dept = 'IT';$q$,null,$q$["120", "50", "60", "70"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The IT salaries are 50 and 70, whose average is 60.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(*) from emp where dept is null;$q$,null,$q$["4", "1", "5", "0"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$NULL cannot be compared with =. IS NULL finds the one row with no department.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select name from emp order by sal desc limit 1;$q$,null,$q$["Ann", "Ed", "Bob", "Cy"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Sorting salaries from high to low and taking the first row gives Bob (70).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

select 1;
select 'a' || 'b';$q$,null,$q$["ba", "ab", "a b", "a||b"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$|| concatenates strings in standard SQL and PostgreSQL.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which clause groups rows so that aggregate functions work on each group?$q$,null,$q$["ORDER BY", "GROUP BY", "PARTITION", "COLLECT"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$GROUP BY puts rows with the same value in one group, and aggregates such as SUM are then computed per group.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$In PostgreSQL, what does the final query return?

create table emp(id int primary key, name text, dept text, sal int);
insert into emp values (1,'Ann','IT',50),(2,'Bob','IT',70),(3,'Cy','HR',40),(4,'Di','HR',40),(5,'Ed',null,60);
select count(*) from emp where sal >= 50;$q$,null,$q$["3", "2", "4", "5"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Ann (50), Bob (70) and Ed (60) earn at least 50.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e join d on e.d_id = d.id;$q$,null,$q$["3", "5", "15", "4"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$An inner join drops Ed, who has no department. The other 4 employees match.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e left join d on e.d_id = d.id;$q$,null,$q$["3", "15", "4", "5"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$A left join keeps every employee, including Ed, whose department columns are NULL.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select d.name from d left join e on e.d_id = d.id where e.id is null;$q$,null,$q$["HR", "Ops", "IT", "Ed"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A left join from d with e.id IS NULL finds departments with no employees. Only Ops has none.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from d cross join e;$q$,null,$q$["5", "15", "8", "3"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A cross join pairs every row of d (3) with every row of e (5): 15 rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the difference between INNER JOIN and LEFT JOIN?$q$,null,$q$["LEFT JOIN also keeps left-table rows that have no match", "INNER JOIN keeps unmatched rows from both tables", "LEFT JOIN only returns matching rows", "There is no difference when a foreign key exists"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$INNER JOIN returns only matching pairs. LEFT JOIN adds the unmatched rows of the left table with NULLs on the right.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Joins$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e where d_id not in (select id from d where name = 'IT');$q$,null,$q$["3", "4", "5", "2"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$d_id values not in {1} are 2 and 2 (Cy, Di). Ed's d_id is NULL, so NULL NOT IN (...) is unknown and he is excluded.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from (select sal from e union select sal from e) x;$q$,null,$q$["5", "2", "10", "4"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$UNION removes duplicates. The distinct salaries are 50, 70, 40 and 60. UNION ALL would keep all 10 rows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select string_agg(d.name, ',' order by d.name) from (select d_id from e group by d_id having sum(sal) > 100) x join d on d.id = x.d_id;$q$,null,$q$["IT,HR", "IT", "HR", "Ops"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$HAVING keeps groups whose salary total exceeds 100. IT totals 120 and HR totals 80.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select coalesce(max(sal), 0) from e where d_id = 3;$q$,null,$q$["NULL", "3", "0", "40"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$No employee is in department 3, so MAX is NULL. COALESCE replaces it with 0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select sum(case when sal >= 50 then 1 else 0 end) from e;$q$,null,$q$["3", "4", "5", "2"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$CASE gives 1 for salaries 50, 70 and 60, so the sum is 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Aggregation & Grouping$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e where sal between 40 and 50;$q$,null,$q$["4", "3", "2", "1"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$BETWEEN is inclusive: 50, 40 and 40 qualify.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select name from e where name like '_o%';$q$,null,$q$["Ann", "Ed", "Cy", "Bob"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$The pattern needs any single character, then 'o'. Only Bob matches.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

select 1;
select length('database');$q$,null,$q$["8", "9", "7", "4"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The word database has 8 characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

select 1;
select substring('database' from 1 for 4);$q$,null,$q$["datab", "base", "atab", "data"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$substring from position 1 for 4 characters returns 'data'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$SELECT & Filtering$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does a foreign key constraint enforce?$q$,null,$q$["Referential integrity: values must exist in the referenced table", "That the column is never NULL", "That the column is unique", "That the column is indexed automatically in every database"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$A foreign key prevents rows that point to a parent row that does not exist.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which normal form removes partial dependencies on part of a composite key?$q$,null,$q$["First normal form (1NF)", "Third normal form (3NF)", "Boyce-Codd normal form (BCNF)", "Second normal form (2NF)"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$2NF requires every non-key attribute to depend on the whole key, not just a part of it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Normalization & Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which ACID property guarantees that committed data survives a system crash?$q$,null,$q$["Atomicity", "Consistency", "Durability", "Isolation"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Durability means a committed transaction is not lost, usually through write-ahead logging.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Transactions & Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the main effect of adding an index to a column?$q$,null,$q$["Faster inserts and updates", "The column becomes unique", "The column can no longer contain NULL", "Faster lookups on that column at the cost of slower writes and more storage"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$An index is an extra structure that must be maintained on every write.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select string_agg(name, ',' order by sal desc, name) from (select * from e order by sal desc, name limit 2) x;$q$,null,$q$["Ann,Ed", "Bob,Ann", "Bob,Ed", "Ed,Bob"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The two highest salaries are Bob (70) and Ed (60).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$In PostgreSQL, what does the final query return?

create table d(id int primary key, name text);
insert into d values (1,'IT'),(2,'HR'),(3,'Ops');
create table e(id int primary key, name text, d_id int references d(id), sal int);
insert into e values (1,'Ann',1,50),(2,'Bob',1,70),(3,'Cy',2,40),(4,'Di',2,40),(5,'Ed',null,60);
select count(*) from e where d_id is null or sal > 60;$q$,null,$q$["2", "5", "1", "3"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Ed has no department and Bob earns 70, so two rows satisfy the OR condition.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(r::text, ',' order by id) from (select id, rank() over (order by amt desc) r from s) x;$q$,null,$q$["5,2,3,3,1", "1,2,3,3,5", "4,2,3,3,1", "5,2,3,4,1"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Amounts in descending order are 50, 30, 20, 20, 10. The two 20s tie for rank 3 and the next rank is 5, leaving a gap.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(r::text, ',' order by id) from (select id, dense_rank() over (order by amt desc) r from s) x;$q$,null,$q$["4,2,3,3,1", "1,2,3,3,4", "4,2,3,4,1", "5,2,3,3,1"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$dense_rank does not leave gaps after ties, so the values 50, 30, 20, 10 rank 1, 2, 3, 4.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(rt::text, ',' order by id) from (select id, sum(amt) over (order by id) rt from s) x;$q$,null,$q$["130,130,130,130,130", "10,40,60,80,130", "10,30,20,20,50", "10,40,60,80,100"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$With ORDER BY the window sum is a running total: 10, 10+30, +20, +20, +50.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(rn::text, ',' order by id) from (select id, row_number() over (partition by rep order by id) rn from s) x;$q$,null,$q$["1,1,1,1,1", "1,2,1,2,1", "2,1,2,1,1", "1,2,3,4,5"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$row_number restarts at 1 for each rep: A has ids 1 and 2, B has 3 and 4, C has 5.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select sum(coalesce(p, 0)) from (select lag(amt) over (order by id) p from s) x;$q$,null,$q$["60", "80", "50", "130"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$lag gives NULL, 10, 30, 20, 20. Treating NULL as 0 the total is 80.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

select 1;
with recursive t(n) as (select 1 union all select n + 1 from t where n < 5) select sum(n) from t;$q$,null,$q$["15", "10", "120", "5"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The recursive CTE produces 1 to 5, whose sum is 15.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from s a join s b on a.amt = b.amt and a.id < b.id;$q$,null,$q$["2", "1", "0", "4"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Only ids 3 and 4 share an amount (20). The a.id < b.id condition counts the pair once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from s where amt > (select avg(amt) from s);$q$,null,$q$["1", "5", "3", "2"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The average is 26, so 30 and 50 are above it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from s a where exists (select 1 from s b where b.rep = a.rep and b.id <> a.id);$q$,null,$q$["2", "3", "4", "5"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Reps A and B each have two rows, so each of their 4 rows has another row with the same rep. C has only one.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(rep, ',' order by rep) from (select rep from s group by rep having sum(amt) >= 50) x;$q$,null,$q$["B,C", "A,B,C", "A", "C"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The group totals are A = 40, B = 40, C = 50. Only C reaches 50.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from (select amt from s group by amt having count(*) > 1) x;$q$,null,$q$["2", "5", "0", "1"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Only the amount 20 appears more than once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select max(amt) filter (where rep = 'A') from s;$q$,null,$q$["50", "40", "10", "30"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$FILTER restricts the aggregate to rep A rows (10 and 30), so MAX is 30.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select string_agg(distinct rep, ',' order by rep) from s;$q$,null,$q$["A", "A,B,C", "A,A,B,B,C", "C,B,A"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$DISTINCT removes duplicate reps before they are joined into one string.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select count(*) from (select id from s except select id from s where amt >= 30) x;$q$,null,$q$["3", "2", "5", "4"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$EXCEPT removes ids 2 and 5 (amounts 30 and 50) from the five ids, leaving 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$In PostgreSQL, what does the final query return?

create table s(id int primary key, rep text, amt int);
insert into s values (1,'A',10),(2,'A',30),(3,'B',20),(4,'B',20),(5,'C',50);
select coalesce(nullif(amt, 20), -1) from s where id = 3;$q$,null,$q$["0", "NULL", "-1", "20"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$NULLIF returns NULL when the two values are equal. COALESCE then replaces that NULL with -1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which isolation level in the SQL standard prevents dirty reads, non-repeatable reads and phantom reads?$q$,null,$q$["READ COMMITTED", "READ UNCOMMITTED", "REPEATABLE READ", "SERIALIZABLE"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Only SERIALIZABLE rules out all three anomalies in the standard. (PostgreSQL's REPEATABLE READ also avoids phantoms, but the standard does not require it.)$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Transactions & Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a deadlock?$q$,null,$q$["Two or more transactions each wait for a lock held by another, so none can proceed", "A failed COMMIT", "A table that cannot be read", "A transaction that runs for too long"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The database detects the cycle and aborts one transaction so the others can continue.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Transactions & Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a covering index?$q$,null,$q$["An index that contains every column a query needs, so the table need not be read", "A temporary index created by the optimiser", "An index shared by two tables", "An index on the primary key"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$With a covering index the engine can answer the query from the index alone (an index-only scan).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DDL & Constraints$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What extra rule does Boyce-Codd normal form (BCNF) add to third normal form?$q$,null,$q$["Every determinant must be a candidate key", "Every table must have a surrogate key", "No multi-valued attributes", "No transitive dependencies on non-key attributes only"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$BCNF requires that whenever X determines Y, X must be a superkey. It fixes rare anomalies that 3NF allows.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Normalization & Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A query filters WHERE LOWER(email) = 'a@x.com' on a large table with a normal index on email. Why might the index not be used?$q$,null,$q$["Indexes only work on numbers", "LOWER is not a SQL function", "The function on the column prevents a plain index lookup", "The index is too large"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$A plain index stores the raw values. Use an expression index on LOWER(email), or a case-insensitive type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Normalization & Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does EXPLAIN ANALYZE show that EXPLAIN alone does not?$q$,null,$q$["Which users have access", "The table definitions", "The actual run times and row counts from executing the query", "The query's syntax errors"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$EXPLAIN shows the planned strategy. ANALYZE runs the query and reports real timings. Beware: it really executes data-changing statements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Normalization & Design$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A column contains NULLs. What does WHERE col <> 5 do with rows where col is NULL?$q$,null,$q$["Treats NULL as 0", "Includes them, because NULL is not 5", "Raises an error", "Excludes them, because NULL <> 5 is unknown"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Comparisons with NULL give unknown, and WHERE keeps only rows where the condition is true. Use IS DISTINCT FROM to include them.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the difference between UNION and UNION ALL?$q$,null,$q$["They are identical", "UNION removes duplicate rows and UNION ALL keeps them", "UNION needs the same table and UNION ALL does not", "UNION ALL removes duplicates and UNION keeps them"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$UNION ALL is faster because it skips the duplicate-removal step.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Subqueries, Windows & CTEs$q$,'igeeks-v3','validated' from domains d where d.name=$q$SQL & Databases$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
