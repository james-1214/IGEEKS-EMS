-- c: 25 questions
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','beginner',$q$Which format specifier prints an int with printf?$q$,null,$q$["%f", "%c", "%s", "%d"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$%d prints a decimal integer.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','beginner',$q$Which header declares printf?$q$,null,$q$["<string.h>", "<math.h>", "<stdio.h>", "<stdlib.h>"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$printf and scanf are in stdio.h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','beginner',$q$What marks the end of a C string?$q$,null,$q$["EOF", "The null character '\\0'", "A newline", "A space"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Strings are arrays terminated by \0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','intermediate',$q$What does &x give you?$q$,null,$q$["The size of x", "A copy of x", "The address of x", "The value of x"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$& is the address-of operator.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','intermediate',$q$Which function allocates memory dynamically?$q$,null,$q$["alloc", "create", "malloc", "new"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$malloc is declared in stdlib.h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','intermediate',$q$Which function compares two strings?$q$,null,$q$["strlen", "strcmp", "strcpy", "strcat"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$strcmp returns 0 when strings are equal.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','intermediate',$q$When an array is passed to a function, what is actually passed?$q$,null,$q$["The array with its length", "Nothing", "A pointer to its first element", "A full copy of the array"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Arrays decay to pointers in function arguments.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','intermediate',$q$Which loop checks its condition after executing the body?$q$,null,$q$["while", "goto", "do-while", "for"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$do-while always runs at least once.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','intermediate',$q$Which has the highest precedence?$q$,null,$q$["Addition +", "Assignment =", "Multiplication *", "Parentheses ()"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$Parentheses override normal precedence.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','advanced',$q$What does a static local variable do?$q$,null,$q$["Is constant", "Becomes a global name", "Keeps its value between function calls", "Is re-initialised on every call"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Static locals live for the whole program run.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','advanced',$q$What is a dangling pointer?$q$,null,$q$["A pointer to a pointer", "A pointer to memory that has been freed", "A void pointer", "A pointer set to NULL"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Using it is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','advanced',$q$What is the effect of calling free(p) twice on the same pointer?$q$,null,$q$["Nothing, it is safe", "Undefined behaviour (double free)", "p becomes NULL", "A compile error"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Setting p = NULL after free avoids this.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','conceptual','beginner',$q$What is sizeof(int) on most modern platforms?$q$,null,$q$["2 bytes", "1 byte", "4 bytes", "8 bytes"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$int is typically 32 bits.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'multi','conceptual','intermediate',$q$Which of these are valid C data types?$q$,null,$q$["int", "string", "char", "float"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,3,$q$C has no built-in string type; strings are char arrays.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'multi','conceptual','advanced',$q$Which functions are declared in <string.h>?$q$,null,$q$["memcpy", "printf", "strcpy", "strlen"]$q$::jsonb,$q$[0, 2, 3]$q$::jsonb,4,$q$printf belongs to stdio.h.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'tf','conceptual','beginner',$q$C is a case-sensitive language.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Main and main are different identifiers.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'tf','conceptual','intermediate',$q$An array name can be reassigned to point to another array.$q$,null,null,$q$"false"$q$::jsonb,1,$q$An array name is not a modifiable lvalue.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'tf','conceptual','advanced',$q$int *p = NULL; *p = 5; is well defined.$q$,null,null,$q$"false"$q$::jsonb,1,$q$Dereferencing NULL is undefined behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','output','intermediate',$q$What is printed?
int a = 5; printf("%d", a++ + 1);$q$,null,$q$["An error", "6", "7", "5"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$a++ yields 5 and then 1 is added.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','output','intermediate',$q$What is printed?
char s[] = "abc"; printf("%d", (int)sizeof(s));$q$,null,$q$["8", "4", "3", "5"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$The array holds a, b, c and the terminating \0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','output','advanced',$q$What is printed?
int a[] = {1,2,3}; int *p = a; printf("%d", *(p + 2));$q$,null,$q$["2", "Garbage", "1", "3"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$p + 2 points at the third element.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','debugging','intermediate',$q$Why does scanf("%d", n); misbehave for an int n?$q$,null,$q$["The wrong header is included", "n must be a float", "The address &n is required", "A semicolon is missing"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$scanf needs a pointer to store the value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'mcq','debugging','advanced',$q$What is wrong with this code?
char *s = "hi"; s[0] = 'H';$q$,null,$q$["The array has no size", "Nothing is wrong", "Modifying a string literal is undefined behaviour", "It needs malloc"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Use char s[] = "hi"; to get a modifiable array.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'code','coding','beginner',$q$Sum of N numbers$q$,$q$Sum of N numbers$q$,null,null,3,$q$Loop N times, adding each value to a running total.$q$,$q${"description": "Read N integers and print their sum.", "input_format": "The first line has N. The second line has N space-separated integers.", "output_format": "Print the sum.", "constraints": "1 <= N <= 1000, each value fits in a 32-bit int and the sum fits in 64 bits", "examples": [{"input": "3\n1 2 3", "output": "6"}, {"input": "1\n-5", "output": "-5"}]}$q$::jsonb,array['c'],$q${"lang": "c", "starter": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$3
1 2 3$q$,$q$6$q$,false,1),($q$1
-5$q$,$q$-5$q$,false,2),($q$5
10 20 30 40 50$q$,$q$150$q$,true,3),($q$4
-1 -2 -3 -4$q$,$q$-10$q$,true,4),($q$2
1000000 2000000$q$,$q$3000000$q$,true,5)) as v(i,o,h,p)
where d.slug='c' and qq.text=$q$Sum of N numbers$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)
select d.id,'code','coding','intermediate',$q$Armstrong number$q$,$q$Armstrong number$q$,null,null,5,$q$Count the digits, raise each digit to that power and compare the total to N.$q$,$q${"description": "A number is an Armstrong number if the sum of its digits each raised to the power of the number of digits equals the number itself. Check a number.", "input_format": "A single positive integer N.", "output_format": "Print Yes if N is an Armstrong number, otherwise No.", "constraints": "1 <= N <= 10^6", "examples": [{"input": "153", "output": "Yes"}, {"input": "370", "output": "Yes"}]}$q$::jsonb,array['c'],$q${"lang": "c", "starter": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n"}$q$::jsonb from domains d where d.slug='c' on conflict do nothing;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$153$q$,$q$Yes$q$,false,1),($q$370$q$,$q$Yes$q$,false,2),($q$123$q$,$q$No$q$,true,3),($q$9474$q$,$q$Yes$q$,true,4),($q$100$q$,$q$No$q$,true,5)) as v(i,o,h,p)
where d.slug='c' and qq.text=$q$Armstrong number$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
