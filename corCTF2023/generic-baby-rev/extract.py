import struct
base = 0xD080
x = []
for row in range(0,96*96*4,96*4):
    ls = []
    i = 0
    while True:
        n = struct.unpack('<i',get_bytes(base+row+i,4))[0]
        if n ==-1:
            break
        ls.append(n)
        i+=4
    x.append(ls)
print(x)
