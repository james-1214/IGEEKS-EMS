import json,http.server,socketserver,threading,os,sys,time
ROOT=sys.argv[1]; LOG=[]; STATE={'answers':{}}
Q=[dict(id='q1',section='Quantitative Aptitude',type='mcq',category='conceptual',difficulty='beginner',text='What is 20% of 250?',options=['50','40','25','45'],marks=1),
   dict(id='c1',section='Coding',type='code',category='coding',difficulty='beginner',text='Digit sum of a number',marks=3,languages=['python','java','c','cpp','javascript'],
        starter='# read input with input()\n',starters={'python':'# py starter\n','java':'// java starter\n','c':'// c starter\n','cpp':'// cpp starter\n','javascript':'// js starter\n'},samples=[{'in':'12\n','out':'3'}]),
   dict(id='c2',section='Coding',type='code',category='coding',difficulty='intermediate',text='Valid bracket sequence',marks=5,languages=['python','java','c','cpp','javascript'],
        starter='# read input with input()\n',starters={'python':'# py starter\n'},samples=[{'in':'()\n','out':'YES'}])]
def branch(email): return 'B.Com' if email.startswith('arts') else 'CSE'
def eng(email): return branch(email)!='B.Com'
class H(http.server.SimpleHTTPRequestHandler):
    def log_message(self,*a): pass
    def translate_path(self,p):
        p=p.split('?')[0]; p=p.replace('/IGEEKS-EMS/','/',1) if p.startswith('/IGEEKS-EMS/') else p
        return os.path.join(ROOT,p.lstrip('/')) if p!='/' else os.path.join(ROOT,'index.html')
    def cors(self):
        self.send_header('Access-Control-Allow-Origin','*'); self.send_header('Access-Control-Allow-Headers','authorization, x-client-info, apikey, content-type'); self.send_header('Access-Control-Allow-Methods','POST,OPTIONS,GET')
    def do_OPTIONS(self): self.send_response(200); self.cors(); self.end_headers()
    def reply(self,d,code=200):
        b=json.dumps(d).encode(); self.send_response(code); self.cors(); self.send_header('Content-Type','application/json'); self.send_header('Content-Length',str(len(b))); self.end_headers(); self.wfile.write(b)
    def do_POST(self):
        n=int(self.headers.get('Content-Length',0)); b=json.loads(self.rfile.read(n) or b'{}'); a=b.get('action'); fn=self.path.split('/')[-1]
        LOG.append({'fn':fn,'action':a,'b':{k:(v[:30] if isinstance(v,str) and k=='image' else v) for k,v in b.items()}})
        email=STATE.get('email','eng@test.com')
        if fn=='api':
            if a=='check_email': STATE['email']=b['email']; return self.reply({'registered':True})
            if a=='login': return self.reply({'token':'t','student':{'name':'Test','usn':'1','phone':'9999999999','college':'C','branch':branch(STATE['email']),'plan':'90 Days','domain':'Full Stack Developer'}})
        if fn=='exam':
            if a=='list_exams': return self.reply({'exams':[dict(id='e1',title='Aptitude & Coding Assessment',description='d',domain=None,mode='total',total_min=120,per_sec=0,pass_pct=40,max_switches=3,max_attempts=1,start_at=None,end_at=None,show_solutions='never',require_fullscreen=True,require_camera=True,require_seb=False,coding_policy='required_engineering',coding_min=1,window='open',attempts_used=0,attempts_left=1,in_progress=False,best_pct=None,total_questions=3,total_marks=9,instructions=None,sections=[{'name':'Quantitative Aptitude','count':1},{'name':'Coding','count':2}],hosted=True)]})
            if a=='start_exam':
                return self.reply({'session_id':'s1','attempt_no':1,'attempts_left':0,'resumed':False,'remaining':7200,'exam':dict(id='e1',title='Aptitude & Coding Assessment',mode='total',per_sec=0,total_min=120,pass_pct=40,max_switches=3,negative_marking=0,require_fullscreen=True,ai_proctoring=False,shuffle=False,hosted=True,require_camera=True,require_seb=False),
                  'coding':{'policy':'required_engineering','required':eng(STATE['email']),'min':1,'total':2,'engineering':eng(STATE['email'])},'questions':Q,'answers':{},'flags':{},'visited':{}})
            if a=='save_progress': STATE['answers'][b['question_id']]=b.get('answer'); return self.reply({'ok':True})
            if a in('proctor_snap','proctor_event'): return self.reply({'ok':True})
            if a=='submit_exam':
                cur=b.get('current'); have=dict(STATE['answers'])
                if cur: have[cur['question_id']]=cur['answer']
                tried=sum(1 for k in('c1','c2') if have.get(k))
                if eng(STATE['email']) and not b.get('auto') and tried<1: return self.reply({'error':'Coding is mandatory for your branch.'},409)
                return self.reply({'score':1,'max':1 if not eng(STATE['email']) and tried==0 else 9,'pct':100,'passed':True,'pending':0,'need':40,'correct':1,'wrong':0,'unanswered':0,'rank':1,'of':1,'det':[{'text':'Q','v':'Correct','note':''}],'sections':[]})
        self.reply({'error':'unhandled '+str(a)},400)
    def do_GET(self):
        if self.path=='/__log': b=json.dumps(LOG).encode(); self.send_response(200); self.cors(); self.end_headers(); self.wfile.write(b); return
        return super().do_GET()
socketserver.TCPServer.allow_reuse_address=True
srv=socketserver.TCPServer(('127.0.0.1',int(sys.argv[2])),H); srv.serve_forever()
