#!/usr/bin/env python
# coding=utf-8

import time
import socket
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.image import MIMEImage

# the e-mail config
# this is just a simple format,this e-mail doesn't exist.
smtpserver = "smtp.163.com"
username = "atomylg@163.com"
password = "nmmevvpymkehknea"
sender = "atomylg@163.com"
receiver = ["atomylg@163.com"]
subject = "[Raspberry Pi] IP Report"

def getLocalIP():
    ip = None
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.connect(('114.114.114.114', 0))
    ip = s.getsockname()[0]
    s.close()
    return ip

def sendEmail(msghtml):
    msgRoot = MIMEMultipart('related')
    msgRoot["To"] = ','.join(receiver)
    msgRoot["From"] = sender
    msgRoot['Subject'] =  subject
    msgText = MIMEText(msghtml,'html','utf-8')
    msgRoot.attach(msgText)
    smtp = smtplib.SMTP()
    smtp.connect(smtpserver)
    smtp.login(username, password)
    smtp.sendmail(sender, receiver, msgRoot.as_string())
    smtp.quit()

if __name__ == '__main__':
    time.sleep(10)
    ip = getLocalIP()
    print ip
    sendEmail(ip)
