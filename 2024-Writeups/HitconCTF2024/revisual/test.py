from itertools import *
from math import sqrt


ls = permutations([i for i in range(25)],5)
ls = list(ls)
# print([list(i) for i in ls])
print(len(ls))


d = [0x4, 0x14, 0x17, 0xd, 0xb, 0x0, 0xf, 0x1, 0xe, 0x15, 0x9, 0x13, 0x8, 0x3, 0x11, 0x18, 0x10, 0x6, 0x16, 0xa, 0x7, 0x12, 0x2, 0x5, 0xc]


def wtf(x, y, z):
    x,y,z = int(x),int(y),int(z)
    return d[x] + (d[z] / 25 + 0.5/650) * (d[y] - d[x])

# def gtfo(x,y,z,a,b):
#     #expected = 0.13030042559541372
#     x,y,z = int(x),int(y),int(z)
    
#     tmp0 = d[x] + (d[a]/25 + 0.5/650) * (d[y] - d[x])
#     tmp1 = d[x] + (d[b]/25 + 0.5/650) * (d[z] - d[x])
#     return sqrt(tmp0**2+tmp1**2),tmp0,tmp1

numbers = [i for i in range(25)]

v1 = wtf(numbers[0x13], numbers[0x3], numbers[0x5])
v2 = wtf(numbers[0x7], numbers[0x14], numbers[0x12])

v1 = round(v1*100000)
v2 = round(v2*100000)
# print(v1,v2,v1==round(10.002307593822476*100000),v2==round(6.2846153974533*100000))
numbers = ['-']*25
numbers[0x0] = 19
numbers[0x1] = 9
numbers[0x2] = 8
numbers[0x3] = 15
numbers[0x4] = 3
numbers[0x5] = 18
numbers[0x6] = 17
numbers[0x7] = 10
numbers[0x8] = 23
numbers[0x9] = 5
numbers[0xa] = 0
numbers[0xb] = 6
numbers[0xc] = 24
numbers[0xd] = 14
numbers[0xe] = 12
numbers[0xf] = 11
numbers[0x10] = 2
numbers[0x11] = 13
numbers[0x12] = 16
numbers[0x13] = 4
numbers[0x14] = 7
numbers[0x15] = 1
numbers[0x16] = 21
numbers[0x17] = 22
numbers[0x18] = 20
assert '-' not in numbers

print(numbers)
for i in range(25):
    if i not in numbers:
        print(i)