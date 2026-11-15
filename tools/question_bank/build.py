"""Builds everything the database needs from the authoring files.

    python3 build.py

Writes:  supabase/seed/*.sql            questions + coding tests (built-in, protected)
         supabase/library/01_exam_packages.sql   exam packages + fixed question lists, ends with validate_all_library_exams()
         docs/CONTENT_QUALITY_REPORT.md + docs/content_report.json
Exit code is 1 if any QUESTION fails validation. Packages that are short of questions are reported as BLOCKED (not an error):
the platform refuses to host them until real, validated questions exist.
"""
import json, os, sys, hashlib, re, difflib, datetime
from collections import Counter, defaultdict
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import a, b, c                                  # the original 329 questions
from common import B
ORIG = {k: len(v) for k, v in B.items()}
import html_extra, ce_quant, ce_reasoning, ce_verbal, ce_analytical   # new original content
import topics
try:
    import extra                                 # optional: further domains, one file each, listed in extra.py
except ImportError:
    pass

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
SEED = os.path.join(ROOT, 'supabase', 'seed'); LIB = os.path.join(ROOT, 'supabase', 'library'); DOCS = os.path.join(ROOT, 'docs')
for d in (SEED, LIB, DOCS): os.makedirs(d, exist_ok=True)

DOMAINS = [  # slug, name, category
 ('html','HTML','web'),('css','CSS','web'),('javascript','JavaScript','web'),('react','React','web'),('nodejs','Node.js','web'),
 ('expressjs','Express.js','web'),('angular','Angular','web'),('c','C','language'),('cpp','C++','language'),('java','Java','language'),
 ('python','Python','language'),('csharp','C#','language'),('mongodb','MongoDB','database'),('sql','SQL & Databases','database'),('dotnet','.NET','database')]
ENTRANCE = [('ce-quant','Quantitative Aptitude'),('ce-reasoning','Logical Reasoning'),('ce-verbal','Verbal Ability'),('ce-analytical','Analytical Thinking')]
ALL_SLUGS = [d[0] for d in DOMAINS] + [e[0] for e in ENTRANCE]
FILES = {'html':'01_html','css':'02_css','javascript':'03_javascript','java':'04_java','python':'05_python','cpp':'06_cpp','c':'07_c','csharp':'08_csharp',
         'dotnet':'09_dotnet','mongodb':'10_mongodb','expressjs':'11_expressjs','nodejs':'12_nodejs','angular':'13_angular','react':'14_react','sql':'15_sql',
         'ce-quant':'20_ce_quant','ce-reasoning':'21_ce_reasoning','ce-verbal':'22_ce_verbal','ce-analytical':'23_ce_analytical'}
LEVELS = [('beginner','Beginner',30,1),('intermediate','Intermediate',40,2),('advanced','Advanced',50,3)]
PKG_SIZE = 20
q = lambda s: '$q$' + str(s) + '$q$'
norm = lambda s: re.sub(r'[^a-z0-9 ]', '', s.lower())
h = lambda t: hashlib.md5(t.lower().encode()).hexdigest()    # same as md5(lower(text)) in Postgres

# ------------------------------------------------------------------ 1. annotate
for slug, qs in B.items():
    for i, x in enumerate(qs):
        x['source'] = 'igeeks-v1' if i < ORIG.get(slug, 0) else 'igeeks-v2'
        x['topic'] = x.get('topic') or topics.tag(slug, x['text'], x.get('options'))
        x['hash'] = h(x['text'])

# ------------------------------------------------------------------ 2. validate every question (mirrors question_problems() in migration_5.sql)
def problems(slug, x):
    p = []
    t = x['text']
    if len(t.strip()) < 12: p.append('text too short')
    if re.match(r'^(question|sample|test)\s*\d*\s*[:.?]?\s*$', t.strip(), re.I): p.append('placeholder text')
    if '$q$' in json.dumps(x): p.append('contains $q$ delimiter')
    if x['type'] in ('mcq', 'multi'):
        o = x['options'] or []
        if len(o) < 3: p.append('fewer than 3 options')
        if len({s.strip().lower() for s in o}) != len(o): p.append('duplicate options')
        cc = x['correct'] or []
        if not cc or any(i < 0 or i >= len(o) for i in cc): p.append('correct index invalid')
        if len(set(cc)) != len(cc): p.append('repeated correct index')
        if x['type'] == 'mcq' and len(cc) != 1: p.append('mcq needs one correct option')
        if x['type'] == 'multi' and not (2 <= len(cc) < len(o)): p.append('multi needs 2..n-1 correct')
    elif x['type'] == 'tf':
        if x['correct'] not in ('true', 'false'): p.append('tf answer invalid')
    elif x['type'] == 'short':
        if not str(x['correct'] or '').strip(): p.append('no accepted answer')
    elif x['type'] == 'code':
        tests = x.get('tests') or []
        if len(tests) < 3: p.append('fewer than 3 tests')
        if not any(h_ for _, _, h_ in tests): p.append('no hidden test')
        if not any(not h_ for _, _, h_ in tests): p.append('no sample test')
        if not x.get('statement', {}).get('description'): p.append('no statement')
    else: p.append('unknown type')
    if x['type'] != 'code' and not (x.get('expl') or '').strip(): p.append('no explanation')
    if x['marks'] <= 0: p.append('marks <= 0')
    if not x.get('topic'): p.append('no topic')
    return p

bad = []; dups = []; near = []
for slug in ALL_SLUGS:
    qs = B.get(slug, [])
    seen = {}
    for x in qs:
        for pr in problems(slug, x): bad.append((slug, x['text'][:70], pr))
        k = x['hash']
        if k in seen: dups.append((slug, x['text'][:70]))
        seen[k] = x
    # near-duplicates inside a domain (same question reworded)
    nt = [(norm(x['text']), x) for x in qs]
    for i in range(len(nt)):
        for j in range(i + 1, len(nt)):
            if abs(len(nt[i][0]) - len(nt[j][0])) > 25: continue
            r = difflib.SequenceMatcher(None, nt[i][0], nt[j][0]).ratio()
            if r >= 0.88: near.append((slug, round(r, 2), nt[i][1]['text'][:60], nt[j][1]['text'][:60]))
# exact duplicates across domains
alltxt = defaultdict(list)
for slug in ALL_SLUGS:
    for x in B.get(slug, []): alltxt[x['hash']].append(slug)
cross = [(k, v) for k, v in alltxt.items() if len(set(v)) > 1]

# ------------------------------------------------------------------ 3. seed SQL
def emit(slug):
    out = [f"-- {slug}: {len(B[slug])} built-in questions. Safe to re-run: existing rows are marked built-in/validated, nothing is duplicated.\n"]
    for x in B[slug]:
        opts = q(json.dumps(x['options'])) + '::jsonb' if x['options'] else 'null'
        cor = 'null' if x['type'] == 'code' else q(json.dumps(x['correct'])) + '::jsonb'
        st = q(json.dumps(x['statement'])) + '::jsonb' if x['type'] == 'code' else "'{}'::jsonb"
        lang = f"array['{x['lang']}']" if x['type'] == 'code' else "'{}'::text[]"
        meta = q(json.dumps({'lang': x['lang'], 'starter': x['starter']})) + '::jsonb' if x['type'] == 'code' else "'{}'::jsonb"
        title = q(x['text']) if x['type'] == 'code' else 'null'
        out.append(
            "insert into questions(domain_id,type,category,difficulty,text,title,options,correct,marks,explanation,statement,languages,meta,is_builtin,topic,source,content_status)\n"
            f"select d.id,'{x['type']}','{x['cat']}','{x['diff']}',{q(x['text'])},{title},{opts},{cor},{x['marks']},{q(x['expl'])},{st},{lang},{meta},true,{q(x['topic'])},'{x['source']}','validated' from domains d where d.slug='{slug}'\n"
            "on conflict (domain_id, md5(lower(text))) do update set is_builtin=true, content_status='validated', topic=excluded.topic, source=excluded.source;\n")
        if x['type'] == 'code':
            vals = ','.join(f"({q(i)},{q(o)},{'true' if hd else 'false'},{p})" for p, (i, o, hd) in enumerate(x['tests'], 1))
            out.append("insert into coding_tests(question_id,input,expected,is_hidden,position)\n"
                       f"select qq.id,v.i,v.o,v.h,v.p from questions qq join domains d on d.id=qq.domain_id cross join (values {vals}) as v(i,o,h,p)\n"
                       f"where d.slug='{slug}' and qq.text={q(x['text'])} and not exists (select 1 from coding_tests c where c.question_id=qq.id);\n")
    return ''.join(out)

allseed = ["-- IGEEKS built-in question bank. Run AFTER migration_5.sql. Safe to run more than once.\n"]
for slug in ALL_SLUGS:
    if not B.get(slug): continue
    s = emit(slug)
    open(os.path.join(SEED, FILES[slug] + '.sql'), 'w').write(s); allseed.append(s)
open(os.path.join(ROOT, 'supabase', 'seed_questions.sql'), 'w').write(''.join(allseed))

# ------------------------------------------------------------------ 4. exam packages (fixed question lists, deterministic)
def order_for_coverage(qs):
    """Round-robin over topics so a package spans the domain instead of clustering on one topic; coding questions kept in."""
    by = defaultdict(list)
    for x in sorted(qs, key=lambda z: z['hash']): by[x['topic']].append(x)
    keys = sorted(by); out = []
    while any(by.values()):
        for k in keys:
            if by[k]: out.append(by[k].pop(0))
    return out

PACKAGES = []   # dicts: slug,title,desc,dom,cat,diff,type,dur,pass,target,items[(section,slug,question)]
for slug, name, cat in DOMAINS:
    for lv, lname, dur, _ in LEVELS:
        pool = order_for_coverage([x for x in B.get(slug, []) if x['diff'] == lv])
        PACKAGES.append(dict(slug=f'{slug}-{lv}', title=f'{name} {lname}', dom=slug, cat=cat, diff=lv, type='subject', dur=dur, pass_=50, target=PKG_SIZE,
            desc=f'{PKG_SIZE} {lv}-level questions on {name}: topic-balanced, with answers and explanations. Ready to host.',
            items=[('Main', slug, x) for x in pool[:PKG_SIZE]], pool=len(pool)))

used = defaultdict(set)
def pick(slug, mix, avoid=True):
    out = []
    for lv, n in mix.items():
        pool = order_for_coverage([x for x in B[slug] if x['diff'] == lv])
        fresh = [x for x in pool if x['hash'] not in used[slug]] if avoid else pool
        take = fresh[:n]
        if len(take) < n: take += [x for x in pool if x not in take][:n - len(take)]   # reuse only if the pool is too small
        for x in take: used[slug].add(x['hash'])
        out += take
    return out
SECTIONS = [('ce-quant','Quantitative Aptitude'),('ce-reasoning','Logical Reasoning'),('ce-verbal','Verbal Ability'),('ce-analytical','Analytical Thinking')]
CE = [  # slug, title, per-section difficulty mixes
 ('common-entrance-standard','Common Entrance Examination – Standard',{'ce-quant':{'beginner':5,'intermediate':6,'advanced':4},'ce-reasoning':{'beginner':5,'intermediate':6,'advanced':4},'ce-verbal':{'beginner':4,'intermediate':4,'advanced':2},'ce-analytical':{'beginner':3,'intermediate':4,'advanced':3}},
  'Complete 50-question entrance test for every engineering branch: Quantitative Aptitude 15, Logical Reasoning 15, Verbal Ability 10, Analytical Thinking 10. Balanced difficulty, 1 mark each.'),
 ('common-entrance-foundation','Common Entrance Examination – Foundation',{'ce-quant':{'beginner':8,'intermediate':6,'advanced':1},'ce-reasoning':{'beginner':8,'intermediate':6,'advanced':1},'ce-verbal':{'beginner':5,'intermediate':4,'advanced':1},'ce-analytical':{'beginner':4,'intermediate':5,'advanced':1}},
  'Easier 50-question version of the entrance test, suited to first-year or screening use. Same four sections and marks.'),
 ('common-entrance-challenge','Common Entrance Examination – Challenge',{'ce-quant':{'beginner':2,'intermediate':6,'advanced':7},'ce-reasoning':{'beginner':2,'intermediate':6,'advanced':7},'ce-verbal':{'beginner':1,'intermediate':4,'advanced':5},'ce-analytical':{'beginner':1,'intermediate':4,'advanced':5}},
  'Harder 50-question version of the entrance test for scholarship or final-round selection. Same four sections and marks.')]
for slug, title, mixes, desc in CE:
    items = []
    for dsl, sname in SECTIONS: items += [(sname, dsl, x) for x in pick(dsl, mixes[dsl])]
    PACKAGES.append(dict(slug=slug, title=title, dom=None, cat='entrance', diff='mixed', type='entrance', dur=60, pass_=40, target=50, desc=desc, items=items, pool=None))
SECTION_SETS = {'ce-quant':{'beginner':8,'intermediate':10,'advanced':7},'ce-reasoning':{'beginner':8,'intermediate':10,'advanced':7},
                'ce-verbal':{'beginner':8,'intermediate':10,'advanced':7},'ce-analytical':{'beginner':5,'intermediate':10,'advanced':10}}
for dsl, sname in SECTIONS:
    PACKAGES.append(dict(slug=f'{dsl}-practice', title=f'Common Entrance – {sname} Section Test', dom=dsl, cat='entrance', diff='mixed', type='section', dur=30, pass_=40, target=25,
        desc=f'25-question section test on {sname} drawn from the full pool, mixed difficulty, 1 mark each.',
        items=[(sname, dsl, x) for x in pick(dsl, SECTION_SETS[dsl], avoid=False)], pool=len(B[dsl])))

lib = ["-- Exam library packages. Run AFTER the seed files. Re-runnable. Ends by validating every package inside the database.\n"]
for p in PACKAGES:
    dsel = f"(select id from domains where slug='{p['dom']}')" if p['dom'] else 'null'
    lib.append("insert into library_exams(slug,title,description,domain_id,category,difficulty,exam_type,duration_min,pass_pct,target_questions)\n"
               f"values ('{p['slug']}',{q(p['title'])},{q(p['desc'])},{dsel},'{p['cat']}','{p['diff']}','{p['type']}',{p['dur']},{p['pass_']},{p['target']})\n"
               "on conflict (slug) do update set title=excluded.title, description=excluded.description, duration_min=excluded.duration_min, pass_pct=excluded.pass_pct, target_questions=excluded.target_questions;\n")
    lib.append(f"delete from library_exam_questions where library_exam_id=(select id from library_exams where slug='{p['slug']}');\n")
    if p['items']:
        vals = ',\n  '.join(f"({q(sec)},{i},'{dsl}','{x['hash']}')" for i, (sec, dsl, x) in enumerate(p['items'], 1))
        lib.append("insert into library_exam_questions(library_exam_id,question_id,section,position)\n"
                   "select le.id,qq.id,v.sec,v.pos from library_exams le\n"
                   f"cross join (values\n  {vals}\n) as v(sec,pos,dom,h)\n"
                   "join domains d on d.slug=v.dom join questions qq on qq.domain_id=d.id and md5(lower(qq.text))=v.h\n"
                   f"where le.slug='{p['slug']}';\n")
lib.append("\nselect * from validate_all_library_exams();\n")
open(os.path.join(LIB, '01_exam_packages.sql'), 'w').write(''.join(lib))

# ------------------------------------------------------------------ 5. package verdicts (same rules as validate_library_exam())
verdicts = []
for p in PACKAGES:
    issues = []
    n = len(p['items'])
    if n != p['target']: issues.append(f"only {n} of {p['target']} designed questions can be filled with validated, correctly-levelled questions")
    hs = [x['hash'] for _, _, x in p['items']]
    if len(set(hs)) != len(hs): issues.append('duplicate question inside package')
    for _, dsl, x in p['items']:
        for pr in problems(dsl, x): issues.append(f"{x['text'][:50]}: {pr}")
        if p['diff'] not in ('mixed', x['diff']): issues.append(f"{x['text'][:50]}: wrong difficulty")
    marks = sum(x['marks'] for _, _, x in p['items'])
    verdicts.append(dict(slug=p['slug'], title=p['title'], category=p['cat'], difficulty=p['diff'], questions=n, target=p['target'], marks=marks, pool=p['pool'],
                         status='READY' if not issues and n else 'BLOCKED', issues=issues[:5]))

# ------------------------------------------------------------------ 6. report
tot = sum(len(B.get(s, [])) for s in ALL_SLUGS)
pos = Counter(); longest = 0; mcqn = 0
for s in ALL_SLUGS:
    for x in B.get(s, []):
        if x['type'] == 'mcq':
            mcqn += 1; pos[x['correct'][0]] += 1
            if max(range(len(x['options'])), key=lambda i: len(x['options'][i])) == x['correct'][0]: longest += 1
cov = {s: Counter(x['diff'] for x in B.get(s, [])) for s in ALL_SLUGS}
ready = [v for v in verdicts if v['status'] == 'READY']; blocked = [v for v in verdicts if v['status'] == 'BLOCKED']
R = ['# IGEEKS EMS – Content Quality Report', f'Generated {datetime.datetime.now().strftime("%Y-%m-%d %H:%M")} by `tools/question_bank/build.py`', '',
     '## Summary', f'- Built-in questions: **{tot}** (original 329 preserved + {tot-329} new)', f'- Question-level validation failures: **{len(bad)}**',
     f'- Exact duplicates inside a domain: **{len(dups)}**; near-duplicates (>=88% similar text): **{len(near)}**; exact duplicates across domains: **{len(cross)}**',
     f'- Exam packages: **{len(ready)} READY**, **{len(blocked)} BLOCKED** of {len(verdicts)}',
     f'- Content still needed: **{sum(max(0,30-cov[x][l]) for x in ALL_SLUGS if not x.startswith("ce-") for l in ("beginner","intermediate","advanced"))}** questions for 30/30/30 in every subject domain; **{sum(max(0,PKG_SIZE-cov[x][l]) for x in ALL_SLUGS if not x.startswith("ce-") for l in ("beginner","intermediate","advanced"))}** to make every {PKG_SIZE}-question subject package READY. BLOCKED packages cannot be hosted.',
     f'- MCQ answer-position spread (A,B,C,D): {[pos[i] for i in range(4)]}; correct option is the longest in {longest/mcqn:.0%} of {mcqn} MCQs', '',
     '## Question counts per domain and difficulty (target: 30 each)', '| Domain | Beginner | Intermediate | Advanced | Total | Meets 30/30/30 |', '|---|---:|---:|---:|---:|:--:|']
names = {d[0]: d[1] for d in DOMAINS}; names.update(dict(ENTRANCE))
for s in ALL_SLUGS:
    cc = cov[s]; ok = all(cc[l[0]] >= 30 for l in LEVELS)
    R.append(f"| {names[s]} | {cc['beginner']} | {cc['intermediate']} | {cc['advanced']} | {sum(cc.values())} | {'yes' if ok else ('pool>=50' if s.startswith('ce-') and sum(cc.values())>=50 else 'NO')} |")
R += ['', '## Exam packages', '| Package | Questions | Marks | Status | Reason |', '|---|---:|---:|---|---|']
for v in verdicts:
    R.append(f"| {v['title']} | {v['questions']}/{v['target']} | {v['marks']} | **{v['status']}** | {'; '.join(v['issues'][:1])} |")
R += ['', '## How correctness is checked', '- Structure (every question): valid options, valid answer indexes, explanation present, no placeholder text, no `$q$` delimiter, topic present. Mirrors `question_problems()` in migration_5.sql, which re-checks inside the database.',
      '- Quantitative / analytical answers: each key is recomputed by Python (`calc=` in the authoring file); the build stops on a mismatch.',
      '- Reasoning puzzles (series, directions, seating, ranking, calendar, knights and knaves): verified by simulation or brute force in `ce_reasoning.py` and `ce_analytical.py`.',
      '- Coding questions: expected outputs are produced by Python reference solutions. They have NOT been compiled or run in Judge0 in this environment.',
      '- Verbal, HTML and the rest of the conceptual content: reviewed by the author; there is no automated oracle for these. Spot-check before high-stakes use.',
      '- Original 329 questions: structure-validated, exact/near-duplicate scanned. Topics for them are assigned by keyword rules (`topics.py`), not by hand.', '']
if near:
    R += ['## Near-duplicate pairs to review', '| Domain | Similarity | A | B |', '|---|---:|---|---|'] + [f'| {d} | {r} | {x} | {y} |' for d, r, x, y in near[:60]] + ['']
if bad:
    R += ['## Validation failures', '| Domain | Question | Problem |', '|---|---|---|'] + [f'| {d} | {t} | {pr} |' for d, t, pr in bad] + ['']
if cross:
    R += ['## Same text in several domains', ''] + [f'- {v}' for k, v in cross] + ['']
open(os.path.join(DOCS, 'CONTENT_QUALITY_REPORT.md'), 'w').write('\n'.join(R))
json.dump(dict(total=tot, failures=bad, duplicates=dups, near=near, verdicts=verdicts, coverage={s: dict(cov[s]) for s in ALL_SLUGS}), open(os.path.join(DOCS, 'content_report.json'), 'w'), indent=1)
print(f'questions={tot} failures={len(bad)} dups={len(dups)} near={len(near)} cross={len(cross)} READY={len(ready)} BLOCKED={len(blocked)}')
for v in verdicts:
    if v['status'] == 'READY': print('  READY  ', v['title'], v['questions'], 'q', v['marks'], 'marks')
sys.exit(1 if bad or dups else 0)
