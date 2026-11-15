-- java: 62 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword is used to inherit from a class?$q$,null,$q$["super", "inherits", "implements", "extends"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$A class extends another class; implements is for interfaces.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$What is the size of an int in Java?$q$,null,$q$["It depends on the operating system", "64 bits", "32 bits", "16 bits"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Java fixes the size of int at 32 bits on every platform.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method is the entry point of a Java program?$q$,null,$q$["run()", "init()", "public static void main(String[] args)", "start()"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$The JVM looks for this exact main signature.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which collection does not allow duplicate elements?$q$,null,$q$["ArrayList", "HashSet", "Vector", "LinkedList"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A Set keeps unique elements only.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is the default value of an uninitialised int instance variable?$q$,null,$q$["null", "undefined", "0", "-1"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Numeric fields default to 0.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which keyword makes a variable a constant that cannot be reassigned?$q$,null,$q$["final", "const", "constant", "static"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$final prevents reassignment; const is reserved but unused.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What is method overloading?$q$,null,$q$["Same method name with different parameters in one class", "Hiding a field", "Calling a method twice", "Same signature redefined in a subclass"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Overloading differs by parameter list; overriding replaces behaviour in a subclass.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which interface defines a custom ordering that lives outside the class being sorted?$q$,null,$q$["Sortable", "Comparator", "Orderable", "Comparable"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$Comparable is the natural order inside the class; Comparator is external.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which exception is thrown when an array index is out of range?$q$,null,$q$["ArrayIndexOutOfBoundsException", "ClassCastException", "NullPointerException", "IllegalArgumentException"]$q$::jsonb,$q$[0]$q$::jsonb,2,$q$Accessing an invalid index throws ArrayIndexOutOfBoundsException.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which statement about String in Java is true?$q$,null,$q$["Strings are primitives", "Strings cannot be compared", "Strings are immutable", "Strings are mutable"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Operations on a String create a new String object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the synchronized keyword provide?$q$,null,$q$["Compile-time checking", "Mutual exclusion on an object's monitor", "Automatic memory release", "Faster execution"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Only one thread at a time can hold the monitor.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Concurrency$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which statement about HashMap is true?$q$,null,$q$["It keeps keys sorted", "It keeps insertion order", "It allows one null key", "It is thread-safe"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$HashMap allows a single null key and is not synchronised.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$Which loop always executes its body at least once?$q$,null,$q$["for", "for-each", "do-while", "while"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$do-while checks the condition after the body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What is the type of the result of 5/2 when both operands are int?$q$,null,$q$["int with value 2", "float with value 2.0", "int with value 3", "double with value 2.5"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Integer division truncates the fractional part.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','intermediate',$q$Which are valid access modifiers in Java?$q$,null,$q$["public", "protected", "internal", "private"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,3,$q$internal belongs to C#, not Java.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'multi','conceptual','advanced',$q$Which are functional interfaces in java.util.function?$q$,null,$q$["Supplier", "Predicate", "Iterable", "Function"]$q$::jsonb,$q$[0, 1, 3]$q$::jsonb,4,$q$Iterable is not in java.util.function and has more behaviour.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','beginner',$q$Java supports multiple inheritance of classes.$q$,null,null,$q$"false"$q$::jsonb,1,$q$A class can extend only one class; interfaces allow multiple inheritance of type.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','intermediate',$q$An interface can contain default methods since Java 8.$q$,null,null,$q$"true"$q$::jsonb,1,$q$Default methods let interfaces provide implementations.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'tf','conceptual','advanced',$q$A finally block still runs if System.exit(0) is called inside try.$q$,null,null,$q$"false"$q$::jsonb,1,$q$System.exit stops the JVM before finally can run.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
String a = "hi"; String b = new String("hi");
System.out.println(a == b);$q$,null,$q$["hi", "false", "Compile error", "true"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$== compares references; new String creates a distinct object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What is printed?
int x = 5;
System.out.println(x++ + ++x);$q$,null,$q$["10", "12", "13", "11"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$5 + 7: x++ gives 5 then ++x makes x 7.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','debugging','intermediate',$q$Why does int n = 3.5; fail to compile?$q$,null,$q$["A semicolon is missing", "Possible lossy conversion from double to int", "n is a reserved word", "main is missing"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$A double cannot be assigned to int without a cast.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','scenario','advanced',$q$Two threads increment a shared counter and the final value is wrong. What is the best fix?$q$,null,$q$["Declare it static", "Use AtomicInteger or synchronise access", "Call Thread.sleep", "Use two counters"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Increment is not atomic; atomics or locks prevent lost updates.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Concurrency$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Sum of digits$q$,$q$Sum of digits$q$,null,null,3,$q$Repeatedly take n % 10 and divide n by 10, adding each digit.$q$,$q${"description": "Read a non-negative integer and print the sum of its digits.", "input_format": "A single integer N.", "output_format": "Print the sum of the digits of N.", "constraints": "0 <= N <= 10^9", "examples": [{"input": "123", "output": "6"}, {"input": "9", "output": "9"}]}$q$::jsonb,array['java'],$q${"lang": "java", "starter": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$123$q$,$q$6$q$,false,1),($q$9$q$,$q$9$q$,false,2),($q$1000$q$,$q$1$q$,true,3),($q$98765$q$,$q$35$q$,true,4),($q$0$q$,$q$0$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Java$q$ and qq.text=$q$Sum of digits$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Second largest distinct number$q$,$q$Second largest distinct number$q$,null,null,5,$q$Track the largest and second largest distinct values in one pass.$q$,$q${"description": "Print the second largest distinct value in a list.", "input_format": "The first line has n. The second line has n space-separated integers.", "output_format": "Print the second largest distinct integer.", "constraints": "2 <= n <= 1000. At least two distinct values exist.", "examples": [{"input": "5\n3 9 2 9 7", "output": "7"}, {"input": "4\n10 20 30 40", "output": "30"}]}$q$::jsonb,array['java'],$q${"lang": "java", "starter": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n"}$q$::jsonb,true,$q$Fundamentals$q$,'igeeks-v1','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$5
3 9 2 9 7$q$,$q$7$q$,false,1),($q$4
10 20 30 40$q$,$q$30$q$,false,2),($q$3
5 5 4$q$,$q$4$q$,true,3),($q$6
-1 -5 -3 -1 -2 -9$q$,$q$-2$q$,true,4),($q$2
1 2$q$,$q$1$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Java$q$ and qq.text=$q$Second largest distinct number$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method signature is the standard entry point of a Java program?$q$,null,$q$["public void main(String args)", "public static int main()", "static void start(String[] args)", "public static void main(String[] args)"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The JVM looks for a public static void method named main that takes a String array.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword creates a new object?$q$,null,$q$["new", "create", "make", "alloc"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$new allocates the object and calls its constructor.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(7 / 2);
    }
}
$q$,null,$q$["2", "3", "3.5", "4"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$Both operands are int, so the division is an integer division.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        String s = "Java";
        System.out.println(s.length());
    }
}
$q$,null,$q$["Java", "4", "3", "5"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$length() returns the number of characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println("5" + 3);
    }
}
$q$,null,$q$["53", "Error", "5 3", "8"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$When one operand of + is a String, the other is converted and the two are concatenated.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(5 + 3 + "x");
    }
}
$q$,null,$q$["8x", "x8", "53x", "5 3x"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$The expression is evaluated left to right. 5 + 3 is added first to give 8, then 'x' is appended.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println('a' + 1);
    }
}
$q$,null,$q$["a1", "b", "98", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A char is promoted to int in arithmetic. 'a' is 97, so the result is the int 98.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        char c = 'a';
        c++;
        System.out.println(c);
    }
}
$q$,null,$q$["a1", "98", "b", "Error"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$Incrementing a char moves to the next character code, so 'a' becomes 'b'.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(10 == 10.0);
    }
}
$q$,null,$q$["10", "Error", "false", "true"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$The int is promoted to double before the comparison, so the values are equal.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which of these is NOT a primitive type in Java?$q$,null,$q$["boolean", "String", "char", "int"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$String is a class. The eight primitives are byte, short, int, long, float, double, char and boolean.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which package is imported automatically in every Java file?$q$,null,$q$["java.io", "java.lang", "java.base", "java.util"]$q$::jsonb,$q$[1]$q$::jsonb,1,$q$java.lang contains String, Math, System and other core classes.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {
    static int count;
    static boolean flag;
    public static void main(String[] args) throws Exception {
        System.out.println(count + " " + flag);
    }
}
$q$,null,$q$["null null", "0 0", "Error", "0 false"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$Fields get default values: 0 for numbers, false for boolean and null for references.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','beginner',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        int[] a = new int[3];
        System.out.println(a.length + " " + a[0]);
    }
}
$q$,null,$q$["3 0", "2 0", "3 null", "0 0"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$Array elements default to 0 for int. length is a field, not a method.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        String a = "hi";
        String b = new String("hi");
        System.out.println((a == b) + " " + a.equals(b));
    }
}
$q$,null,$q$["false false", "false true", "true true", "true false"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$== compares references, and new String creates a separate object. equals compares the text.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        Integer x = 127, y = 127, p = 128, q = 128;
        System.out.println((x == y) + " " + (p == q));
    }
}
$q$,null,$q$["false true", "false false", "true false", "true true"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Integer values from -128 to 127 are cached, so == works there. Outside that range separate objects are created.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        String s = "a";
        s.concat("b");
        System.out.println(s);
    }
}
$q$,null,$q$["ab", "null", "a", "b"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$Strings are immutable. concat returns a new string, which was thrown away here.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        List<Integer> l = new ArrayList<>(List.of(10, 20, 30));
        l.remove(1);
        System.out.println(l);
    }
}
$q$,null,$q$["[20, 30]", "[10, 20]", "[10, 30]", "[10, 20, 30]"]$q$::jsonb,$q$[2]$q$::jsonb,2,$q$With an int argument, remove(int index) is chosen, so the element at index 1 (20) is removed. remove(Integer.valueOf(1)) would remove by value.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','intermediate',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {
    static String f() {
        try { return "try"; }
        finally { System.out.print("finally "); }
    }
    public static void main(String[] args) throws Exception {
        System.out.println(f());
    }
}
$q$,null,$q$["try finally", "try", "finally", "finally try"]$q$::jsonb,$q$[3]$q$::jsonb,2,$q$The finally block runs before the method returns, so its output comes first.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What happens if you try to create an object of an abstract class with new?$q$,null,$q$["It creates an empty object", "It does not compile", "It calls the first subclass", "It compiles but fails at run time"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$An abstract class is incomplete, so it can only be instantiated through a concrete subclass.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','intermediate',$q$What does the final keyword do on a method?$q$,null,$q$["The method cannot be called twice", "The method cannot be overridden", "The method must be static", "The method is run last"]$q$::jsonb,$q$[1]$q$::jsonb,2,$q$final on a class prevents inheritance, on a variable prevents reassignment, and on a method prevents overriding.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        long x = Integer.MAX_VALUE + 1;
        System.out.println(x);
    }
}
$q$,null,$q$["2147483647", "0", "2147483648", "-2147483648"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$The addition is done in int and overflows before the result is widened to long.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(1 + 2 + "" + 1 + 2);
    }
}
$q$,null,$q$["33", "3 12", "1212", "312"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$1 + 2 is evaluated first as numbers (3). Once a String is involved the remaining operands are appended.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(Math.round(-2.5) + " " + Math.round(2.5));
    }
}
$q$,null,$q$["-2 2", "-3 3", "-2 3", "-3 2"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Math.round rounds halves towards positive infinity, so -2.5 becomes -2 and 2.5 becomes 3.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        new X();
    }
}
class X {
    static { System.out.print("S"); }
    { System.out.print("I"); }
    X() { System.out.print("C"); }
}$q$,null,$q$["SIC", "SCI", "CIS", "ISC"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$The static initialiser runs once when the class loads, then the instance initialiser, then the constructor body.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {
    static void f(Object o) { System.out.println("Object"); }
    static void f(String s) { System.out.println("String"); }
    public static void main(String[] args) throws Exception {
        f(null);
    }
}
$q$,null,$q$["Compile error", "Object", "String", "NullPointerException"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$The compiler picks the most specific applicable overload, and String is more specific than Object.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$OOP$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {
    @SuppressWarnings("finally")
    static int f() {
        try { return 1; }
        finally { return 2; }
    }
    public static void main(String[] args) throws Exception {
        System.out.println(f());
    }
}
$q$,null,$q$["3", "2", "Compile error", "1"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$A return in finally overrides the value returned from try. It is considered bad practice.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        List<Integer> l = new ArrayList<>(List.of(1, 2, 3));
        try {
            for (Integer i : l) l.remove(i);
        } catch (Exception e) {
            System.out.println(e.getClass().getSimpleName());
        }
    }
}
$q$,null,$q$["No output", "IndexOutOfBoundsException", "ConcurrentModificationException", "NullPointerException"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$Removing from a list while iterating it with a for-each loop makes the iterator detect the change and fail fast.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        try (R a = new R("A"); R b = new R("B")) {
            System.out.print("body ");
        }
    }
}
class R implements AutoCloseable {
    String n;
    R(String n) { this.n = n; }
    public void close() { System.out.print("close" + n + " "); }
}$q$,null,$q$["body closeA closeB", "body closeB closeA", "closeA closeB body", "body"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$Resources are closed in the reverse order of their creation, after the body has run.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Exceptions$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(new ArrayList<String>().getClass() == new ArrayList<Integer>().getClass());
    }
}
$q$,null,$q$["null", "false", "Compile error", "true"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$Type parameters are erased at run time, so both lists are plain ArrayList objects.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Collections & Generics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','output','advanced',$q$What does this program print?

import java.util.*;
import java.util.stream.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.out.println(IntStream.rangeClosed(1, 5).filter(i -> i % 2 == 1).sum());
    }
}
$q$,null,$q$["6", "9", "15", "5"]$q$::jsonb,$q$[1]$q$::jsonb,3,$q$The odd numbers 1, 3 and 5 are summed.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Streams & Modern Java$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What must be true for objects used as HashMap keys?$q$,null,$q$["They must be Strings", "They must implement Comparable", "Equal objects must return the same hashCode", "They must be immutable by language rules"]$q$::jsonb,$q$[2]$q$::jsonb,3,$q$If a.equals(b) is true, a.hashCode() must equal b.hashCode(). Otherwise lookups fail.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Streams & Modern Java$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$Which collection allows a null key?$q$,null,$q$["ConcurrentHashMap", "Hashtable", "TreeMap with natural ordering", "HashMap"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$HashMap permits one null key. Hashtable and ConcurrentHashMap reject null keys, and TreeMap with natural order throws on null.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Streams & Modern Java$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does the volatile keyword guarantee for a field?$q$,null,$q$["Mutual exclusion", "Atomic increments", "That the field is final", "Writes by one thread become visible to other threads, and reads are not cached"]$q$::jsonb,$q$[3]$q$::jsonb,3,$q$volatile gives visibility and ordering but not atomicity, so count++ on a volatile field is still not thread-safe.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','advanced',$q$What does synchronized on an instance method lock on?$q$,null,$q$["The object the method is called on (this)", "The method's code", "Nothing, it is only a hint", "The class object"]$q$::jsonb,$q$[0]$q$::jsonb,3,$q$Two threads calling synchronized instance methods on the same object are serialised.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Concurrency$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which keyword declares a variable whose value cannot be changed after it is assigned?$q$,null,$q$["static", "immutable", "final", "const"]$q$::jsonb,$q$[2]$q$::jsonb,1,$q$A final variable can be assigned once. const is a reserved word in Java but is not used.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which statement ends a loop immediately?$q$,null,$q$["stop", "end", "exit", "break"]$q$::jsonb,$q$[3]$q$::jsonb,1,$q$break leaves the nearest enclosing loop or switch. continue skips to the next iteration.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'mcq','conceptual','beginner',$q$Which method compares the contents of two strings?$q$,null,$q$["equals", "==", "same", "compareRef"]$q$::jsonb,$q$[0]$q$::jsonb,1,$q$== compares references. equals compares the characters.$q$,'{}'::jsonb,'{}'::text[],'{}'::jsonb,true,$q$Strings & Basics$q$,'igeeks-v3','validated' from domains d where d.name=$q$Java$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
