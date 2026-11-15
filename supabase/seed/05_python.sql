-- python: 61 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword defines a function in Python?$q$,null,$q$["fun", "func", "function", "def"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Functions are created with def.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What type does 3 / 2 produce in Python 3?$q$,null,$q$["int", "double", "decimal", "float"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$/ always produces a float; // is floor division.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which of these data types is immutable?$q$,null,$q$["tuple", "dict", "set", "list"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Tuples cannot be changed after creation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does len({1, 2, 2, 3}) return?$q$,null,$q$["3", "4", "2", "It raises an error"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$A set removes duplicates, leaving 1, 2 and 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which list method adds an item to the end?$q$,null,$q$["push", "insert_end", "add", "append"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$append adds one item at the end.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the // operator do?$q$,null,$q$["Raises to a power", "Float division", "Comments the line", "Floor division"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$// divides and rounds down.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does list(range(2, 8, 2)) produce?$q$,null,$q$["[2, 4, 6, 8]", "[2, 4, 6]", "[2, 3, 4, 5, 6, 7]", "[4, 6, 8]"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$range stops before 8 and steps by 2.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which statement creates a dictionary?$q$,null,$q$["d = {'a': 1}", "d = ('a': 1)", "d = <'a': 1>", "d = ['a': 1]"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Curly braces with key: value pairs make a dict.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does a decorator do?$q$,null,$q$["Creates a thread", "Wraps a function to extend its behaviour", "Imports a module", "Defines a class"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$A decorator takes a function and returns a new function.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the GIL do in CPython?$q$,null,$q$["Collects garbage", "Allows true parallel threads", "Compiles code to machine code", "Lets only one thread execute Python bytecode at a time"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The Global Interpreter Lock limits CPU-bound threading.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the best way to open a file so it is always closed?$q$,null,$q$["f.open(path)", "f = open(path) and hope", "Use eval", "with open(path) as f:"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The with statement closes the file even on errors.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does *args collect in a function definition?$q$,null,$q$["A dictionary", "Extra positional arguments as a tuple", "Keyword arguments", "A set"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$*args gathers any extra positional arguments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the average time complexity of x in some_set?$q$,null,$q$["O(log n)", "O(1)", "O(n)", "O(n log n)"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Sets are hash based, so membership is constant time on average.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these types are mutable?$q$,null,$q$["str", "tuple", "dict", "list"]$q$::jsonb,$q$[2, 3]$q$::jsonb,3,$q$Lists and dictionaries can be changed in place.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which statements about generators are true?$q$,null,$q$["They produce values lazily", "They store all values in memory", "They use yield", "They can be iterated only once"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,4,$q$Generators yield one value at a time and are exhausted after one pass.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$Python uses indentation to define code blocks.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Indentation is part of the syntax.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$A Python list must contain items of the same type.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Lists can mix types.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$is compares identity while == compares values.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Two equal lists are == but not necessarily the same object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
print([1, 2, 3][-1])$q$,null,$q$["3", "1", "An error", "-1"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Index -1 is the last element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
print('ab' * 2 + 'c')$q$,null,$q$["An error", "ab2c", "abc", "ababc"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$'ab' * 2 repeats the string, then 'c' is appended.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is printed?
def f(x, l=[]):
    l.append(x)
    return l
f(1)
print(f(2))$q$,null,$q$["[1, 2]", "[2]", "[1]", "An error"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The default list is created once and shared across calls.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$print('Total: ' + 5) raises an error. What is the fix?$q$,null,$q$["Use +=", "Use int('Total')", "Use str(5) or an f-string", "Remove print"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Strings and ints cannot be added without conversion.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$You must process a 5 GB text file with little memory. Which approach is best?$q$,null,$q$["Call readlines()", "Iterate over the file object line by line", "Call read() and split it", "Load it with eval"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Iterating a file reads lazily, one line at a time.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Errors & Modules$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Count vowels$q$,$q$Count vowels$q$,null,null,3,$q$Loop over the characters and count those in the vowel set.$q$,$q${"description": "Count the vowels (a, e, i, o, u, ignoring case) in a line of text.", "input_format": "A single line of text.", "output_format": "Print the number of vowels.", "constraints": "1 <= length <= 1000", "examples": [{"input": "Hello World", "output": "3"}, {"input": "PYTHON", "output": "1"}]}$q$::jsonb,array['python'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$Hello World$q$,$q$3$q$,false,1),($q$PYTHON$q$,$q$1$q$,false,2),($q$aeiou AEIOU$q$,$q$10$q$,true,3),($q$rhythm$q$,$q$0$q$,true,4),($q$Programming is fun$q$,$q$5$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Python$q$ and qq.text=$q$Count vowels$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Balanced brackets$q$,$q$Balanced brackets$q$,null,null,5,$q$Push openers on a stack and match each closer with the top of the stack.$q$,$q${"description": "Check whether a string of brackets ()[]{} is balanced.", "input_format": "A single line containing only ( ) [ ] { }.", "output_format": "Print YES if balanced, otherwise NO.", "constraints": "1 <= length <= 1000", "examples": [{"input": "{[()]}", "output": "YES"}, {"input": "([)]", "output": "NO"}]}$q$::jsonb,array['python'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q${[()]}$q$,$q$YES$q$,false,1),($q$([)]$q$,$q$NO$q$,false,2),($q$((()))$q$,$q$YES$q$,true,3),($q$((($q$,$q$NO$q$,true,4),($q${[}]$q$,$q$NO$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Python$q$ and qq.text=$q$Balanced brackets$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(type(5))$q$,null,$q$["number", "int", "<class 'int'>", "<type 'int'>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$type() returns the class of the object, which Python 3 prints as <class 'int'>.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(len('hello'))$q$,null,$q$["hello", "5", "6", "4"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$len() counts the characters in a string.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which symbol starts a single-line comment in Python?$q$,null,$q$["--", "#", "//", "/*"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Everything after # on a line is ignored. Python has no /* */ comments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(7 // 2)$q$,null,$q$["4", "2", "3.5", "3"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$// is floor division, so 7 // 2 is 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(2 ** 3)$q$,null,$q$["8", "6", "23", "5"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$** is the exponent operator, so 2 ** 3 is 8.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print('ab' * 3)$q$,null,$q$["ab3", "ababab", "aaabbb", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Multiplying a string by an integer repeats it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword defines a function?$q$,null,$q$["define", "function", "def", "fn"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A function is created with def name(parameters):.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(bool([]))$q$,null,$q$["None", "True", "False", "[]"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$An empty list is falsy, so bool([]) is False.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print([1, 2, 3][-1])$q$,null,$q$["2", "3", "1", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A negative index counts from the end, so -1 is the last element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which built-in function reads a line of text typed by the user?$q$,null,$q$["input", "get", "read", "scanf"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$input(prompt) returns what the user typed as a string.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(10 / 4)$q$,null,$q$["2.0", "2", "3", "2.5"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$/ is true division and always returns a float in Python 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print('Hello'[1])$q$,null,$q$["Hello", "H", "l", "e"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Indexes start at 0, so index 1 is the second character.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which list method adds an item to the end of the list?$q$,null,$q$["append", "add", "push", "insert_end"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$list.append(x) adds x at the end. insert() needs a position.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this code print?

print(len({1, 2, 2, 3}))$q$,null,$q$["2", "4", "3", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A set keeps only unique values, so {1, 2, 2, 3} has 3 elements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print([x * x for x in range(4)])$q$,null,$q$["[0, 2, 4, 6]", "[0, 1, 2, 3]", "[1, 4, 9, 16]", "[0, 1, 4, 9]"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$range(4) gives 0 to 3, and each value is squared.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print(sorted('bca'))$q$,null,$q$["['b', 'c', 'a']", "abc", "['a', 'b', 'c']", "('a', 'b', 'c')"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$sorted() always returns a list, here of single characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

d = {'a': 1}
print(d.get('b', 0))$q$,null,$q$["1", "0", "KeyError", "None"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$dict.get returns the default (0) instead of raising KeyError when the key is missing.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print('a,b,c'.split(','))$q$,null,$q$["a b c", "('a', 'b', 'c')", "['a,b,c']", "['a', 'b', 'c']"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$split(',') breaks the string at each comma and returns a list.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print(list(enumerate('ab', start=1)))$q$,null,$q$["[(0, 'a'), (1, 'b')]", "{1: 'a', 2: 'b'}", "[('a', 1), ('b', 2)]", "[(1, 'a'), (2, 'b')]"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$enumerate pairs a counter with each item. start=1 begins counting at 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

def f(a, l=[]):
    l.append(a)
    return l

f(1)
print(f(2))$q$,null,$q$["[2]", "[]", "[1, 2]", "[1]"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$The default list is created once, when the function is defined, and shared by every call that omits it.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

def f():
    try:
        return 'try'
    finally:
        print('finally', end=' ')
print(f())$q$,null,$q$["finally try", "try", "finally", "try finally"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$The finally block runs before the function actually returns, so 'finally ' is printed first.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Errors & Modules$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this code print?

print(any([0, '', None]), all([]))$q$,null,$q$["True True", "False True", "True False", "False False"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$any() is False when nothing is truthy. all() of an empty sequence is True.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Errors & Modules$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

a = [1, 2]
b = a
b.append(3)
print(a)$q$,null,$q$["[3]", "[1, 2]", "[1, 2, 3]", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$a and b name the same list, so changes through b are visible through a.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

a = [1]
b = [1]
print(a == b, a is b)$q$,null,$q$["False True", "False False", "True False", "True True"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$== compares values and is compares identity. The two lists are equal but separate objects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

print(round(2.5), round(3.5))$q$,null,$q$["3 3", "2 3", "3 4", "2 4"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Python rounds halves to the nearest even number (banker's rounding), so 2.5 becomes 2 and 3.5 becomes 4.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

print(bool('False'))$q$,null,$q$["False", "True", "None", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Any non-empty string is truthy, whatever it says.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

print(divmod(-7, 2))$q$,null,$q$["(-3, -1)", "(-4, -1)", "(-4, 1)", "(-3, 1)"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Floor division rounds towards minus infinity, so -7 // 2 is -4 and the remainder is -7 - (-4 * 2) = 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

print({1, 2} | {2, 3}, {1, 2} & {2, 3})$q$,null,$q$["{1, 2, 3} {2}", "{1, 3} {2}", "{2} {1, 2, 3}", "{1, 2} {2, 3}"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$| is union and & is intersection.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Internals$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

fs = [lambda: i for i in range(3)]
print([f() for f in fs])$q$,null,$q$["[2, 2, 2]", "[0, 1, 2]", "[3, 3, 3]", "[0, 0, 0]"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Each lambda looks up i when it is called, after the loop ended with i = 2 (late binding).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

g = (x for x in range(3))
print(sum(g), sum(g))$q$,null,$q$["3 0", "3 3", "0 0", "3 6"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$A generator can be consumed only once. The second sum() sees an exhausted generator.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

def deco(fn):
    def wrapper(*a, **k):
        return fn(*a, **k)
    return wrapper

@deco
def hello():
    pass

print(hello.__name__)$q$,null,$q$["wrapper", "hello", "None", "deco"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Without functools.wraps the decorated function is replaced by wrapper and loses its original name.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

def f(a, *b, c=0):
    return (a, b, c)

print(f(1, 2, 3, c=4))$q$,null,$q$["(1, [2, 3], 4)", "(1, 2, 3, 4)", "(1, (2, 3), 4)", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Extra positional arguments are collected into the tuple b. c can only be given by keyword.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Functions & Scope$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this code print?

class A:
    x = []

a = A()
b = A()
a.x.append(1)
print(b.x)$q$,null,$q$["Error", "[]", "[1]", "None"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$x is a class attribute shared by all instances, so the append is visible through b.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the Global Interpreter Lock (GIL) in CPython do?$q$,null,$q$["Lets only one thread execute Python bytecode at a time within a process", "Locks global variables against change", "Makes all code run on one CPU core of the machine", "Prevents any use of threads"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The GIL means CPU-bound threads do not run in parallel. I/O-bound threads and multiple processes still help.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword catches an exception in Python?$q$,null,$q$["handle", "except", "catch", "rescue"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$try: ... except ValueError: ... is the structure. A finally block always runs.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Errors & Modules$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator checks whether a value is in a list?$q$,null,$q$["includes", "contains", "has", "in"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$3 in [1, 2, 3] is True.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Data Structures$q$,'igeeks-v3','validated' from domains d where d.name=$q$Python$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
