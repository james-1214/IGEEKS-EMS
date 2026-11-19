import json,time,subprocess,sys,urllib.request
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.common.by import By
PORT=8790; BASE=f'http://localhost:{PORT}/IGEEKS-EMS/'
srv=subprocess.Popen([sys.executable,'/tmp/e2e/stub.py','/tmp/e2e/dist',str(PORT)])
time.sleep(1.5)
def log(): return json.loads(urllib.request.urlopen(f'http://localhost:{PORT}/__log').read())
def mk():
    o=Options(); o.binary_location='/tmp/ff/bin/firefox'; o.add_argument('-headless')
    o.set_preference('media.navigator.streams.fake',True); o.set_preference('media.navigator.permission.disabled',True)
    return webdriver.Firefox(options=o,service=Service('/tmp/ff/bin/geckodriver'))
def X(d,xp,t=15):
    end=time.time()+t
    while time.time()<end:
        try:
            e=d.find_elements(By.XPATH,xp)
            if e: return e[0]
        except Exception: pass
        time.sleep(.3)
    raise AssertionError('not found: '+xp)
def btn(d,text,t=15): return X(d,f"//button[contains(normalize-space(.),'{text}')]",t)
def check(name,cond,extra=''):
    print(('PASS ' if cond else 'FAIL ')+name+(' '+str(extra) if extra else '')); 
    if not cond: FAILS.append(name)
FAILS=[]
def session(email,eng):
    d=mk()
    try:
        d.get(BASE); X(d,"//input[@type='email']").send_keys(email); btn(d,'Continue').click()
        X(d,"//input[@type='password']").send_keys('x'); btn(d,'Log in').click()
        X(d,"//*[contains(.,'Camera required')]")
        check(f'[{email}] card shows camera chip',True)
        check(f'[{email}] card shows coding policy chip',len(d.find_elements(By.XPATH,"//*[contains(.,'mandatory for engineering')]"))>0)
        btn(d,'Start exam').click()
        X(d,"//*[contains(.,'Camera check')]")
        start=btn(d,'Start exam now'); check(f'[{email}] Start disabled before consent+camera',start.get_attribute('disabled') is not None)
        X(d,"//input[@type='checkbox']").click()
        check(f'[{email}] Start still disabled until camera check passes',btn(d,'Start exam now').get_attribute('disabled') is not None)
        btn(d,'Turn on camera').click()
        X(d,"//*[contains(.,'The camera is working') or contains(.,'no face is visible')]",20)
        check(f'[{email}] camera check passed',True)
        ok=btn(d,'Start exam now'); check(f'[{email}] Start enabled after camera check',ok.get_attribute('disabled') is None)
        ok.click()
        X(d,"//video[@id='livecam']"); check(f'[{email}] live camera preview shown during exam',True)
        w=d.execute_script("const v=document.getElementById('livecam');return [v.videoWidth,!!v.srcObject]"); check(f'[{email}] preview is streaming',w[0]>0 and w[1],w)
        # first question: answer mcq
        X(d,"//label[contains(@class,'opt')]").click()
        time.sleep(4.5)   # first snapshot is taken ~4s after start
        L=log(); snaps=[x for x in L if x['action']=='proctor_snap']
        check(f'[{email}] snapshot uploaded',len(snaps)>=1,len(snaps))
        if snaps: check(f'[{email}] snapshot is a JPEG and not flagged dark',snaps[0]['b']['image'].startswith('data:image/jpeg') and snaps[0]['b']['dark'] is False)
        check(f'[{email}] answer autosaved',any(x['action']=='save_progress' and x['b'].get('question_id')=='q1' for x in L))
        btn(d,'Next question').click()
        X(d,"//select")
        banner=d.find_element(By.XPATH,"//*[contains(@class,'note')][contains(.,'coding') or contains(.,'Coding')]").text
        check(f'[{email}] coding banner is '+('mandatory' if eng else 'optional'),('Mandatory for your branch' in banner) if eng else ('Optional for you' in banner),banner[:70])
        opts=[o.text for o in d.find_elements(By.XPATH,"//select/option")]; check(f'[{email}] language picker offers 5 languages',len(opts)==5,opts)
        ta=d.find_element(By.XPATH,"//textarea[1]"); check(f'[{email}] starter code shown',ta.get_attribute('value').startswith('# py starter'))
        # switch language: starter swaps because code is untouched
        from selenium.webdriver.support.ui import Select
        Select(d.find_element(By.XPATH,"//select")).select_by_value('java'); time.sleep(.4)
        check(f'[{email}] language switch swaps starter',d.find_element(By.XPATH,"//textarea[1]").get_attribute('value').startswith('// java starter'))
        btn(d,'Next question').click(); X(d,"//*[contains(.,'Valid bracket sequence')]")
        btn(d,'Submit exam').click(); time.sleep(.8)
        if eng:
            check(f'[{email}] submit blocked: coding mandatory and none attempted',len(d.find_elements(By.XPATH,"//*[contains(.,'Coding is mandatory for your branch')]"))>0 and len(d.find_elements(By.XPATH,"//*[contains(.,'Submit your exam?')]"))==0)
            ta=d.find_element(By.XPATH,"//textarea[1]"); ta.clear(); ta.send_keys('print(input())'); time.sleep(.8)
            btn(d,'Submit exam').click(); X(d,"//*[contains(.,'Submit your exam?')]"); check(f'[{email}] submit allowed after attempting coding',True)
        else:
            check(f'[{email}] optional: submit allowed with NO coding',len(d.find_elements(By.XPATH,"//*[contains(.,'Submit your exam?')]"))>0)
        btn(d,'Yes, submit').click(); X(d,"//*[contains(.,'marks')]",15); check(f'[{email}] result page shown',True)
        L=log(); sub=[x for x in L if x['action']=='submit_exam']; check(f'[{email}] submit_exam reached server',len(sub)>=1)
        t=d.execute_script("return 'camera stopped' ") ; 
        off=d.execute_script("return document.getElementById('livecam')===null"); check(f'[{email}] camera preview removed after submit',off)
    finally:
        d.quit()
try:
    session('eng@test.com',True); session('arts@test.com',False)
finally:
    srv.terminate()
print('FAILED:',FAILS if FAILS else 'none')
