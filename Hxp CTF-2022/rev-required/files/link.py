import os
ld = [i[:-3] for i in os.listdir()][:-6]
#  28: link i to j
# 157: link i to t
# 299: link t to i
#...
with open('required.js','r') as f:
    lines = f.readlines()
    f.close()
newdata = ""
newdata = lines[0]
last_line = lines[-1]
d = {}
for line in lines[1:-1]:
    l = line.split("\'")
    i,j,t = l[2].strip(')\n').strip('(').split(',')
    r = l[1]
    match (r):
        case './157':
            d[i] = t
            continue
        case './28': # example: link i to j
            d[i] = j
            continue
        case './299':
            d[t] = j
            continue
        case './394':
            d[t] = i
            continue
        case './555':
            d[j] = t
            continue
        case './736':
            d[j] = i 
            continue
    if r=='./556':
        d = {}
        continue
    while r[2:] in d.keys():
        r = './' + d[r[2:]]
    l[1] = f"\'{r}\'"
    l = ''.join(l)
    newdata+=l
newdata +=last_line
with open('new_required.js','w') as f:
    f.write(newdata)
    f.close()
os.system('node "d:\CTF\HxPCTF\\required\\files\\required.js"')
os.system('node "d:\CTF\HxPCTF\\required\\files\\new_required.js"')
    # sthing = [str(int(n.strip(')\n').strip('('))) for n in l[2].split(',')]
    # for x in sthing:
    #     l[2] = l[2].replace(x,str(int(x)%30))

