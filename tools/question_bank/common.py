import random
B={};cur=None
DF={'b':'beginner','i':'intermediate','a':'advanced'};CT={'k':'conceptual','o':'output','d':'debugging','s':'scenario'};MK={'b':1,'i':2,'a':3}
def dom(s):
    global cur;cur=s;B.setdefault(s,[])
def _sh(t,opts,oks):
    r=random.Random(t);order=list(range(len(opts)));r.shuffle(order);return [opts[i] for i in order],sorted(order.index(i) for i in oks)
def M(d,c,t,ok,w1,w2,w3,e):
    o,ci=_sh(t,[ok,w1,w2,w3],[0]);B[cur].append(dict(type='mcq',cat=CT[c],diff=DF[d],text=t,options=o,correct=ci,marks=MK[d],expl=e))
def S(d,c,t,oks,ws,e):
    o,ci=_sh(t,oks+ws,range(len(oks)));B[cur].append(dict(type='multi',cat=CT[c],diff=DF[d],text=t,options=o,correct=ci,marks=MK[d]+1,expl=e))
def T(d,t,v,e):
    B[cur].append(dict(type='tf',cat='conceptual',diff=DF[d],text=t,options=None,correct='true' if v else 'false',marks=1,expl=e))
STARTER={
'java':"import java.util.*;\n\npublic class Main {\n    public static void main(String[] args) {\n        Scanner sc = new Scanner(System.in);\n        // write your code here\n    }\n}\n",
'python':"# read input with input()\n# write your code here\n",
'cpp':"#include <bits/stdc++.h>\nusing namespace std;\n\nint main() {\n    // write your code here\n    return 0;\n}\n",
'c':"#include <stdio.h>\n\nint main() {\n    // write your code here\n    return 0;\n}\n",
'csharp':"using System;\n\nclass Program {\n    static void Main() {\n        // write your code here\n    }\n}\n",
'javascript':"const lines = require('fs').readFileSync(0, 'utf8').split('\\n');\n// write your code here\n"}
CODE_LIST=[]
def CODE(d,title,desc,infmt,outfmt,cons,lang,tests,ref,marks,expl):
    outs=[ref(t) for t in tests]
    ex=[{'input':tests[i],'output':outs[i]} for i in range(2)]
    B[cur].append(dict(type='code',cat='coding',diff=DF[d],text=title,options=None,correct=None,marks=marks,expl=expl,
      statement=dict(description=desc,input_format=infmt,output_format=outfmt,constraints=cons,examples=ex),
      lang=lang,starter=STARTER[lang],tests=[(tests[i],outs[i],i>=2) for i in range(len(tests))]))
