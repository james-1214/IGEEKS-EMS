"""Executable answer checks. A question written with PY/JS/SQ is only accepted if running the code gives the stated answer.
Missing runtime => the check is skipped loudly (never silently passed)."""
import subprocess, shutil, os, tempfile, sys
from common import *
STATS={'py':0,'js':0,'sql':0}
def _run(cmd, code, suffix, inp=None):
    with tempfile.NamedTemporaryFile('w',suffix=suffix,delete=False) as f: f.write(code); p=f.name
    try: r=subprocess.run(cmd+[p],capture_output=True,text=True,timeout=15)
    finally: os.unlink(p)
    return r
def _check(kind,got,ok,t):
    if got.strip()!=ok.strip(): raise SystemExit(f'EXEC MISMATCH ({kind}) in "{t[:60]}": ran to {got.strip()!r}, key says {ok!r}')
def PY(d,c,t,code,ok,w1,w2,w3,e,topic_=None):
    r=_run([sys.executable],code,'.py'); _check('py',r.stdout if r.returncode==0 else 'ERROR '+r.stderr[-120:],ok,t); STATS['py']+=1
    M(d,c,t+"\n\n"+code,ok,w1,w2,w3,e)
def JS(d,c,t,code,ok,w1,w2,w3,e):
    r=_run(['node'],code,'.js'); _check('js',r.stdout if r.returncode==0 else 'ERROR '+r.stderr[-120:],ok,t); STATS['js']+=1
    M(d,c,t+"\n\n"+code,ok,w1,w2,w3,e)
PGCMD=os.environ.get('PGEXEC','psql -h /tmp/pg -p 5544 -U postgres -d verify -At -q -v ON_ERROR_STOP=1')
def SQ(d,c,t,setup,query,ok,w1,w2,w3,e):
    """Runs setup+query in a scratch PostgreSQL schema; the single-line result must equal ok."""
    sql=f"drop schema if exists vq cascade; create schema vq; set search_path=vq; {setup}\n{query}"
    r=subprocess.run(PGCMD.split()+['-c',sql],capture_output=True,text=True,timeout=30,cwd='/tmp')
    out=[l for l in r.stdout.strip().split('\n') if l and l not in ('DROP SCHEMA','CREATE SCHEMA','SET')]
    got=out[-1] if r.returncode==0 and out else 'ERROR '+r.stderr[-150:]
    _check('sql',got,ok,t); STATS['sql']+=1
    M(d,c,t+"\n\n"+setup.strip()+"\n"+query.strip(),ok,w1,w2,w3,e)

STATS.update({'c':0,'cpp':0,'java':0})
def _compile_run(kind, code, ok, t):
    d=tempfile.mkdtemp()
    try:
        if kind in ('c','cpp'):
            f=os.path.join(d,'a.c' if kind=='c' else 'a.cpp')
            open(f,'w').write(code)
            r=subprocess.run(['gcc' if kind=='c' else 'g++','-w','-o',os.path.join(d,'a.out'),f]+(['-std=c++17'] if kind=='cpp' else ['-std=c11']),capture_output=True,text=True,timeout=60)
            if r.returncode: return 'COMPILE ERROR '+r.stderr[-150:]
            r=subprocess.run([os.path.join(d,'a.out')],capture_output=True,text=True,timeout=10); return r.stdout
        f=os.path.join(d,'Main.java'); open(f,'w').write(code)
        r=subprocess.run(['java',f],capture_output=True,text=True,timeout=60); return r.stdout if r.returncode==0 else 'ERROR '+r.stderr[-150:]
    finally: shutil.rmtree(d,ignore_errors=True)
def _mk(kind):
    def fn(d,c,t,code,ok,w1,w2,w3,e):
        got=_compile_run(kind,code,ok,t); _check(kind,got,ok,t); STATS[kind]+=1
        M(d,c,t+"\n\n"+code,ok,w1,w2,w3,e)
    return fn
CC=_mk('c'); CP=_mk('cpp'); JV=_mk('java')
