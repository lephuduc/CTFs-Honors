from pwn import *
import subprocess
from struct import unpack
context.log_level='warn'

def solve(i):
    file_path = f'bins/bin{i}.elf'
    with open(file_path,'rb') as f:
        d = f.read()
    elf = ELF(file_path)
    #### Type1, simple xor
    if b'\xC6\x45\xEE' in d: # mov [ebp + X], 0x##
        print('Type 1')
        start = d.index(b'\xC6\x45\xEE')
        i = start
        buf = [d[i+3]]
        i+=4
        while d[i]!=0:
            buf.append(d[i+3])
            i += 4
        if b'\x83\xf0' in d: # xor al, 0x##
            xor_val = d[d.index(b'\x83\xf0') + 2]
        else:               # xor eax, 0x##
            xor_val = d[d.index(b'\x0F\xBE\xC0')+4]
        pw = xor(bytes(buf).strip(b'\x00'),xor_val)
        return pw
    ### Type2, string cmp
    elif 'strcmp' in elf.symbols:
        print('Type 2')
        res = subprocess.check_output(['strings',file_path]).split(b'\n')
        res = res[res.index(b'u+UH')+1]
        return res
    ## Type3, word
    elif (b'\x66\xC7\x85' in d) or (b'\x66\xC7\x45' in d): # two types of "mov [rbp+X], 0xABCD"
        print('Type 3')
        if b'\x66\xC7\x85' in d:
            start = d.index(b'\x66\xC7\x85')
        else:
            start = d.index(b'\x66\xC7\x45')
        i = start
        buf = []
        while True: # get these numbers
            if d[i:i+3]==b'\x66\xC7\x45': 
                buf.append(unpack('<H',d[i+4:i+6])[0])
                i+=6
            elif d[i:i+3]==b'\x66\xC7\x85':
                buf.append(unpack('<H',d[i+7:i+9])[0])
                i += 9
            else:
                buf.append(0)
            if buf[-1]==0:
                buf = buf[:-1] # strip
                buf1 = buf[:len(buf)//2]
                buf2 = buf[len(buf)//2:]
                break
        # print(buf,len(buf))
        l = len(buf)
        s = [0 for _ in range(l)]   # create the flag
        for i in range(l//2):
            n = buf2[i] - buf1[i]
            s[2 * i + 1] = n&0xff
            s[2 * i] = (n>>8)&0xff
        return bytes(s)
    return b'None'

if __name__=='__main__':
    print(solve(8))