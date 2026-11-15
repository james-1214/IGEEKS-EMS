-- cpp: 60 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator accesses a member through a pointer?$q$,null,$q$[".", "->", "&", "::"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$ptr->member is shorthand for (*ptr).member.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which header is needed for cout?$q$,null,$q$["<stdio.h>", "<iostream>", "<conio.h>", "<stream>"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$cout is declared in iostream.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is sizeof(char) in C++?$q$,null,$q$["2", "4", "1", "8"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The standard defines sizeof(char) as exactly 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does a constructor do?$q$,null,$q$["Initialises an object when it is created", "Declares a class", "Destroys the object", "Copies a pointer"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Constructors run automatically on object creation.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which container offers average O(1) lookup by key?$q$,null,$q$["list", "map", "unordered_map", "vector"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$unordered_map is hash based; map is a balanced tree.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is a reference in C++?$q$,null,$q$["A pointer that can be null", "A new copy of an object", "An alias for an existing variable", "A macro"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$A reference must be bound at initialisation and cannot be reseated.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which keyword enables runtime polymorphism for a member function?$q$,null,$q$["static", "virtual", "inline", "friend"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$virtual functions are dispatched on the dynamic type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the new operator return?$q$,null,$q$["A pointer to the allocated object", "void", "A reference", "An int handle"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$new returns a typed pointer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does RAII stand for?$q$,null,$q$["Resource Acquisition Is Initialization", "Reference And Instance Initialisation", "Runtime Allocation Interface", "Random Access In Iterators"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Resources are tied to object lifetime and released in destructors.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which smart pointer represents exclusive ownership?$q$,null,$q$["std::shared_ptr", "std::weak_ptr", "std::unique_ptr", "std::auto_ptr (modern)"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$unique_ptr cannot be copied, only moved.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Deleting a derived object through a base pointer whose destructor is NOT virtual results in:$q$,null,$q$["Correct cleanup", "A guaranteed exception", "Undefined behaviour", "A compile error"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$The derived destructor may not run; the behaviour is undefined.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which statement about std::vector is true?$q$,null,$q$["It is a linked list", "It has a fixed size", "It keeps elements sorted", "Elements are stored contiguously and it grows dynamically"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Contiguous storage allows fast random access.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which keyword introduces a template?$q$,null,$q$["typedef", "template", "macro", "generic"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$template<typename T> defines a generic function or class.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are STL containers?$q$,null,$q$["map", "vector", "stack", "array_list"]$q$::jsonb,$q$[0, 1, 2]$q$::jsonb,3,$q$array_list is not a C++ container.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which of these operators can be overloaded in C++?$q$,null,$q$["::", ".", "+", "[]"]$q$::jsonb,$q$[2, 3]$q$::jsonb,4,$q$The scope and member-access operators cannot be overloaded.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$C++ supports operator overloading.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Most operators can be overloaded for user types.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$A reference can be reassigned to refer to another object after initialisation.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Assignment to a reference assigns to the referred object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$A class with a pure virtual function is abstract.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Abstract classes cannot be instantiated.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
int a = 10; int &b = a; b++; cout << a;$q$,null,$q$["10", "11", "12", "An error"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$b is an alias of a, so a becomes 11.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
cout << 7 / 2 << ' ' << 7 % 2;$q$,null,$q$["4 1", "3 1", "3.5 1", "3 0"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Integer division gives 3 and the remainder is 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is printed?
int x = 3; int y = x++ * 2; cout << y << ' ' << x;$q$,null,$q$["3 4", "8 4", "6 4", "6 3"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$x++ yields 3 (so y = 6) and then x becomes 4.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$Why does int arr[3] = {1, 2, 3, 4}; fail to compile?$q$,null,$q$["It must use new", "arr is a reserved word", "Arrays cannot hold ints", "Too many initialisers for the array size"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Four values cannot fit in three elements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$What is the bug?
int* p = new int[5];
delete p;$q$,null,$q$["p must be const", "Missing return statement", "Arrays allocated with new[] must be released with delete[]", "There is no bug"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Mismatched new[]/delete is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$You return a large std::vector from a function and want to avoid copying it. What does modern C++ rely on?$q$,null,$q$["Move semantics / return value optimisation", "Passing a raw pointer", "Using global variables", "Making it static"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Moves and RVO transfer ownership without deep copies.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Nth Fibonacci number$q$,$q$Nth Fibonacci number$q$,null,null,3,$q$Iterate N times keeping the last two values.$q$,$q${"description": "Print the N-th Fibonacci number where F(0)=0 and F(1)=1.", "input_format": "A single integer N.", "output_format": "Print F(N).", "constraints": "0 <= N <= 40", "examples": [{"input": "10", "output": "55"}, {"input": "1", "output": "1"}]}$q$::jsonb,array['cpp'],$q${"lang": "cpp", "starter": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$10$q$,$q$55$q$,false,1),($q$1$q$,$q$1$q$,false,2),($q$0$q$,$q$0$q$,true,3),($q$25$q$,$q$75025$q$,true,4),($q$40$q$,$q$102334155$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C++$q$ and qq.text=$q$Nth Fibonacci number$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Count primes up to N$q$,$q$Count primes up to N$q$,null,null,5,$q$Use the Sieve of Eratosthenes for speed.$q$,$q${"description": "Count how many prime numbers are less than or equal to N.", "input_format": "A single integer N.", "output_format": "Print the number of primes <= N.", "constraints": "1 <= N <= 100000", "examples": [{"input": "10", "output": "4"}, {"input": "2", "output": "1"}]}$q$::jsonb,array['cpp'],$q${"lang": "cpp", "starter": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$10$q$,$q$4$q$,false,1),($q$2$q$,$q$1$q$,false,2),($q$1$q$,$q$0$q$,true,3),($q$100$q$,$q$25$q$,true,4),($q$1000$q$,$q$168$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C++$q$ and qq.text=$q$Count primes up to N$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which header declares std::cout?$q$,null,$q$["<cout>", "<stdio.h>", "<iostream>", "<io>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$iostream declares the standard stream objects cin, cout and cerr.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator is used with cout to send output?$q$,null,$q$["::", "<<", ">>", "<-"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$cout << value inserts the value into the output stream. >> is used with cin.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    cout << 7 / 2 << endl;
}$q$,null,$q$["3.5", "3", "4", "2"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Both operands are int, so the division is an integer division.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    int a = 7;
    cout << a / 2.0 << endl;
}$q$,null,$q$["3.50", "3", "4", "3.5"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Dividing by the double 2.0 makes the whole expression a double.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    cout << (5 > 3) << endl;
}$q$,null,$q$["true", "1", "0", "5"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A bool prints as 1 or 0 unless boolalpha is used.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    cout << boolalpha << (5 > 3) << endl;
}$q$,null,$q$["5 > 3", "yes", "true", "1"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$boolalpha makes bool values print as the words true and false.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Operators & Control$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    int x = 5;
    int &r = x;
    r = 10;
    cout << x << endl;
}$q$,null,$q$["5", "Error", "10", "15"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A reference is another name for x, so assigning to r changes x.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword allocates an object on the heap?$q$,null,$q$["create", "malloc only", "alloc", "new"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$new allocates memory and runs the constructor. It must be paired with delete, or smart pointers should be used.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the default access level of members in a class?$q$,null,$q$["protected", "public", "private", "It depends on the compiler"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$In a class members are private by default. In a struct they are public.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does :: mean in std::string?$q$,null,$q$["Pointer access", "Scope resolution: string is looked up inside namespace std", "Comparison", "Division"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The scope resolution operator selects a name from a namespace or class.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the name of a class constructor?$q$,null,$q$["constructor", "init", "new", "The same as the class name"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A constructor has the class name and no return type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    string s = "hi";
    cout << s.size() << endl;
}$q$,null,$q$["2", "3", "1", "hi"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$size() returns the number of characters, excluding any terminator.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    vector<int> v = {1, 2, 3};
    cout << v.size() << endl;
}$q$,null,$q$["3", "0", "2", "4"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The initializer list creates a vector with three elements.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What does for (auto x : v) do?$q$,null,$q$["Copies v into x", "Visits each element of v in turn (a range-based for loop)", "Loops forever", "Declares a variable named auto"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Range-based for loops iterate over containers and arrays. Use auto& to avoid copying.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword makes a variable read-only after initialisation?$q$,null,$q$["readonly", "final", "const", "static"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$const prevents modification through that name.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
struct Base { virtual void f() { cout << "Base\n"; } virtual ~Base() {} };
struct Derived : Base { void f() override { cout << "Derived\n"; } };
int main() {
    Base *p = new Derived();
    p->f();
    delete p;
}$q$,null,$q$["Base Derived", "Nothing", "Base", "Derived"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$f is virtual, so the call is dispatched on the real object type at run time.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
struct Base { void f() { cout << "Base\n"; } virtual ~Base() {} };
struct Derived : Base { void f() { cout << "Derived\n"; } };
int main() {
    Base *p = new Derived();
    p->f();
    delete p;
}$q$,null,$q$["Both", "Derived", "Base", "Compile error"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Without virtual, the function is chosen from the static type of the pointer, which is Base.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    map<string, int> m;
    m["a"];
    cout << m.size() << endl;
}$q$,null,$q$["1", "undefined", "0", "Error"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$operator[] inserts a default-constructed value when the key is missing, so the map now has one entry.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
void f(int v) { v = 5; }
int x = 1;
int main() {
    f(x);
    cout << x << endl;
}$q$,null,$q$["5", "1", "0", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The parameter is a copy. Use int& to modify the caller's variable.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    cout << 5 / 2 << " " << 5 / 2.0 << endl;
}$q$,null,$q$["3 2.5", "2 2.5", "2.5 2.5", "2 2"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The first division has two ints and truncates. The second involves a double.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$STL & Templates$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does RAII mean?$q$,null,$q$["Random access iterator interface", "Reference arguments are always initialised", "Run all initialisers immediately", "Resources are acquired in a constructor and released in the destructor"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Tying a resource to an object's lifetime guarantees cleanup even when exceptions occur.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does marking a member function const promise?$q$,null,$q$["It does not modify the object's visible state", "The function runs at compile time", "The function returns a constant", "The function cannot be overridden"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$A const member function can be called on const objects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP & Classes$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
struct A { A() { cout << "a"; } ~A() { cout << "A"; } };
struct B { B() { cout << "b"; } ~B() { cout << "B"; } };
int main() {
    {
        A a;
        B b;
    }
}$q$,null,$q$["bBaA", "abBA", "abAB", "aAbB"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Objects are constructed in declaration order (a, b) and destroyed in reverse order (B, A).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;
struct Base { virtual void f() { cout << "Base\n"; } };
struct Derived : Base { void f() override { cout << "Derived\n"; } };
int main() {
    Base b = Derived();
    b.f();
}$q$,null,$q$["Nothing", "Compile error", "Derived", "Base"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Assigning a Derived to a Base object slices off the derived part, so the object really is a Base.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <memory>
using namespace std;

int main() {
    int x = 1;
    auto f = [x]() mutable { return ++x; };
    f();
    cout << f() << x << endl;
}$q$,null,$q$["31", "33", "11", "21"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The lambda keeps its own copy of x, which starts at 1. Each of the two calls increments that copy (to 2, then 3). The outer x stays 1, so the output is 3 followed by 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does std::move do?$q$,null,$q$["Casts its argument to an rvalue reference so a move can happen; it moves nothing itself", "Copies an object faster", "Deletes the original object", "Moves memory to a new address"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The actual move is done by the move constructor or move assignment that receives the rvalue.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why can a std::unique_ptr not be copied?$q$,null,$q$["Because copying is slow", "Because it is const", "Because it holds an array", "Because it models sole ownership. Ownership can only be transferred with std::move"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Two unique_ptrs owning the same object would delete it twice.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Two objects hold shared_ptr references to each other. What is the problem?$q$,null,$q$["They are destroyed twice", "The program does not compile", "A deadlock occurs", "A reference cycle: the counts never reach zero so they are never destroyed"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Break the cycle by making one of the links a weak_ptr.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Why should the destructor of a polymorphic base class be virtual?$q$,null,$q$["Virtual destructors run faster", "Deleting a derived object through a base pointer would otherwise skip the derived destructor", "It is required for all classes", "So the class can be copied"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Without virtual, deleting through Base* is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$After calling push_back on a std::vector, what may happen to existing iterators?$q$,null,$q$["They always stay valid", "They are automatically updated", "They may be invalidated if the vector reallocates", "They point to the first element"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Reallocation moves the elements, so iterators, pointers and references to them become invalid.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$When must you use dynamic_cast rather than static_cast between base and derived pointers?$q$,null,$q$["When removing const", "Never, they are identical", "When casting between int and double", "When you need a checked downcast at run time and the base is polymorphic"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$dynamic_cast returns nullptr (for pointers) if the object is not really of the target type. static_cast does no check.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the Rule of Five say?$q$,null,$q$["If a class needs a custom destructor, copy or move operations, it probably needs all five special functions defined", "A function should have five arguments at most", "Use at most five template parameters", "A class must have at most five members"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Destructor, copy constructor, copy assignment, move constructor and move assignment usually belong together.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does constexpr on a function mean?$q$,null,$q$["It can be evaluated at compile time when called with constant arguments", "It cannot be called at run time", "It is always inlined", "It has no side effects only by convention"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$constexpr functions can be used in constant expressions, such as array sizes, and also work at run time.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A template is declared as template<class T> T add(T a, T b). What happens with add(1, 2.5)?$q$,null,$q$["It is converted to string", "Deduction fails because T would be both int and double", "It returns 3", "It returns 3.5"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$The deduced types conflict, so the call does not compile. add<double>(1, 2.5) works.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Memory & Smart Pointers$q$,'igeeks-v3','validated' from domains d where d.name=$q$C++$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
