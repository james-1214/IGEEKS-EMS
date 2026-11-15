import re, math, itertools
from datetime import date
import common as C
from common import *
ENV={'math':math,'comb':math.comb,'factorial':math.factorial,'gcd':math.gcd,'itertools':itertools,'date':date}
def _num(s):
    s=s.replace(',','').replace('₹','').replace('Rs','')
    m=re.search(r'(-?\d+)\s*[:/]\s*(\d+)',s)
    if m: return int(m.group(1))/int(m.group(2))
    return float(re.search(r'-?\d+(?:\.\d+)?',s).group())
def E(d,t,ok,w1,w2,w3,e,calc=None,ans=None,sc=False):
    """Entrance question: 1 mark whatever the difficulty. If calc is given it is evaluated and MUST equal the number in the correct option."""
    if calc is not None:
        v=eval(calc,ENV)
        want=ans if ans is not None else _num(ok)
        if abs(float(v)-want)>1e-6: raise SystemExit(f'CALC MISMATCH in "{t[:60]}": computed {v}, key says {want}')
    M(d,'s' if sc else 'k',t,ok,w1,w2,w3,e); C.B[C.cur][-1]['marks']=1
def ET(d,t,v,e):
    T(d,t,v,e); C.B[C.cur][-1]['marks']=1
