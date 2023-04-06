# get trace.txt
import os
ld = [i for i in os.listdir()][:-7]
black =['157.js','28.js','299.js','314.js','555.js','556.js','736.js','289.js','394.js']

for file_name in ld:
        with open(file_name,'r') as f:
            content = f.read() + '\n'
            if file_name not in black:
                content = content.replace(')\n',f',console.log({file_name[:-3]},i,j,t))')
            f.close()
        with open(f'newfiles\\{file_name}','w') as f:
            f.write(content)
            f.close

