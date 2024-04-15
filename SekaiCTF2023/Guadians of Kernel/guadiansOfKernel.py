from z3 import *
from pwn import p64,p32
x = p64(0x788C88B91D88AF0E) + p32(0x7DF311EC)
x =list(x)

j = 11
def brute(last_,i):
    for c in range(255):
        if (c+(last_*~i))&0xff==x[i]:
            return c
lastn = 0
for i in range(11,-1,-1):
    x[i] = brute(lastn,i)
    # print(x[i])
    lastn = x[i]
last_part = bytes(x)
print(last_part)

s = Solver()

x = BitVec('x',32)
y = BitVec('y',32)


v8 = 7 * RotateLeft(0x59D87C3F * RotateLeft(0x193482BA * x, 15), 11)
v9 = RotateRight(0x193482BA * y, 15)
v10 = 0x764521F9* ((v8 + 1204333666) ^ (1507359807 * v9) ^ 7 ^ (((v8 + 1204333666) ^ (1507359807 * v9)) >> 16))
s.add((((0x93AC1E76 * ((v10 >> 13) ^ v10)) >> 16) ^ (0x93AC1E76 * ((v10 >> 13) ^ v10))) == 0xF99C821)

x0 = Extract(7,0,x)
x1 = Extract(15,8,x)
x2 = Extract(23,16,x)
x3 = Extract(31,24,x)
s.add(And(x0>=48,x0<=48+9))
s.add(And(x1>=48,x1<=48+9))
s.add(And(x2>=48,x2<=48+9))
s.add(And(x3>=48,x3<=48+9))

y0 = Extract(7,0,y)
y1 = Extract(15,8,y)
y2 = Extract(23,16,y)
y3 = Extract(31,24,y)
s.add(And(y0>=48,y0<=48+9))
s.add(And(y1>=48,y1<=48+9))
s.add(And(y2>=48,y2<=48+9))
s.add(y==0)

while s.check():
    m = s.model()
    n1 = m[x].as_long()
    n2 = m[y].as_long()
    n1 = p32(n1)
    n2 = p32(n2)
    print(n1+n2)
    flag = b"SEKAI{" + n1+n2[:3] + last_part
    print(flag)