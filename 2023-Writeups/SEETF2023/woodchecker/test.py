with open('woodchecker.wpk','r') as f:
    lines = f.readlines()
new = ""
i = 0
while i < len(lines):
    j = 1
    while i+j<len(lines) and lines[i+j]==lines[i] :
        j+=1
        # print(lines[j])
    if j!=1:
        
        new += lines[i].strip()+ " " + str(j)+"\n"
        i+=j
    else:
        new +=lines[i]
        i+=1
with open('new.txt','w') as wf:
    wf.write(new)
# print(lines)
# print(new)