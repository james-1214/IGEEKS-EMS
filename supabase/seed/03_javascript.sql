-- javascript: 62 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword declares a block-scoped variable that can be reassigned?$q$,null,$q$["let", "const", "var", "def"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$let is block scoped and reassignable.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does typeof null return?$q$,null,$q$["\"null\"", "\"number\"", "\"undefined\"", "\"object\""]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$This is a long-standing quirk of JavaScript.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which array method adds an element to the end?$q$,null,$q$["pop", "shift", "unshift", "push"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$push appends; pop removes from the end.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the result of [1,2,3].map(x => x * 2)?$q$,null,$q$["[2, 4, 6]", "6", "undefined", "[1, 2, 3]"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$map returns a new array with each item transformed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which array method returns a new array of items that pass a test?$q$,null,$q$["reduce", "map", "filter", "forEach"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$filter keeps the elements for which the callback is truthy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does === check?$q$,null,$q$["Value only", "Value and type", "Type only", "Reference only"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Strict equality does no type coercion.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which statement about const is true?$q$,null,$q$["Object properties can never change", "The binding cannot be reassigned", "It only stores numbers", "It is hoisted with a value"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$const prevents reassignment, not mutation of objects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a closure?$q$,null,$q$["A function with no name", "A class method", "An immediately invoked function", "A function together with access to its outer scope"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Closures keep outer variables alive for inner functions.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does Promise.all do when one promise rejects?$q$,null,$q$["Waits for the others and resolves", "Rejects immediately with that reason", "Returns undefined", "Ignores the rejection"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Promise.all fails fast on the first rejection.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$After the current synchronous code finishes, which queue is processed first?$q$,null,$q$["Network queue", "Macrotask queue (setTimeout)", "Microtask queue (promise callbacks)", "Render queue"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Microtasks run before the next macrotask.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which method converts a JSON string into an object?$q$,null,$q$["JSON.object", "JSON.decode", "JSON.stringify", "JSON.parse"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$JSON.parse reads JSON text; stringify writes it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does Array.prototype.reduce return?$q$,null,$q$["A new array always", "The first element", "A single accumulated value", "Nothing"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$reduce folds the array into one result.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are falsy in JavaScript?$q$,null,$q$["\"\" (empty string)", "null", "[] (empty array)", "0"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,3,$q$An empty array is an object and therefore truthy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which array methods do NOT modify the original array?$q$,null,$q$["concat", "splice", "slice", "sort"]$q$::jsonb,$q$[0, 2]$q$::jsonb,3,$q$splice and sort mutate in place.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$JavaScript and Java are the same language.$q$,null,null,$q$"false"$q$::jsonb,1,$q$They are different languages with different designs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$Arrow functions have their own this binding.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Arrow functions take this from the surrounding scope.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$let variables cannot be accessed before their declaration because of the temporal dead zone.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Accessing them early throws a ReferenceError.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is logged?
console.log(0.1 + 0.2 === 0.3)$q$,null,$q$["true", "false", "NaN", "undefined"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Floating point rounding makes the sum 0.30000000000000004.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is logged?
console.log([1,2,3].length + '1')$q$,null,$q$["31", "4", "\"1\"", "NaN"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$3 + '1' concatenates to the string 31.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is logged?
for (var i = 0; i < 3; i++) setTimeout(() => console.log(i), 0)$q$,null,$q$["0 1 2", "0 0 0", "undefined", "3 3 3"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$var is function scoped, so all callbacks see the final i = 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$const user = {name:'A'}; user = {name:'B'}; throws an error. Why?$q$,null,$q$["A semicolon is missing", "const bindings cannot be reassigned", "Objects are immutable", "name is reserved"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Reassigning a const binding throws a TypeError.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$const r = fetch(url); console.log(r.status) prints undefined. What is the fix?$q$,null,$q$["Call r()", "Use var instead of const", "await the promise (or use .then) before reading status", "Use eval"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$fetch returns a Promise, not the response itself.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$A search box calls an API on every keystroke. Which technique reduces the calls the most naturally?$q$,null,$q$["Use eval", "Debounce the input handler", "Use synchronous XHR", "Increase font size"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Debouncing waits until typing pauses before calling.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Sum of even numbers$q$,$q$Sum of even numbers$q$,null,null,3,$q$Filter even numbers with x % 2 === 0 and add them up.$q$,$q${"description": "Given n integers, print the sum of the even numbers.", "input_format": "The first line has n. The second line has n space-separated integers.", "output_format": "Print a single integer: the sum of all even numbers (0 if none).", "constraints": "1 <= n <= 1000, -10^6 <= each number <= 10^6", "examples": [{"input": "5\n1 2 3 4 5", "output": "6"}, {"input": "3\n1 3 5", "output": "0"}]}$q$::jsonb,array['javascript'],$q${"lang": "javascript", "starter": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$5
1 2 3 4 5$q$,$q$6$q$,false,1),($q$3
1 3 5$q$,$q$0$q$,false,2),($q$4
2 4 6 8$q$,$q$20$q$,true,3),($q$6
10 -2 7 8 9 0$q$,$q$16$q$,true,4),($q$1
-4$q$,$q$-4$q$,true,5)) as v(i,o,h,p)
where d.name=$q$JavaScript$q$ and qq.text=$q$Sum of even numbers$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Longest word$q$,$q$Longest word$q$,null,null,5,$q$Track the longest word seen so far and replace it only when a strictly longer one appears.$q$,$q${"description": "Print the longest word in a sentence. If several words have the same length, print the first one.", "input_format": "One line containing words separated by single spaces.", "output_format": "Print the longest word.", "constraints": "1 <= length of the line <= 1000", "examples": [{"input": "I love programming in JavaScript", "output": "programming"}, {"input": "a bb cc", "output": "bb"}]}$q$::jsonb,array['javascript'],$q${"lang": "javascript", "starter": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$I love programming in JavaScript$q$,$q$programming$q$,false,1),($q$a bb cc$q$,$q$bb$q$,false,2),($q$hello world$q$,$q$hello$q$,true,3),($q$The quick brown fox jumps$q$,$q$quick$q$,true,4),($q$Node$q$,$q$Node$q$,true,5)) as v(i,o,h,p)
where d.name=$q$JavaScript$q$ and qq.text=$q$Longest word$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword declares a variable that cannot be reassigned?$q$,null,$q$["const", "final", "let", "fixed"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$A const binding cannot be reassigned, although an object it holds can still be modified.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(2 + '3')$q$,null,$q$["23", "'5'", "NaN", "5"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The + operator concatenates when one operand is a string, so the number 2 becomes '2' and the result is '23'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log('5' - 2)$q$,null,$q$["52", "'52'", "3", "NaN"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The - operator only works on numbers, so the string '5' is converted to 5 and the result is 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(typeof 42)$q$,null,$q$["number", "int", "string", "integer"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$JavaScript has a single number type, so typeof 42 is 'number'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator compares both value and type?$q$,null,$q$["===", "==", "=", "!="]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$=== is strict equality and does no type conversion. == converts types first.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(10 % 3)$q$,null,$q$["1", "0", "3.33", "3"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$% is the remainder operator: 10 divided by 3 leaves 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(Boolean(''))$q$,null,$q$["false", "undefined", "true", "null"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$An empty string is falsy, so Boolean('') is false.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(0.1 + 0.2 === 0.3)$q$,null,$q$["undefined", "true", "false", "NaN"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Binary floating point cannot store 0.1 and 0.2 exactly, so the sum is 0.30000000000000004, not 0.3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method turns a JSON string into a JavaScript value?$q$,null,$q$["JSON.stringify", "JSON.decode", "JSON.toObject", "JSON.parse"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$JSON.parse reads text into a value. JSON.stringify does the opposite.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which array method joins all elements into one string?$q$,null,$q$["concat", "merge", "join", "toText"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$[1,2,3].join('-') gives '1-2-3'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log(Math.max(3, 7, 5))$q$,null,$q$["7", "3", "15", "5"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Math.max returns the largest argument, 7.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

console.log('abc'.toUpperCase())$q$,null,$q$["ABC", "undefined", "Error", "[ 'A', 'B', 'C' ]"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$toUpperCase returns a new string with every letter in capitals.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which event fires when a user clicks an element?$q$,null,$q$["press", "select", "click", "tap"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Listeners are attached with addEventListener('click', handler).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$DOM & Events$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log(typeof null)$q$,null,$q$["number", "null", "undefined", "object"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$typeof null is 'object', a long-standing quirk of the language.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log(null == undefined, null === undefined)$q$,null,$q$["true false", "false true", "true true", "false false"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$With loose equality null and undefined are equal to each other. Strict equality also compares type, which differs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log(1 < 2 < 3, 3 > 2 > 1)$q$,null,$q$["true false", "true true", "false true", "false false"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$1 < 2 is true, and true < 3 becomes 1 < 3, which is true. 3 > 2 is true, and true > 1 becomes 1 > 1, which is false.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

function counter() { let n = 0; return () => ++n; }
const c = counter();
c(); c();
console.log(c());$q$,null,$q$["1", "0", "3", "undefined"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The returned function closes over n. It is incremented on each call, so the third call returns 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log(a);
var a = 5;$q$,null,$q$["5", "ReferenceError", "null", "undefined"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$A var declaration is hoisted and initialised with undefined. Only the assignment stays in place.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log([1, 2] + [3])$q$,null,$q$["[1,2,3]", "1,23", "1,2,3", "6"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Arrays are converted to strings before +, so '1,2' + '3' gives '1,23'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

console.log([10, 9, 1].sort())$q$,null,$q$["[ 10, 9, 1 ]", "[ 1, 10, 9 ]", "[ 1, 9, 10 ]", "[ 9, 10, 1 ]"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$sort() compares elements as strings by default, so '1' < '10' < '9'. Pass a compare function for numeric order.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What order are the values logged in?

const log = [];
log.push(1);
setTimeout(() => log.push(2), 0);
Promise.resolve().then(() => log.push(3));
log.push(4);
setTimeout(() => console.log(log.join(' ')), 10);$q$,null,$q$["1 3 4 2", "1 4 2 3", "1 4 3 2", "1 2 3 4"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Synchronous code runs first (1, 4). Then the promise microtask (3) runs before the timer callback (2).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(typeof (async () => 1)())$q$,null,$q$["object", "number", "promise", "function"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$An async function always returns a Promise, and typeof a Promise is 'object'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What happens to Promise.all([p1, p2, p3]) if p2 rejects?$q$,null,$q$["It ignores the rejection", "It resolves with only the successful values", "It rejects immediately with p2's reason", "It waits for all promises and resolves with an array"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Promise.all fails fast. Use Promise.allSettled to get the outcome of every promise.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Async & Promises$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

const out = [];
for (var i = 0; i < 3; i++) setTimeout(() => out.push(i), 0);
setTimeout(() => console.log(out.join(' ')), 10);$q$,null,$q$["undefined", "3 3 3", "0 1 2", "0 0 0"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$var is function-scoped, so all callbacks share one i, which is 3 when they run. Using let would give 0 1 2.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

const o = { n: 'obj', f() { return [1].map(() => this.n)[0]; } };
console.log(o.f());$q$,null,$q$["null", "obj", "undefined", "TypeError"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$An arrow function has no this of its own and uses the this of the enclosing f(), which is called on o. A regular callback function would lose that this.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Closures$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

const a = { x: { y: 1 } };
const b = { ...a };
b.x.y = 2;
console.log(a.x.y);$q$,null,$q$["undefined", "2", "1", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Spread makes a shallow copy. a.x and b.x are the same object, so the change shows through.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

function* g() { yield 1; yield 2; }
console.log([...g()].join());$q$,null,$q$["1", "[object Generator]", "2", "1,2"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Spreading a generator runs it to completion and collects the yielded values.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(Symbol('a') === Symbol('a'))$q$,null,$q$["TypeError", "undefined", "false", "true"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Every Symbol() call creates a unique value, even with the same description.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(0 ?? 'x', 0 || 'x')$q$,null,$q$["0 0", "0 x", "x 0", "x x"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$?? only replaces null or undefined, so 0 is kept. || replaces every falsy value, so 0 becomes 'x'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

const a = { b: null };
console.log(a?.b?.c ?? 'none')$q$,null,$q$["TypeError", "undefined", "none", "null"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Optional chaining stops at null and gives undefined. ?? then supplies the fallback 'none'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(typeof Object.create(null).toString)$q$,null,$q$["undefined", "object", "function", "string"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Object.create(null) makes an object with no prototype, so it does not inherit toString.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why can a WeakMap not use a string as a key?$q$,null,$q$["Strings are too long", "Strings are not hashable in JavaScript", "WeakMap only stores numbers", "Its keys must be objects, which can be garbage collected when nothing else refers to them"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$WeakMap holds its keys weakly. Primitive values have no identity that could be collected, so they are not allowed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does a Proxy get trap let you do?$q$,null,$q$["Intercept reads of properties on the target object", "Freeze the object", "Stop the object being garbage collected", "Copy the object deeply"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The handler's get(target, prop, receiver) runs whenever a property is read through the proxy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

console.log(Array(3).fill().map((_, i) => i * 2))$q$,null,$q$["[ <3 empty items> ]", "[ 0, 1, 2 ]", "[ 0, 2, 4 ]", "[ 2, 4, 6 ]"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$fill() with no argument fills the empty slots with undefined, so map visits every index and doubles it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Modules & Modern JS$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which array method removes the last element and returns it?$q$,null,$q$["remove", "pop", "shift", "splice only"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$pop() removes from the end. shift() removes from the start.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Objects$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$How do you write a single-line comment in JavaScript?$q$,null,$q$["-- comment", "# comment", "<!-- comment -->", "// comment"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$// starts a line comment and /* ... */ a block comment.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which function writes a message to the browser console?$q$,null,$q$["echo()", "window.write()", "console.log()", "print()"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$console.log is the usual way to inspect values while developing.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Types & Operators$q$,'igeeks-v3','validated' from domains d where d.name=$q$JavaScript$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
