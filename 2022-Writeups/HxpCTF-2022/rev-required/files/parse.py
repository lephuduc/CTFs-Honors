with open('trace.txt','r') as f:
    d = f.readlines()
    f.close()
ls = []
codes = ""
for line in d:
    line = line.split()
    filename,i,j,t = line[0] + '.js',line[1],line[2],line[3]
    # print(filename,i,j,t)
    with open(filename,'r') as f:
        func = f.read()[:-1]
        code = func.split(',')
        code_line = ""
        if "split(\"[\")[0]" in code[-2]:
            code_line += code[-1]
        else:
            code_line += code[-2]+';'
            code_line += code[-1]
        code_line = code_line.replace('i',i).replace('j',j).replace('t',t).replace('>>>','>>').replace('<<<','<<')
        if '(' in code_line and ')' not in code_line:
            code_line+=')'
        code_line+='\n'
        codes += code_line
        f.close()
with open('flow2.py','w') as f:
    f.write(codes)
print(codes)