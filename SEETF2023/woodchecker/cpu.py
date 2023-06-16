# https://github.com/radical-semiconductor/woodpecker#processor-description
# class CPU:
#     def __init__(self):
#         mem = bytearray(1 << 29)
#         addr = 0
#         store = 0
        
    # def execute(self, instr):
    #     match instr.strip().upper():    
    #         case 'INC':  
    #             addr += 1
    #         case 'INV':  #invert bit at address
    #             mem[addr // 8] ^= 1 << (addr % 8)
    #         case 'LOAD': # load bit at address into store
    #             store = mem[addr // 8] >> (addr % 8) & 1
    #             if addr < 160:
    #                 print(addr,store)
    #         case 'CDEC': # if store ==1, then address -=1 (decrement)
    #             addr -= store # decrement if store == 1
    #         case other:  raise ValueError(f'Unknown instruction "{other}"')
from pwn import xor
import string
# flag = input('Enter flag: ').encode('ascii')
# assert len(flag) == 20, 'Incorrect length'
ls_ins = open('woodchecker.wpk').readlines()
s = b"}"
# flag = input('enter: ').encode('ascii')
for k in range(19,-1,-1):
    for c in string.printable:
        x = 0
        mem = bytearray(1 << 29)
        addr = 0
        store = 0
        flag = b'\x00'*(k-1) + c.encode() + s
        # print(len(flag),flag)
        mem[:len(flag)] = flag

        for i in range(len(ls_ins)):
            instr = ls_ins[i]
            match instr.strip().upper():    
                case 'INC':  
                    addr += 1
                case 'INV':  #invert bit at address
                    mem[addr // 8] ^= 1 << (addr % 8)
                    # if addr < 8 and addr>=0:
                    #     print(store,bin(mem[0]),mem[:20],"INV", addr)
                case 'LOAD': # load bit at address into store
                    store = mem[addr // 8] >> (addr % 8) & 1
                    # if addr < 160:
                    #     print(store,bin(mem[0]),mem[:20],"LOAD",addr)
                case 'CDEC': # if store ==1, then address -=1 (decrement)
                    addr -= store # decrement if store == 1
                    # print(addr)
                case other:  raise ValueError(f'Unknown instruction "{other}"')

        if mem[k-1]==0xff:
            print(mem[:20],c)
            s = c.encode() + s
            print(s)
        
# flag = b'SEE{pIcKyP1CIF0rmeS}'
print('Correct!' if store else 'Better luck next time')
