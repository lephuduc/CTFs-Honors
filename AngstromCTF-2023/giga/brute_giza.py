from pwn import *
import string
import signal
import glob
import os

context.delete_corefiles = True
   
m = string.ascii_letters + "0123456789_"
l = len(m)

def handle_signal(sig, frame):
    print("Received signal", sig)
    return
signal.signal(signal.SIGSEGV, handle_signal)


for i in range(1):
	inp = m[i].encode() + b'a'*426
	p = process("./giza")
	p.sendline(inp)
	status = p.waitfor()

