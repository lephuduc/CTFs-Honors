sus = []
susxor = []
for i in range(255):
    sus.append((((i*0x0802&0x22110)|(i*0x8020&0x88440))*0x10101>>16)&0xff)
    susxor.append(i^(i>>1))
with open('flowCodeOrigin.py','r') as f:
    lines = f.readlines()

codes = []
for line in lines:
    sep = line.split()
    operator = sep[1]
    match operator:
        case '-=':
            sep[1] = '+='
        case '+=':
            sep[1] = '-='
    if '<< 7' in line and '>> 1' in line:
        sep = [sep[0],sep[1],f'rotate_left('+sep[0]+',1)']
    elif ('>> 7' in line) and ('<< 1' in line):
        sep = [sep[0],sep[1],'rotate_right('+sep[0]+',1)']
    elif operator=='=' and '0x0802' in line:
        sep = [sep[0],sep[1],'sus.index('+sep[0]+')']
    elif operator=='=' and '^' in line:
        sep = [sep[0],sep[1],'susxor.index('+sep[0]+')']
    codes.append(''.join(sep))
i = 0
new_code = []
while i < len(codes)-1:
    if '&=' in codes[i+1]:
        new_code.append(codes[i] +';' + codes[i+1]+'\n')
        i+=1
    else:
        new_code.append(codes[i]+'\n')
    i+=1
print(''.join(new_code[::-1]))