from z3 import *
from pwn import p32,u32
import struct
rol = lambda val, r_bits: \
    (val << r_bits%32) & (2**32-1) | \
    ((val & (2**32-1)) >> (32-(r_bits%32)))
ror = lambda val, r_bits: \
    ((val & (2**32-1)) >> r_bits%32) | \
    (val << (32-(r_bits%32)) & (2**32-1))
sbox = list(b'c|w{\xf2ko\xc50\x01g+\xfe\xd7\xabv\xca\x82\xc9}\xfaYG\xf0\xad\xd4\xa2\xaf\x9c\xa4r\xc0\xb7\xfd\x93&6?\xf7\xcc4\xa5\xe5\xf1q\xd81\x15\x04\xc7#\xc3\x18\x96\x05\x9a\x07\x12\x80\xe2\xeb\'\xb2u\t\x83,\x1a\x1bnZ\xa0R;\xd6\xb3)\xe3/\x84S\xd1\x00\xed \xfc\xb1[j\xcb\xbe9JLX\xcf\xd0\xef\xaa\xfbCM3\x85E\xf9\x02\x7fP<\x9f\xa8Q\xa3@\x8f\x92\x9d8\xf5\xbc\xb6\xda!\x10\xff\xf3\xd2\xcd\x0c\x13\xec_\x97D\x17\xc4\xa7~=d]\x19s`\x81O\xdc"*\x90\x88F\xee\xb8\x14\xde^\x0b\xdb\xe02:\nI\x06$\\\xc2\xd3\xacb\x91\x95\xe4y\xe7\xc87m\x8d\xd5N\xa9lV\xf4\xeaez\xae\x08\xbax%.\x1c\xa6\xb4\xc6\xe8\xddt\x1fK\xbd\x8b\x8ap>\xb5fH\x03\xf6\x0ea5W\xb9\x86\xc1\x1d\x9e\xe1\xf8\x98\x11i\xd9\x8e\x94\x9b\x1e\x87\xe9\xceU(\xdf\x8c\xa1\x89\r\xbf\xe6BhA\x99-\x0f\xb0T\xbb\x16')
inv_sbox = [sbox.index(i) for i in range(256)]
buh = b'\x14x\x06\xf6~\xcbs\xed\xb2\xa8\x83\x15\x93\x8d\xde\rK7\xe2#r<\xb8@\x1a\x81?\x0b\x93\xa9\xe7\xd6|\xde"&\xae\xdc\x81\xc5LR\x06\xa9\xc1,O\xdbw4\xdb\r\xa4\x92\x1a\x8c\xc0\x11\xd7;\x03e\xb1\x1b \xd7\xac\x00\xd0\xf25\'\xfe\x00\x93\x9a\xa7V%\xfbX\xfe\xe1\xcb\xc9\xb8=\xc0\x01\xb7|\xf7\xae\x85\x1f\n\xdc\'\xdd\x14\xa9\xe3\xa5\xe1\xee\xf9\xd1A\xe7\xfcj\xfe2\xac\x0e\xd8\xad\xfe>\xf4\x0f\xd8ud\xd6\x10\xa38'
enc = b"\xfe`\xa8\xc0;\xfe\xbcf\xfc\x9a\x9b1\x9a\xd8\x03\xbb\xa9\xe1V\xfc\xfc\x11\x9f\x89_M\x9f\xe0\x9f\xae*\xcf^s\xcb\xec?\xff\xb9\xd1\x99D\x1b\x9ayy\xec\xd1\xb4\xfd\xea+\xe2\xf1\x1apv<.\x7f?;{f\xa3K\x1b\\\x0f\xbe\xdd\x98Z[\xd0\n=~,\x10V*\x10\x87]\xd9\xb9\x7f>.\x86\xb7\x17\x04\xdf\xb1'\xc4G\xe2\xd9z\x9aH|\xdb\xc6\x1d<\x00\xa3!"

def dec_part(n):
    x = BitVec('x',32)
    s = Solver()
    s.add(x^RotateLeft(x,3)^RotateLeft(x,14)^RotateLeft(x,15)^RotateLeft(x,9) == BitVecVal(n,32))
    s.check()
    tmp = s.model()[x].as_long()
    return u32(bytes([inv_sbox[i] for i in p32(tmp)]))
def enc_part(n):
    tmp = u32(bytes([sbox[i] for i in p32(n)]))
    return tmp^rol(tmp,3)^rol(tmp,14)^rol(tmp,15)^rol(tmp,9)

def decrypt_block(inp_block):
    assert len(inp_block)==16
    inp = list(struct.unpack('>IIII',inp_block))[::-1]
    print(inp)
    for i in range(31,-1,-1):
        part0 = inp.pop()
        enc_p = enc_part(inp[0]^inp[1]^inp[2]^u32(buh[i*4:(i+1)*4]))
        inp = [part0^enc_p] + inp
        # print(inp)
    return struct.pack('>IIII',*inp)
message = b''
for i in range(len(enc)//16):
    b = enc[i*16:(i+1)*16]
    message += decrypt_block(b)
    # print(message)
print(message)