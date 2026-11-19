"""Ten language-neutral coding problems for the 60-question Aptitude & Coding assessment.
Each problem: statement, 2 sample + 3 hidden tests, a Python reference (generates the expected output)
and an INDEPENDENT JavaScript solution (alt). The build runs both on every test and stops if they disagree."""
import subprocess, tempfile, os, sys
from common import *
import common as C
src('igeeks-v3'); dom('coding'); topic('Coding Challenges')
LANGS=['python','java','c','cpp','javascript']
ALT=[]   # (title, js_source, tests)
def CODEM(d,title,desc,infmt,outfmt,cons,tests,ref,alt,marks,expl):
    outs=[ref(t) for t in tests]
    B_=C.B[C.cur]
    B_.append(dict(type='code',cat='coding',diff=C.DF[d],text=title,options=None,correct=None,marks=marks,expl=expl,topic='Coding Challenges',src='igeeks-v3',
      statement=dict(description=desc,input_format=infmt,output_format=outfmt,constraints=cons,examples=[{'input':tests[i],'output':outs[i]} for i in range(2)]),
      lang='python',starter=C.STARTER['python'],languages=LANGS,starters={l:C.STARTER[l] for l in LANGS},
      tests=[(tests[i],outs[i],i>=2) for i in range(len(tests))]))
    ALT.append((title,alt,tests,outs))

# ---------------------------------------------------------------- easy
def r(t): return str(sum(int(c) for c in t.strip().lstrip('-')))
CODEM('b',"Digit sum of a number","Read an integer n and print the sum of its digits. Ignore the sign.","One integer n.","Print the sum of the digits of n.","-10^18 <= n <= 10^18",
 ["12345\n","-908\n","0\n","999999999999\n","7\n"],r,
 "const n=require('fs').readFileSync(0,'utf8').trim().replace('-','');let s=0;for(const c of n)s+=+c;console.log(s)",3,"Process the digits one at a time, either with n % 10 and n / 10 or by walking over the characters of the text.")
def r(t): s=t.strip(); return 'YES' if s==s[::-1] else 'NO'
CODEM('b',"Palindrome check","Read a word and print YES if it reads the same forwards and backwards, otherwise NO. The comparison is case-sensitive.","One word of lower or upper case letters.","Print YES or NO.","1 <= length <= 1000",
 ["madam\n","hello\n","a\n","Level\n","racecar\n"],r,
 "const s=require('fs').readFileSync(0,'utf8').trim();let ok=true;for(let i=0,j=s.length-1;i<j;i++,j--)if(s[i]!==s[j])ok=false;console.log(ok?'YES':'NO')",3,"Compare the first and last characters, then move inwards. Level is not a palindrome here because L and l differ.")
def r(t): return str(sum(1 for c in t.strip().lower() if c in 'aeiou'))
CODEM('b',"Count the vowels","Read one line of text and print how many vowels (a, e, i, o, u in either case) it contains.","One line of text.","Print the number of vowels.","1 <= length <= 1000",
 ["Hello World\n","rhythm\n","AEIOU aeiou\n","Programming is fun\n","xyz\n"],r,
 "const s=require('fs').readFileSync(0,'utf8').replace(/\\n$/,'');console.log((s.match(/[aeiouAEIOU]/g)||[]).length)",3,"Check every character against the five vowels after converting to lower case.")
def r(t):
    a=sorted(set(map(int,t.split()[1:]))); return str(a[-2]) if len(a)>1 else '-1'
CODEM('b',"Second largest value","Given n integers, print the second largest distinct value. If there is no such value, print -1.","The first line has n. The second line has n space-separated integers.","Print the second largest distinct integer, or -1.","1 <= n <= 1000, -10^6 <= each number <= 10^6",
 ["5\n3 9 1 7 9\n","3\n4 4 4\n","2\n-5 -1\n","6\n10 20 30 30 20 10\n","1\n8\n"],r,
 "const t=require('fs').readFileSync(0,'utf8').trim().split(/\\s+/).map(Number).slice(1);let a=-Infinity,b=-Infinity;for(const x of t){if(x>a){b=a;a=x}else if(x<a&&x>b)b=x}console.log(b===-Infinity?-1:b)",3,"Keep the largest and second largest distinct values while scanning once.")
# ---------------------------------------------------------------- medium
def r(t):
    L=t.split('\n'); n,target=map(int,L[0].split()); a=list(map(int,L[1].split()))
    return 'YES' if any(a[i]+a[j]==target for i in range(n) for j in range(i+1,n)) else 'NO'
CODEM('i',"Pair with a given sum","Given n integers and a target, print YES if two different positions hold numbers that add up to the target, otherwise NO.","The first line has n and the target. The second line has n integers.","Print YES or NO.","2 <= n <= 1000, values between -10^6 and 10^6",
 ["5 9\n2 7 11 15 1\n","4 100\n1 2 3 4\n","3 6\n3 3 5\n","2 0\n-4 4\n","3 8\n4 1 2\n"],r,
 "const L=require('fs').readFileSync(0,'utf8').trim().split('\\n');const [n,t]=L[0].split(' ').map(Number);const a=L[1].split(' ').map(Number);const seen=new Set();let ok=false;for(const x of a){if(seen.has(t-x))ok=true;seen.add(x)}console.log(ok?'YES':'NO')",5,"A set of values seen so far finds the partner in one pass. Using the same position twice is not allowed, which is why 4 alone does not make 8.")
def r(t):
    st=[];pr={')':'(',']':'[','}':'{'}
    for c in t.strip():
        if c in '([{': st.append(c)
        elif not st or st.pop()!=pr[c]: return 'NO'
    return 'NO' if st else 'YES'
CODEM('i',"Valid bracket sequence","Given a string made only of ( ) [ ] { }, print YES if every bracket is closed in the correct order, otherwise NO.","One line containing the brackets.","Print YES or NO.","1 <= length <= 10000",
 ["([]{})\n","([)]\n","((\n","{[()]}()\n","]\n"],r,
 "const s=require('fs').readFileSync(0,'utf8').trim();const o={')':'(',']':'[','}':'{'};const st=[];let ok=true;for(const c of s){if('([{'.includes(c))st.push(c);else{if(st.pop()!==o[c]){ok=false;break}}}console.log(ok&&st.length===0?'YES':'NO')",5,"A stack of open brackets: every closing bracket must match the most recent open one, and nothing may remain open.")
def r(t):
    s=t.strip(); out=[]; i=0
    while i<len(s):
        j=i
        while j<len(s) and s[j]==s[i]: j+=1
        out.append(s[i]+str(j-i)); i=j
    return ''.join(out)
CODEM('i',"Run-length encoding","Compress a string by replacing each run of the same character with the character followed by the run length. For example aaabcc becomes a3b1c2.","One string of lower case letters.","Print the encoded string.","1 <= length <= 10000",
 ["aaabcc\n","abc\n","zzzzzzzzzzzz\n","aabbaa\n","q\n"],r,
 "const s=require('fs').readFileSync(0,'utf8').trim();let o='';for(let i=0;i<s.length;){let j=i;while(j<s.length&&s[j]===s[i])j++;o+=s[i]+(j-i);i=j}console.log(o)",5,"Walk through the string, count how long each run lasts, and append the character and the count. A run of 12 prints 12, not two separate digits.")
def r(t):
    L=t.strip().split('\n'); n=int(L[0]); m=[list(map(int,L[1+i].split())) for i in range(n)]
    return str(abs(sum(m[i][i] for i in range(n))-sum(m[i][n-1-i] for i in range(n))))
CODEM('i',"Diagonal difference","Given a square matrix, print the absolute difference between the sum of its main diagonal and the sum of its other diagonal.","The first line has n. The next n lines have n integers each.","Print one integer.","1 <= n <= 100, values between -1000 and 1000",
 ["3\n11 2 4\n4 5 6\n10 8 -12\n","2\n1 2\n3 4\n","1\n5\n","3\n1 1 1\n1 1 1\n1 1 1\n","4\n1 2 3 4\n5 6 7 8\n9 10 11 12\n13 14 15 16\n"],r,
 "const L=require('fs').readFileSync(0,'utf8').trim().split('\\n');const n=+L[0];let a=0,b=0;for(let i=0;i<n;i++){const row=L[1+i].split(' ').map(Number);a+=row[i];b+=row[n-1-i]}console.log(Math.abs(a-b))",5,"Add m[i][i] for one diagonal and m[i][n-1-i] for the other in a single loop, then take the absolute difference.")
# ---------------------------------------------------------------- hard
def r(t):
    a=list(map(int,t.split()[1:])); best=cur=a[0]
    for x in a[1:]: cur=max(x,cur+x); best=max(best,cur)
    return str(best)
CODEM('a',"Maximum subarray sum","Given n integers (they may be negative), print the largest possible sum of a non-empty contiguous block of them.","The first line has n. The second line has n integers.","Print the maximum subarray sum.","1 <= n <= 10^5, values between -10^4 and 10^4",
 ["8\n-2 1 -3 4 -1 2 1 -5\n","3\n-3 -1 -2\n","5\n1 2 3 4 5\n","6\n5 -9 6 -2 3 -1\n","1\n-7\n"],r,
 "const a=require('fs').readFileSync(0,'utf8').trim().split(/\\s+/).map(Number).slice(1);let best=-Infinity;for(let i=0;i<a.length;i++){let s=0;for(let j=i;j<a.length;j++){s+=a[j];if(s>best)best=s}}console.log(best)",9,"Kadane's algorithm keeps the best sum ending at each position: cur = max(x, cur + x). The JS check uses a slower brute force so the two solutions are independent.")
def r(t):
    import bisect
    a=list(map(int,t.split()[1:])); tails=[]
    for x in a:
        i=bisect.bisect_left(tails,x)
        if i==len(tails): tails.append(x)
        else: tails[i]=x
    return str(len(tails))
CODEM('a',"Longest increasing subsequence","Given n integers, print the length of the longest strictly increasing subsequence (elements need not be next to each other, but their order is kept).","The first line has n. The second line has n integers.","Print one integer: the length.","1 <= n <= 5000, values between -10^9 and 10^9",
 ["8\n10 9 2 5 3 7 101 18\n","5\n5 4 3 2 1\n","6\n1 2 3 4 5 6\n","7\n0 8 4 12 2 10 6\n","1\n42\n"],r,
 "const a=require('fs').readFileSync(0,'utf8').trim().split(/\\s+/).map(Number).slice(1);const dp=a.map(()=>1);let best=0;for(let i=0;i<a.length;i++){for(let j=0;j<i;j++)if(a[j]<a[i]&&dp[j]+1>dp[i])dp[i]=dp[j]+1;if(dp[i]>best)best=dp[i]}console.log(best)",9,"dp[i] is the best length ending at i: look at every earlier smaller value. n = 5000 allows this O(n^2) approach; a patience-sorting O(n log n) version also works.")

# ---- independent cross-check: JS alternative must reproduce the Python reference on EVERY test
STATS_CODING=0
for title,js,tests,outs in ALT:
    for t,o in zip(tests,outs):
        with tempfile.NamedTemporaryFile('w',suffix='.js',delete=False) as f: f.write(js); p=f.name
        try: res=subprocess.run(['node',p],input=t,capture_output=True,text=True,timeout=15)
        finally: os.unlink(p)
        if res.returncode or res.stdout.strip()!=o.strip(): raise SystemExit(f'CODING MISMATCH in "{title}" for input {t!r}: reference {o!r}, independent solution {res.stdout.strip()!r} {res.stderr[-100:]}')
        STATS_CODING+=1
