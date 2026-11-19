import sys,json,subprocess,time,http.server,threading,socketserver,os
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.firefox.service import Service
os.chdir('/tmp/camtest')
class Q(http.server.SimpleHTTPRequestHandler):
    def log_message(self,*a): pass
srv=socketserver.TCPServer(('127.0.0.1',8765),Q); threading.Thread(target=srv.serve_forever,daemon=True).start()
def go(prefs,label):
    o=Options(); o.binary_location='/tmp/ff/bin/firefox'; o.add_argument('-headless')
    for k,v in prefs.items(): o.set_preference(k,v)
    d=webdriver.Firefox(options=o,service=Service('/tmp/ff/bin/geckodriver'))
    try:
        d.get('http://localhost:8765/index.html')   # localhost counts as a secure context
        d.set_script_timeout(30)
        r=d.execute_async_script("const cb=arguments[arguments.length-1];window.run().then(cb)")
        print(label,json.dumps(r))
    finally: d.quit()
go({'media.navigator.streams.fake':True,'media.navigator.permission.disabled':True},'FAKE-CAMERA, permission granted ->')
go({'media.navigator.streams.fake':False,'media.navigator.permission.disabled':False,'permissions.default.camera':2},'PERMISSION BLOCKED ->')
go({'media.navigator.streams.fake':False,'media.navigator.permission.disabled':True},'NO CAMERA DEVICE ->')
