# sigrok-cli -i minus10.sr -P uart:tx=D0:rx=D1
# ruby intel_hex.rb < pro.hex > pro.bin

# with open('out.txt','r') as f:
#     d = f.readlines()
# prog = b''
# for i in range(9,len(d),11):
#     x = d[i].split()[-1]
#     n = bytes.fromhex(x)
#     prog += n
# with open('extracted_2.hex','wb') as f:
#     f.write(prog)

with open('out-timing.txt','r') as f:
    d = f.readlines()

for l in d:
    if 'timing' in l:
        connt += 1 