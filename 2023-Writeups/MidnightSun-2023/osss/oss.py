from z3 import *

s = Solver()


f = [BitVec(f'f{i}',8) for i in range(24)]
flag = [ord('-')]*24
for i in range(9):
    flag[i] = b'midnight{'[i]
flag[9] = 48
flag[12] = 78
flag[13] = 95
flag[14] = 53
flag[15]= 48
flag[16] = 114
flag[17] = 67
flag[18]  = ord('e')
flag[19] = ord('R')
flag[20] = 121
flag[21] = 33
flag[22] = 33
flag[23] = ord('}')



print(bytes(flag))