from z3 import *

s = Solver()
n = BitVec('n',8)

n = (((n*0x0802&0x22110)|(n*0x8020&0x88440))*0x10101>>16)&0xff
print(s)
print(n)
