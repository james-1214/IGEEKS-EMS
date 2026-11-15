-- c: 63 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which format specifier prints an int with printf?$q$,null,$q$["%f", "%c", "%s", "%d"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$%d prints a decimal integer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which header declares printf?$q$,null,$q$["<string.h>", "<math.h>", "<stdio.h>", "<stdlib.h>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$printf and scanf are in stdio.h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What marks the end of a C string?$q$,null,$q$["EOF", "The null character '\\0'", "A newline", "A space"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Strings are arrays terminated by \0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does &x give you?$q$,null,$q$["The size of x", "A copy of x", "The address of x", "The value of x"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$& is the address-of operator.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which function allocates memory dynamically?$q$,null,$q$["alloc", "create", "malloc", "new"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$malloc is declared in stdlib.h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which function compares two strings?$q$,null,$q$["strlen", "strcmp", "strcpy", "strcat"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$strcmp returns 0 when strings are equal.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$When an array is passed to a function, what is actually passed?$q$,null,$q$["The array with its length", "Nothing", "A pointer to its first element", "A full copy of the array"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Arrays decay to pointers in function arguments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which loop checks its condition after executing the body?$q$,null,$q$["while", "goto", "do-while", "for"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$do-while always runs at least once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which has the highest precedence?$q$,null,$q$["Addition +", "Assignment =", "Multiplication *", "Parentheses ()"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Parentheses override normal precedence.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does a static local variable do?$q$,null,$q$["Is constant", "Becomes a global name", "Keeps its value between function calls", "Is re-initialised on every call"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Static locals live for the whole program run.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Structures & Storage$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is a dangling pointer?$q$,null,$q$["A pointer to a pointer", "A pointer to memory that has been freed", "A void pointer", "A pointer set to NULL"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Using it is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the effect of calling free(p) twice on the same pointer?$q$,null,$q$["Nothing, it is safe", "Undefined behaviour (double free)", "p becomes NULL", "A compile error"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Setting p = NULL after free avoids this.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is sizeof(int) on most modern platforms?$q$,null,$q$["2 bytes", "1 byte", "4 bytes", "8 bytes"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$int is typically 32 bits.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which of these are valid C data types?$q$,null,$q$["int", "string", "char", "float"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,3,$q$C has no built-in string type; strings are char arrays.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which functions are declared in <string.h>?$q$,null,$q$["memcpy", "printf", "strcpy", "strlen"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,4,$q$printf belongs to stdio.h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$C is a case-sensitive language.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Main and main are different identifiers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$An array name can be reassigned to point to another array.$q$,null,null,$q$"false"$q$::jsonb,1,$q$An array name is not a modifiable lvalue.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$int *p = NULL; *p = 5; is well defined.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Dereferencing NULL is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
int a = 5; printf("%d", a++ + 1);$q$,null,$q$["An error", "6", "7", "5"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$a++ yields 5 and then 1 is added.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
char s[] = "abc"; printf("%d", (int)sizeof(s));$q$,null,$q$["8", "4", "3", "5"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The array holds a, b, c and the terminating \0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What is printed?
int a[] = {1,2,3}; int *p = a; printf("%d", *(p + 2));$q$,null,$q$["2", "Garbage", "1", "3"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$p + 2 points at the third element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$Why does scanf("%d", n); misbehave for an int n?$q$,null,$q$["The wrong header is included", "n must be a float", "The address &n is required", "A semicolon is missing"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$scanf needs a pointer to store the value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','advanced',$q$What is wrong with this code?
char *s = "hi"; s[0] = 'H';$q$,null,$q$["The array has no size", "Nothing is wrong", "Modifying a string literal is undefined behaviour", "It needs malloc"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Use char s[] = "hi"; to get a modifiable array.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Sum of N numbers$q$,$q$Sum of N numbers$q$,null,null,3,$q$Loop N times, adding each value to a running total.$q$,$q${"description": "Read N integers and print their sum.", "input_format": "The first line has N. The second line has N space-separated integers.", "output_format": "Print the sum.", "constraints": "1 <= N <= 1000, each value fits in a 32-bit int and the sum fits in 64 bits", "examples": [{"input": "3\n1 2 3", "output": "6"}, {"input": "1\n-5", "output": "-5"}]}$q$::jsonb,array['c'],$q${"lang": "c", "starter": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$3
1 2 3$q$,$q$6$q$,false,1),($q$1
-5$q$,$q$-5$q$,false,2),($q$5
10 20 30 40 50$q$,$q$150$q$,true,3),($q$4
-1 -2 -3 -4$q$,$q$-10$q$,true,4),($q$2
1000000 2000000$q$,$q$3000000$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C$q$ and qq.text=$q$Sum of N numbers$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Armstrong number$q$,$q$Armstrong number$q$,null,null,5,$q$Count the digits, raise each digit to that power and compare the total to N.$q$,$q${"description": "A number is an Armstrong number if the sum of its digits each raised to the power of the number of digits equals the number itself. Check a number.", "input_format": "A single positive integer N.", "output_format": "Print Yes if N is an Armstrong number, otherwise No.", "constraints": "1 <= N <= 10^6", "examples": [{"input": "153", "output": "Yes"}, {"input": "370", "output": "Yes"}]}$q$::jsonb,array['c'],$q${"lang": "c", "starter": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$153$q$,$q$Yes$q$,false,1),($q$370$q$,$q$Yes$q$,false,2),($q$123$q$,$q$No$q$,true,3),($q$9474$q$,$q$Yes$q$,true,4),($q$100$q$,$q$No$q$,true,5)) as v(i,o,h,p)
where d.name=$q$C$q$ and qq.text=$q$Armstrong number$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which header file declares printf?$q$,null,$q$["stdlib.h", "string.h", "conio.h", "stdio.h"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$stdio.h declares the standard input and output functions such as printf and scanf.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Where does execution of a C program begin?$q$,null,$q$["The first #include", "The main function", "The first function in the file", "The function named start"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$The runtime calls main(), which is the entry point of every hosted C program.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 10 % 4);
    return 0;
}$q$,null,$q$["2", "2.5", "4", "0"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The % operator gives the remainder of the division: 10 = 2 × 4 + 2.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which loop always executes its body at least once?$q$,null,$q$["while", "None of them", "do-while", "for"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$do-while tests its condition after the body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int a = 5, b = a++;
    printf("%d %d\n", a, b);
    return 0;
}$q$,null,$q$["6 6", "5 5", "5 6", "6 5"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$a++ yields the old value (5) to b and then increments a to 6.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 5 > 3);
    return 0;
}$q$,null,$q$["5", "0", "1", "true"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Relational expressions in C produce the int 1 for true and 0 for false.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the index of the first element of a C array?$q$,null,$q$["-1", "It depends on the array type", "1", "0"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$C arrays are zero-based, so a[0] is the first element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which character ends every C string?$q$,null,$q$["'\\0'", "'\\n'", "' '", "'$'"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The null character marks the end of a string. A string of n visible characters needs n + 1 bytes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 'A');
    return 0;
}$q$,null,$q$["41", "65", "Error", "A"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$A character constant has type int in C. printf with %d shows its ASCII code, 65.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator gives the address of a variable?$q$,null,$q$["#", "*", "&", "->"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$&x is the address of x. * dereferences a pointer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int x = 5;
    int *p = &x;
    printf("%d\n", *p);
    return 0;
}$q$,null,$q$["0", "The address of x", "5", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$*p reads the value that p points to, which is x.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%zu\n", sizeof(char));
    return 0;
}$q$,null,$q$["8", "1", "2", "4"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$sizeof(char) is 1 by definition, whatever the platform.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%.2f\n", 3.14159);
    return 0;
}$q$,null,$q$["3.14159", "3.1", "3.15", "3.14"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$%.2f rounds to two decimal places.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
#include <string.h>
int main(void) {
    char s[] = "abc";
    printf("%zu %zu\n", sizeof(s), strlen(s));
    return 0;
}$q$,null,$q$["4 4", "3 3", "4 3", "3 4"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$strlen counts the 3 characters. sizeof also counts the terminating '\0', so it is 4.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int a[] = {10, 20, 30};
    int *p = a;
    printf("%d\n", *(p + 2));
    return 0;
}$q$,null,$q$["Address", "30", "20", "10"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Pointer arithmetic moves in units of the element size, so p + 2 points at a[2].$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int counter(void) {
    static int n = 0;
    return ++n;
}
int main(void) {
    for (int i = 0; i < 3; i++) printf("%d", counter());
    return 0;
}$q$,null,$q$["000", "111", "123", "012"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$A static local keeps its value between calls, so it counts 1, 2, 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", -7 % 3);
    return 0;
}$q$,null,$q$["2", "1", "-1", "-2"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Since C99 the result of % has the sign of the dividend: -7 = (-2) × 3 + (-1).$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    unsigned char c = 255;
    c++;
    printf("%d\n", c);
    return 0;
}$q$,null,$q$["-1", "256", "255", "0"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Unsigned arithmetic wraps around. 255 + 1 does not fit in 8 bits and becomes 0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Structures & Storage$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", (int)3.99);
    return 0;
}$q$,null,$q$["4", "3", "3.0", "3.99"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A cast to int truncates towards zero.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
#define SQ(x) x * x
int main(void) {
    printf("%d\n", SQ(2 + 1));
    return 0;
}$q$,null,$q$["6", "5", "9", "Error"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The macro is replaced textually: 2 + 1 * 2 + 1 = 5. Writing ((x) * (x)) in the macro would give 9.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int a[3] = {1, 2, 3};
    printf("%d\n", 2[a]);
    return 0;
}$q$,null,$q$["3", "Error", "2", "1"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$a[2] is defined as *(a + 2), which is the same as *(2 + a), so 2[a] is valid and equals a[2].$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", !!5);
    return 0;
}$q$,null,$q$["!5", "1", "0", "5"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$The first ! turns 5 into 0 and the second turns 0 into 1. It is a way to normalise a value to 0 or 1.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int x = 0;
    if (x = 5) printf("yes");
    else printf("no");
    return 0;
}$q$,null,$q$["yes", "Compile error", "Nothing", "no"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$x = 5 is an assignment, not a comparison. Its value is 5, which is true.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 1 << 3 | 1);
    return 0;
}$q$,null,$q$["9", "8", "16", "4"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The shift happens first: 1 << 3 = 8, and 8 | 1 = 9.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", ~5);
    return 0;
}$q$,null,$q$["0", "-5", "-6", "5"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$On a two's complement machine ~x equals -x - 1, so ~5 is -6.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

#include <stdio.h>
int main(void) {
    printf("%d\n", 5 & 3 ^ 1);
    return 0;
}$q$,null,$q$["6", "0", "1", "4"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$& has higher precedence than ^. (5 & 3) = 1, and 1 ^ 1 = 0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$On a typical platform with a 4-byte int, what does this program print?

#include <stdio.h>
int main(void) {
    struct S { char a; int b; };
    printf("%zu\n", sizeof(struct S));
    return 0;
}$q$,null,$q$["5", "4", "6", "8"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The int must be aligned to 4 bytes, so 3 padding bytes follow the char. The total is 8.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the following declaration mean? const int *p;$q$,null,$q$["p points to an int that cannot be changed through p", "p is a constant pointer to an int", "p can only be assigned once", "Both the pointer and the int are constant"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$const int *p is a pointer to const int. int *const p would be a const pointer to a modifiable int.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the volatile qualifier tell the compiler?$q$,null,$q$["The variable is local to the function", "The value is stored in a register", "The value can never change", "The value may change outside the program's control, so every access must really be made"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Volatile is used for hardware registers and variables changed by signal handlers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$A function returns the address of one of its local variables. What is the problem?$q$,null,$q$["The compiler will refuse to compile it", "It leaks memory", "The memory is gone after the function returns, so using the pointer is undefined behaviour", "The value is automatically copied to the heap"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Local variables live on the stack and are invalid after the call. This is a dangling pointer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$When must memmove be used instead of memcpy?$q$,null,$q$["When the data is not aligned", "When the source and destination memory areas may overlap", "When copying strings", "When copying more than 1 KB"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$memcpy has undefined behaviour for overlapping regions. memmove handles overlap correctly.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the result of calling free on the same pointer twice?$q$,null,$q$["The program exits with an error code", "Undefined behaviour (often heap corruption)", "A compile error", "The second call is ignored safely"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Setting the pointer to NULL after free makes a second free(NULL) harmless.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What happens when a signed int overflows in C?$q$,null,$q$["The behaviour is undefined", "The program is terminated", "The result is saturated at INT_MAX", "It wraps around to the minimum value"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Unsigned overflow wraps, but signed overflow is undefined, and compilers may assume it never happens.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is wrong with this: char *s = "hello"; s[0] = 'H';$q$,null,$q$["Modifying a string literal is undefined behaviour", "char* cannot point to a string", "The literal is stored in a register", "Nothing, it is valid"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$String literals may be placed in read-only memory. Use char s[] = "hello"; for a modifiable copy.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the restrict qualifier promise?$q$,null,$q$["That the pointer is aligned", "That the pointer is read-only", "That the pointer is not NULL", "That for the lifetime of the pointer, only it (or values derived from it) accesses that object"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The promise lets the compiler optimise more aggressively. Breaking it is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Preprocessor & I/O$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

#include <stdio.h>
int main(void) {
    int x = 10;
    printf("%d\n", x / 3 * 3);
    return 0;
}$q$,null,$q$["10.0", "3", "9", "10"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Integer division truncates: 10 / 3 = 3, and 3 * 3 = 9. Operators of equal precedence are evaluated left to right.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Control Flow & Functions$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which function reads a line of text safely into a buffer in C?$q$,null,$q$["gets", "fgets", "scanf with %s", "readline"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$fgets takes the buffer size, so it cannot overflow the buffer. gets was removed from the language.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Arrays & Strings$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which operator accesses a struct member through a pointer?$q$,null,$q$["::", "->", ".", "=>"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$p->x is shorthand for (*p).x.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Pointers & Memory$q$,'igeeks-v3','validated' from domains d where d.name=$q$C$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
