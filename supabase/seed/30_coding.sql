-- coding: 10 built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Digit sum of a number$q$,$q$Digit sum of a number$q$,null,null,3,$q$Process the digits one at a time, either with n % 10 and n / 10 or by walking over the characters of the text.$q$,$q${"description": "Read an integer n and print the sum of its digits. Ignore the sign.", "input_format": "One integer n.", "output_format": "Print the sum of the digits of n.", "constraints": "-10^18 <= n <= 10^18", "examples": [{"input": "12345\n", "output": "15"}, {"input": "-908\n", "output": "17"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$12345
$q$,$q$15$q$,false,1),($q$-908
$q$,$q$17$q$,false,2),($q$0
$q$,$q$0$q$,true,3),($q$999999999999
$q$,$q$108$q$,true,4),($q$7
$q$,$q$7$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Digit sum of a number$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Palindrome check$q$,$q$Palindrome check$q$,null,null,3,$q$Compare the first and last characters, then move inwards. Level is not a palindrome here because L and l differ.$q$,$q${"description": "Read a word and print YES if it reads the same forwards and backwards, otherwise NO. The comparison is case-sensitive.", "input_format": "One word of lower or upper case letters.", "output_format": "Print YES or NO.", "constraints": "1 <= length <= 1000", "examples": [{"input": "madam\n", "output": "YES"}, {"input": "hello\n", "output": "NO"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$madam
$q$,$q$YES$q$,false,1),($q$hello
$q$,$q$NO$q$,false,2),($q$a
$q$,$q$YES$q$,true,3),($q$Level
$q$,$q$NO$q$,true,4),($q$racecar
$q$,$q$YES$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Palindrome check$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Count the vowels$q$,$q$Count the vowels$q$,null,null,3,$q$Check every character against the five vowels after converting to lower case.$q$,$q${"description": "Read one line of text and print how many vowels (a, e, i, o, u in either case) it contains.", "input_format": "One line of text.", "output_format": "Print the number of vowels.", "constraints": "1 <= length <= 1000", "examples": [{"input": "Hello World\n", "output": "3"}, {"input": "rhythm\n", "output": "0"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$Hello World
$q$,$q$3$q$,false,1),($q$rhythm
$q$,$q$0$q$,false,2),($q$AEIOU aeiou
$q$,$q$10$q$,true,3),($q$Programming is fun
$q$,$q$5$q$,true,4),($q$xyz
$q$,$q$0$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Count the vowels$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','beginner',$q$Second largest value$q$,$q$Second largest value$q$,null,null,3,$q$Keep the largest and second largest distinct values while scanning once.$q$,$q${"description": "Given n integers, print the second largest distinct value. If there is no such value, print -1.", "input_format": "The first line has n. The second line has n space-separated integers.", "output_format": "Print the second largest distinct integer, or -1.", "constraints": "1 <= n <= 1000, -10^6 <= each number <= 10^6", "examples": [{"input": "5\n3 9 1 7 9\n", "output": "7"}, {"input": "3\n4 4 4\n", "output": "-1"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$5
3 9 1 7 9
$q$,$q$7$q$,false,1),($q$3
4 4 4
$q$,$q$-1$q$,false,2),($q$2
-5 -1
$q$,$q$-5$q$,true,3),($q$6
10 20 30 30 20 10
$q$,$q$20$q$,true,4),($q$1
8
$q$,$q$-1$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Second largest value$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Pair with a given sum$q$,$q$Pair with a given sum$q$,null,null,5,$q$A set of values seen so far finds the partner in one pass. Using the same position twice is not allowed, which is why 4 alone does not make 8.$q$,$q${"description": "Given n integers and a target, print YES if two different positions hold numbers that add up to the target, otherwise NO.", "input_format": "The first line has n and the target. The second line has n integers.", "output_format": "Print YES or NO.", "constraints": "2 <= n <= 1000, values between -10^6 and 10^6", "examples": [{"input": "5 9\n2 7 11 15 1\n", "output": "YES"}, {"input": "4 100\n1 2 3 4\n", "output": "NO"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$5 9
2 7 11 15 1
$q$,$q$YES$q$,false,1),($q$4 100
1 2 3 4
$q$,$q$NO$q$,false,2),($q$3 6
3 3 5
$q$,$q$YES$q$,true,3),($q$2 0
-4 4
$q$,$q$YES$q$,true,4),($q$3 8
4 1 2
$q$,$q$NO$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Pair with a given sum$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Valid bracket sequence$q$,$q$Valid bracket sequence$q$,null,null,5,$q$A stack of open brackets: every closing bracket must match the most recent open one, and nothing may remain open.$q$,$q${"description": "Given a string made only of ( ) [ ] { }, print YES if every bracket is closed in the correct order, otherwise NO.", "input_format": "One line containing the brackets.", "output_format": "Print YES or NO.", "constraints": "1 <= length <= 10000", "examples": [{"input": "([]{})\n", "output": "YES"}, {"input": "([)]\n", "output": "NO"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$([]{})
$q$,$q$YES$q$,false,1),($q$([)]
$q$,$q$NO$q$,false,2),($q$((
$q$,$q$NO$q$,true,3),($q${[()]}()
$q$,$q$YES$q$,true,4),($q$]
$q$,$q$NO$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Valid bracket sequence$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Run-length encoding$q$,$q$Run-length encoding$q$,null,null,5,$q$Walk through the string, count how long each run lasts, and append the character and the count. A run of 12 prints 12, not two separate digits.$q$,$q${"description": "Compress a string by replacing each run of the same character with the character followed by the run length. For example aaabcc becomes a3b1c2.", "input_format": "One string of lower case letters.", "output_format": "Print the encoded string.", "constraints": "1 <= length <= 10000", "examples": [{"input": "aaabcc\n", "output": "a3b1c2"}, {"input": "abc\n", "output": "a1b1c1"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$aaabcc
$q$,$q$a3b1c2$q$,false,1),($q$abc
$q$,$q$a1b1c1$q$,false,2),($q$zzzzzzzzzzzz
$q$,$q$z12$q$,true,3),($q$aabbaa
$q$,$q$a2b2a2$q$,true,4),($q$q
$q$,$q$q1$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Run-length encoding$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','intermediate',$q$Diagonal difference$q$,$q$Diagonal difference$q$,null,null,5,$q$Add m[i][i] for one diagonal and m[i][n-1-i] for the other in a single loop, then take the absolute difference.$q$,$q${"description": "Given a square matrix, print the absolute difference between the sum of its main diagonal and the sum of its other diagonal.", "input_format": "The first line has n. The next n lines have n integers each.", "output_format": "Print one integer.", "constraints": "1 <= n <= 100, values between -1000 and 1000", "examples": [{"input": "3\n11 2 4\n4 5 6\n10 8 -12\n", "output": "15"}, {"input": "2\n1 2\n3 4\n", "output": "0"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$3
11 2 4
4 5 6
10 8 -12
$q$,$q$15$q$,false,1),($q$2
1 2
3 4
$q$,$q$0$q$,false,2),($q$1
5
$q$,$q$0$q$,true,3),($q$3
1 1 1
1 1 1
1 1 1
$q$,$q$0$q$,true,4),($q$4
1 2 3 4
5 6 7 8
9 10 11 12
13 14 15 16
$q$,$q$0$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Diagonal difference$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','advanced',$q$Maximum subarray sum$q$,$q$Maximum subarray sum$q$,null,null,9,$q$Kadane's algorithm keeps the best sum ending at each position: cur = max(x, cur + x). The JS check uses a slower brute force so the two solutions are independent.$q$,$q${"description": "Given n integers (they may be negative), print the largest possible sum of a non-empty contiguous block of them.", "input_format": "The first line has n. The second line has n integers.", "output_format": "Print the maximum subarray sum.", "constraints": "1 <= n <= 10^5, values between -10^4 and 10^4", "examples": [{"input": "8\n-2 1 -3 4 -1 2 1 -5\n", "output": "6"}, {"input": "3\n-3 -1 -2\n", "output": "-1"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$8
-2 1 -3 4 -1 2 1 -5
$q$,$q$6$q$,false,1),($q$3
-3 -1 -2
$q$,$q$-1$q$,false,2),($q$5
1 2 3 4 5
$q$,$q$15$q$,true,3),($q$6
5 -9 6 -2 3 -1
$q$,$q$7$q$,true,4),($q$1
-7
$q$,$q$-7$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Maximum subarray sum$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)
select d.id,'code','coding','advanced',$q$Longest increasing subsequence$q$,$q$Longest increasing subsequence$q$,null,null,9,$q$dp[i] is the best length ending at i: look at every earlier smaller value. n = 5000 allows this O(n^2) approach; a patience-sorting O(n log n) version also works.$q$,$q${"description": "Given n integers, print the length of the longest strictly increasing subsequence (elements need not be next to each other, but their order is kept).", "input_format": "The first line has n. The second line has n integers.", "output_format": "Print one integer: the length.", "constraints": "1 <= n <= 5000, values between -10^9 and 10^9", "examples": [{"input": "8\n10 9 2 5 3 7 101 18\n", "output": "4"}, {"input": "5\n5 4 3 2 1\n", "output": "1"}]}$q$::jsonb,array['python','java','c','cpp','javascript'],$q${"lang": "python", "starter": "# read input with input()\n# write your code here\n", "starters": {"python": "# read input with input()\n# write your code here\n", "java": "import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n", "c": "#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "cpp": "#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n", "javascript": "const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}}$q$::jsonb,true,$q$Coding Challenges$q$,'igeeks-v3','validated' from domains d where d.name=$q$Coding Challenges$q$
on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;
insert into coding_tests(question_id,input,expected,is_hidden,position)
select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values ($q$8
10 9 2 5 3 7 101 18
$q$,$q$4$q$,false,1),($q$5
5 4 3 2 1
$q$,$q$1$q$,false,2),($q$6
1 2 3 4 5 6
$q$,$q$6$q$,true,3),($q$7
0 8 4 12 2 10 6
$q$,$q$3$q$,true,4),($q$1
42
$q$,$q$1$q$,true,5)) as v(i,o,h,p)
where d.name=$q$Coding Challenges$q$ and qq.text=$q$Longest increasing subsequence$q$ and not exists (select 1 from coding_tests c where c.question_id=qq.id);
