to_write = ""

with open('res.txt','r') as f:
    d = f.readlines()
for line in d:
    line = line.strip('\n')
    for c in '0123456789 \n':
        line = line.replace(c,'')
    line = line.replace('#','.')
    line = line.replace('X',' ')
    # print(line)
    to_write+=line
    assert len(to_write)%96==0
with open('final.txt','w') as wf:
    wf.write(to_write)
print(to_write)