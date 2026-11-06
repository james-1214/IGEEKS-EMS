import json,re,sys,os
import a,b,c
from common import B
ORDER=['html','css','javascript','java','python','cpp','c','csharp','dotnet','mongodb','expressjs','nodejs','angular']
q=lambda s:'$q$'+str(s)+'$q$'
os.makedirs('../../supabase/seed',exist_ok=True)
allsql=["-- IGEEKS question bank seed. Safe to run more than once (duplicates are skipped).\n"]
issues=[]
for n,slug in enumerate(ORDER,1):
    qs=B[slug];seen=set();out=[f"-- {slug}: {len(qs)} questions\n"]
    for x in qs:
        k=x['text'].lower()
        if k in seen: issues.append(('dup',slug,x['text'][:40]))
        seen.add(k)
        if x['type'] in('mcq','multi'):
            if len(set(x['options']))!=4: issues.append(('opts',slug,x['text'][:40]))
            if not x['correct'] or any(i<0 or i>3 for i in x['correct']): issues.append(('corr',slug,x['text'][:40]))
        if '$q$' in json.dumps(x): issues.append(('dollar',slug,x['text'][:40]))
        opts=q(json.dumps(x['options']))+'::jsonb' if x['options'] else 'null'
        cor={'tf':q(json.dumps(x['correct'])),'code':'null'}.get(x['type'],q(json.dumps(x['correct'])))+('::jsonb' if x['correct'] is not None else '')
        cor='null' if x['type']=='code' else cor
        st=q(json.dumps(x['statement']))+'::jsonb' if x['type']=='code' else "'{}'::jsonb"
        lang=f"array['{x['lang']}']" if x['type']=='code' else "'{}'::text[]"
        meta=q(json.dumps({'lang':x['lang'],'starter':x['starter']}))+'::jsonb' if x['type']=='code' else "'{}'::jsonb"
        title=q(x['text']) if x['type']=='code' else 'null'
        out.append(f"insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta)\nselect d.id,'{x['type']}','{x['cat']}','{x['diff']}',{q(x['text'])},{title},{opts},{cor},{x['marks']},{q(x['expl'])},{st},{lang},{meta} from domains d where d.slug='{slug}' on conflict do nothing;\n")
        if x['type']=='code':
            vals=','.join(f"({q(i)},{q(o)},{'true' if h else 'false'},{p})" for p,(i,o,h) in enumerate(x['tests'],1))
            out.append(f"insert into coding_tests(question_id,input,expected,is_hidden,position)\nselect qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values {vals}) as v(i,o,h,p)\nwhere d.slug='{slug}' and qq.text={q(x['text'])} and not exists (select 1 from coding_tests c where c.question_id=qq.id);\n")
    open(f'../../supabase/seed/{n:02d}_{slug}.sql','w').write(''.join(out));allsql+=out
open('../../supabase/seed_questions.sql','w').write(''.join(allsql))
tot=sum(len(B[s]) for s in ORDER);print('TOTAL',tot,'issues',issues)
from collections import Counter
for s in ORDER:
    t=Counter(x['type'] for x in B[s]);d=Counter(x['diff'] for x in B[s]);print(f"{s:11}{len(B[s]):3}",dict(t),dict(d))
