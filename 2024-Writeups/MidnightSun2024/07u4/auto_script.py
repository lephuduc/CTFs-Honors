from pwn import *
from gzip import decompress
from test import solve
io = remote('07u4-1.play.hfsc.tf', 3991)

io.recvuntil(b'Play\n')

io.sendline(b'2')
i = 0
while True:
    if i==25:
        io.interactive()
    hex_string = io.recvuntil(b'ANSWER:').strip(b'\n\nANSWER:').decode()
    hex_string = hex_string[hex_string.index('1f8b08'):]
    d = decompress(bytes.fromhex(hex_string))
    with open(f'bins/bin{i}.elf','wb') as wf:
        wf.write(d)
        wf.close()
    pw = solve(i)
    print(i,pw)
    io.sendline(pw)
    i += 1
    # io.interactive()
    # break