from pwn import *
context.arch = 'amd64'
doing = shellcraft.amd64.open('flag')
doing += shellcraft.amd64.read('rax')
print(doing) 