#!/usr/bin/env python

import sys
import SocketServer
from threading import Thread
import os
import re

class service(SocketServer.BaseRequestHandler):
    def handle(self):
        data = 'dummy'
        while (data.find("HTTP")==-1):
            data = self.request.recv(1024)

        ln=data.split('\n')[0]
        ln=ln[:-1]
        pattern=re.compile("^GET /\?s=\d{1,5}&e=\d{1,5} HTTP/1\.1$")
        if pattern.match(ln):
            std,end=ln.split(' ')[1].split('&')
            st=std[std.find('=')+1:]
            en=end[end.find('=')+1:]
            p=os.popen("/root/nf/cli/pkread "+st+" "+en,"r")
            while 1:
                line = p.readline()
                if not line: break
                self.request.send(line)
        self.request.close()

class ThreadedTCPServer(SocketServer.ThreadingMixIn, SocketServer.TCPServer):
    pass

t = ThreadedTCPServer(('',999), service)
try:
    t.serve_forever()
except KeyboardInterrupt:
    sys.exit(1)