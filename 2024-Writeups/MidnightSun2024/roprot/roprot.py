# key format XXXX-XXXX-XXXX-XXXX, number of uppercase -> seed 

# if (check(seed))==0x2c02 -> srand(seed)
# `mmap(addr)`, move every byte in addr, addr[i] = (_DWORD)rand();
# `mmap(mapped)`, then move every possible rop-gadget from `addr` -> exec rop-chain

from ctypes import CDLL
import struct
from capstone import *
import subprocess

libc = CDLL("libc.so.6")
with open('roprot','rb') as f:
    roprot = f.read()
with open('seed.txt','r') as is_good:
    seeds = [int(i[:-1]) & 0xffffffff for i in is_good.readlines()]

def check(seed):
    newb = roprot.replace(b'\x78\x56\x34\x12',struct.pack('<I',seed))
    with open('roprot_new','wb') as wf:
        wf.write(newb)
        wf.close()
    try:
        print(subprocess.check_output(['./roprot_new','0123-5678-ABCD-EFGH']))
        print(f'seed {seed} good.')
        exit(0)
    except Exception as e:
        print(f'seed {seed} fail.')
        pass

md = Cs(CS_ARCH_X86, CS_MODE_64)
md.detail = False
possible_seed = []

counter = 0
for seed in seeds[31599:]:
    print('cac')
    idx1 = 1355
    libc.srand(seed)
    buf = b''
    for i in range(idx1//4+4):
        r = libc.rand()
        buf += struct.pack('<i',r)
        # print(hex(r),buf)
        # exit()
    
    # check1
    disassembled = {}
    for i in md.disasm(buf[idx1:idx1+4],0):
        disassembled[i.mnemonic] = i.op_str
    # check 2
    disassembled2 = {}
    idx2 = 586
    for i in md.disasm(buf[idx2:idx2+4],0):
        disassembled2[i.mnemonic] = i.op_str
    
    # final check
    if  disassembled != {} and \
        ('ret' in disassembled.keys() or 'retn' in disassembled.keys()) and\
        disassembled2 != {} and \
        ('ret' in disassembled2.keys() or 'retn' in disassembled2.keys()):
        # print('first',disassembled)
        # print('second',disassembled2)
        print('seed: ',seed,hex(seed))
        check(seed)
        possible_seed.append(seed)

        counter+=1
    # print(buf)
print(f'Found:{counter} possibly seeds.' ) 
print(possible_seed)
# print(hex(libc.rand()))