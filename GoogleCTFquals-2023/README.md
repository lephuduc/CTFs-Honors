# Google CTF 2023

## Old School

![Untitled](Google%20CTF%202023%20039c5d35d478443ca21982dd536f3e4b/Untitled.png)

```python
from qiling import Qiling
from qiling.const import QL_VERBOSE
from array import array
import hashlib
import numpy
from numpy import matrix
from numpy import linalg
## define function that was used later
def mod_matrix_inv(A,p):       # Finds the inverse of matrix A mod p
  n=len(A)
  A=matrix(A)
  adj=numpy.zeros(shape=(n,n))
  for i in range(0,n):
    for j in range(0,n):
      adj[i][j]=((-1)**(i+j)*int(round(linalg.det(minor(A,j,i)))))%p
  return (modInv(int(round(linalg.det(A))),p)*adj)%p

def modInv(a,p):          # Finds the inverse of a mod p, if it exists
  for i in range(1,p):
    if (i*a)%p==1:
      return i
  raise ValueError(str(a)+" has no inverse mod "+str(p))

def minor(A,i,j):    # Return matrix A with the ith row and jth column deleted
  A=numpy.array(A)
  minor=numpy.zeros(shape=(len(A)-1,len(A)-1))
  p=0
  for s in range(0,len(minor)):
    if p==i:
      p=p+1
    q=0
    for t in range(0,len(minor)):
      if q==j:
        q=q+1
      minor[s][t]=A[p][q]
      q=q+1
    p=p+1
  return minor
table2 = [
    16, 14, 13, 2, 11, 17, 21, 30, 7, 24, 18, 28, 26, 1, 12, 6, 31, 25,
    0, 23, 20, 22, 8, 27, 4, 3, 19, 5, 9, 10, 29, 15
]
table3 = [
    27, 0, 10, 13, 8, 24, 15, 28, 6, 7, 18, 5, 12, 2, 4, 29, 31, 9, 19,
    1, 30, 17, 11, 22, 25, 23, 3, 14, 26, 20, 21, 16
]
key_base = "23456789ABCDEFGHJKLMNPQRSTUVWXYZ"
def inv_shiff_row(m:list)->list:
    ret = []
    ret.append(m[0])
    ret.append(m[1][-1:]+ m[1][:-1])
    ret.append(m[2][-2:]+ m[2][:-2])
    ret.append(m[3][-3:]+ m[3][:-3])
    ret.append(m[4][-4:]+ m[4][:-4])
    return ret
def get_key(m:list)->list:
    ret = ""
    for row in m:
      for i in row:
         ret +=key_base[i]
      ret +="-"
    return ret[:-1]
def inv_xor(m:list)->list:
    for i in range(5):
        for j in range(5):
          m[i][j]^=table3[5*i+j]
    return m
def inv_subbyte(m:list)->list:
    for i in range(5):
      for j in range(5):
         m[i][j] = table2.index(m[i][j])
    return m

def mystrlen(ql):
    s = ql.mem.string(ql.stack_read(4))
    ql.arch.regs.eax = len(s)
    ql.arch.regs.pc = ql.stack_pop()

#### using qiling automate all things
ql = Qiling([r'rootfs/x86_linux/oldschool'],r"rootfs/x86_linux",verbose=QL_VERBOSE.DEBUG)
base_address = ql.loader.load_address

# restore table1
table1 = b'\n\x00\x00\x00\x03\x00\x00\x00\x16\x00\x00\x00\x0c\x00\x00\x00\x04\x00\x00\x00\x10\x00\x00\x00\r\x00\x00\x00\x14\x00\x00\x00\x16\x00\x00\x00\x16\x00\x00\x00\r\x00\x00\x00\x13\x00\x00\x00\r\x00\x00\x00\x0e\x00\x00\x00\x0c\x00\x00\x00\x07\x00\x00\x00\x17\x00\x00\x00\x13\x00\x00\x00\x14\x00\x00\x00\x0e\x00\x00\x00\x01\x00\x00\x00\x07\x00\x00\x00\x0b\x00\x00\x00\x18\x00\x00\x00\x0b\x00\x00\x00\x19\x00\x00\x00\r\x00\x00\x00\t\x00\x00\x00\x08\x00\x00\x00\x01\x00\x00\x00\x07\x00\x00\x00\x0c\x00\x00\x00\x14\x00\x00\x00\x13\x00\x00\x00\x15\x00\x00\x00\x10\x00\x00\x00\x17\x00\x00\x00\x06\x00\x00\x00\x07\x00\x00\x00\x12\x00\x00\x00\n\x00\x00\x00\x11\x00\x00\x00\x0b\x00\x00\x00\x02\x00\x00\x00\x04\x00\x00\x00\n\x00\x00\x00\x03\x00\x00\x00\x0c\x00\x00\x00\x1a\x00\x00\x00\x05\x00\x00\x00\x08\x00\x00\x00\x0f\x00\x00\x00\x06\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\n\x00\x00\x00\x0f\x00\x00\x00\x0e\x00\x00\x00\x01\x00\x00\x00\t\x00\x00\x00\x07\x00\x00\x00\x0b\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x19\x00\x00\x00\x17\x00\x00\x00\t\x00\x00\x00\x01\x00\x00\x00\x18\x00\x00\x00\x17\x00\x00\x00\x0f\x00\x00\x00\x13\x00\x00\x00\x16\x00\x00\x00\x10\x00\x00\x00\x0f\x00\x00\x00\x04\x00\x00\x00\x0c\x00\x00\x00\x17\x00\x00\x00\x18\x00\x00\x00\x13\x00\x00\x00\x05\x00\x00\x00\x08\x00\x00\x00\x13\x00\x00\x00\r\x00\x00\x00\x01\x00\x00\x00\x12\x00\x00\x00\x15\x00\x00\x00\x04\x00\x00\x00\x07\x00\x00\x00\x13\x00\x00\x00\x08\x00\x00\x00\x19\x00\x00\x00\x11\x00\x00\x00\x06\x00\x00\x00\x0e\x00\x00\x00\x17\x00\x00\x00'
ql.mem.write(base_address+0x25160, table1)

#skip strlen at current state
ql.os.set_api('strlen', mystrlen) 
# create virtual meme
ql.mem.map(0x500000, 0x1000) 

state = ql.save(reg=True, mem=False)
def get_matrix(username):
    ql.restore(state)

    ql.mem.write(0x500000, username.encode() + b'\x00')
    ql.mem.write(0x500100, b'AAAAA-AAAAA-AAAAA-AAAAA-AAAAA\x00')

    #KeyCheck(char * username,char * key) on 32 bit
    ql.stack_push(0x500100) 
    ql.stack_push(0x500000)
    ql.stack_push(0)

    #run function KeyCheck at 0x212a
    ql.run(base_address+0x212a, base_address+0x26f4)
    username_mat = array('I', ql.mem.read(ql.arch.regs.ebp - 596, 4 * 16 * 5))
    return list(username_mat)
username_ls =['gdwAnDgwbRVnrJvEqzvs', 'ZQdsfjHNgCpHYnOVcGvr', 'PmJgHBtIpaWNEMKiDQYW', 'OAmhVkxiUjUQWcmCCrVj', 'ALdgOAnaBbMwhbXExKrN', 'tqBXanGeFuaRSMDmwrAo', 'etTQMfSiRlMbNSuEOFZo', 'wceLFjLkBstBfQTtwnmv', 'rBiaRSHGLToSvIAQhZIs', 'ackTeRoASCkkkRUIBjmX', 'UBFLQMizCtLCnnOjaLMa', 'UwiBcAZEAJHKmZSrLqTB', 'oYlcWeZwpEEejIGuCHSU', 'txWHHXTtBXbckmRPxgCx', 'mhPdqEbAligcqQCsHLGl', 'UsIdCFPOqrXwsSMoqfIv', 'OdSAfswQJnMyjOlqpmqJ', 'eNKVZRlVwQCxWzDvUrUW', 'dUVNMmEPDxRIdVRXzbKa', 'iMBkfiyJxewhnvxDWXWB', 'xlQgeOrNItMzSrkldUAV', 'UPEfpiDmCeOzpXeqnFSC', 'ispoleetmoreyeah1338', 'dNcnRoRDFvfJbAtLraBd', 'FKBEgCvSeebMGixUVdeI', 'DfBrZwIrsHviSIbenmKy', 'OvQEEDVvxzZGSgNOhaEW', 'iNduNnptWlmAVsszvTIZ', 'GvTcyPNIUuojKfdqCbIQ', 'noAJKHffdaRrCDOpvMyj', 'rAViEUMTbUByuosLYfMv', 'YiECebDqMOwStHZyqyhF', 'phHkOgbzfuvTWVbvRlyt', 'arRzLiMFyEqSAHeemkXJ', 'jvsYsTpHxvXCxdVyCHtM', 'yOOsAYNxQndNLuPlMoDI', 'qHRTGnlinezNZNUCFUld', 'HBBRIZfprBYDWLZOIaAd', 'kXWLSuNpCGxenDxYyalv', 'EkrdIpWkDeVGOSPJNDVr', 'pDXIOdNXHhehzlpbJYGs', 'WMkwVDmkxpoGvuLvgESM', 'aUwdXCDDUWlPQwadOliF', 'WmlngotWTsikaXRDakbp', 'thrZhzSRBzJFPrxKmetr', 'TcurEDzLjepMrNwspPqd', 'SScTJRokTraQbzQpwDTR', 'PObUeTjQTwEflLQtPOJM', 'LUDPGXGvuVFAYlMTTowZ', 'UlTVDrBlCmXmFBmwLLKX']
pairs = []
for username in username_ls:
    arr = get_matrix(username)
    key_matrix = [arr[i:i+5] for i in range(0,len(arr),16)]
    key_matrix = mod_matrix_inv(key_matrix,32).astype(int).tolist()
    key_matrix = inv_shiff_row(key_matrix)
    key_matrix = inv_xor(key_matrix)
    key_matrix = inv_subbyte(key_matrix)
    # print(key_matrix) 
    key = get_key(key_matrix) 
    pairs.append((username,key))

### FLAG maker
#print([i[0] for i in pairs])
print(pairs)
print('CTF{' + hashlib.sha1(b'|'.join(f'{u}:{p}'.encode('utf-8') for u, p in pairs)).hexdigest() + '}')
```

## PNG2

[https://en.wikipedia.org/wiki/Hilbert_curve](https://en.wikipedia.org/wiki/Hilbert_curve)

```python
import png
from zlib import decompress
from hilbertcurve.hilbertcurve import HilbertCurve
from struct import unpack
from PIL import Image
import io
import numpy as np
## read IDAT from png file to buffer
file_name = 'flag.png2'
png_file = png.Reader(file=open(file=file_name,mode='rb'))

IDHR = png_file.chunk()
IDAT = png_file.chunk()[1]
raw_IDAT = decompress(IDAT)
# print(raw_IDAT)
# print(raw_IDAT)
idat_buf = io.BytesIO(raw_IDAT)
height = width =  1024

## adding block, each block has length = witdh, total `height`block
blocks = []
for i in range(width):
    block_type = idat_buf.read(1)
    data = idat_buf.read(width*3)
    blocks.append((block_type,data))
# print(blocks)
### decode image
img = Image.new(mode="RGB", size=(height, width))
result_pixels =[]
prev_block = []

### DEFINE function using to encode
#(cur >> shiffter), 1
#(buf_i_1 >> shiffter),2
#(prev_i >> shiffter),3
#(prev_i_1 >> shiffter),4
#(buf_i_2 >> shiffter),5
#(buf_i_3 >> shiffter)6
for k in range(len(blocks)):
    block_type, data = blocks[k]
    pixels_buf = [(0,0,0),(0,0,0),(0,0,0),(0,0,0),(0,0,0),(0,0,0)]
    block_buf = io.BytesIO(data)
    prev = unpack("bbb", block_buf.read(3))
    result_pixels.append(prev)
    pixels_buf.append(prev)
    block_type = block_type[0]
    for x in range(1,width):
        cur = unpack('bbb',block_buf.read(3))
        match block_type:
            case 0xe0:
                res_pixel = tuple(map(lambda a1,a2: (a1^a2)&0xff,cur,pixels_buf[-1]))
            case 0xe1:
                res_pixel = tuple(map(lambda a1,a3: (a1^a3)&0xff,cur,prev_block[len(pixels_buf)]))
            case 0xe2:
                res_pixel = tuple(map(lambda a1,a2,a3,a4: (a1^a2^a3^a4)&0xff,cur,pixels_buf[-1],prev_block[len(pixels_buf)],prev_block[len(pixels_buf)-1]))
                # res_pixel = (255,255,255)
            case 0xe3:
                res_pixel = tuple(map(lambda a1,a5: (a1+a5)&0xff,cur,pixels_buf[-2]))
            case 0xe4:
                res_pixel = tuple(map(lambda a1,a6: (a1+a6)&0xff,cur,pixels_buf[-3]))
            case 0xe5:
                res_pixel = tuple(map(lambda a1,a5: (a1^a5)&0xff,cur,pixels_buf[-2]))
            case 0xe6:
                res_pixel = tuple(map(lambda a1,a6: (a1^a6)&0xff,cur,pixels_buf[-3]))
            case 0xe7:
                res_pixel = tuple(map(lambda a1,a2,a5,a6: (a1^a2^a5^a6)&0xff,cur,pixels_buf[-1],pixels_buf[-2],pixels_buf[-3]))
            case 1:
                res_pixel = tuple(map(lambda a1,a2: (a1+a2)&0xff,cur,pixels_buf[-1]))
            case 2:
                res_pixel = tuple(map(lambda a1,a3: (a1+a3)&0xff,cur,prev_block[len(pixels_buf)]))
            case 0:
                res_pixel = tuple(map(lambda a1: a1&0xff,cur))
            case _:
                res_pixel = (0,0,0)
        pixels_buf.append(res_pixel)
        result_pixels.append(res_pixel)
    # print(hex(block_type))
    prev_block = pixels_buf
    

n = 2
p = 10
hc = HilbertCurve(p,n)
point_posision= []
for i in range(width*height):
    point_posision.append(hc.point_from_distance(i))
test_matrix = [['-']*width for _ in range(height)]
for i in range(height):
    for j in range(width):
        a,b = point_posision[i*width+j]
        test_matrix[a][b] = result_pixels[i*width+j]
        img.putpixel((a,b),result_pixels[i*width+j])
# for line in test_matrix:
    # print(line)
img.save('result.png')
```