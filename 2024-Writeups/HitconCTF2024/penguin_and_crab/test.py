__ROL4__ = lambda val, r_bits: \
    (val << r_bits%32) & (2**32-1) | \
    ((val & (2**32-1)) >> (32-(r_bits%32)))
__ROR4__ = lambda val, r_bits: \
    ((val & (2**32-1)) >> r_bits%32) | \
    (val << (32-(r_bits%32)) & (2**32-1))


def encrypt(chr):
    res = __ROL4__(
                __ROL4__(
                __ROL4__(
                    __ROL4__(
                    __ROL4__(
                        __ROL4__(
                        __ROL4__(
                            __ROL4__(
                            __ROL4__(
                                __ROL4__(
                                __ROL4__(
                                    __ROL4__(
                                    __ROL4__(
                                        __ROL4__(
                                        __ROL4__(
                                            __ROL4__(
                                            __ROL4__(
                                                __ROL4__(
                                                __ROL4__(
                                                    __ROL4__(
                                                    __ROL4__(
                                                        __ROL4__(
                                                        __ROL4__(
                                                            __ROL4__(
                                                            __ROL4__(
                                                                __ROL4__(
                                                                __ROL4__(chr ^ 0xDEADBEEF, 25) ^ 0x14530451,
                                                                25) ^ 0x14530451,
                                                                25) ^ 0x14530451,
                                                            25) ^ 0x14530451,
                                                            25) ^ 0x14530451,
                                                        25) ^ 0x14530451,
                                                        25) ^ 0x14530451,
                                                    25) ^ 0x14530451,
                                                    25) ^ 0x14530451,
                                                25) ^ 0x14530451,
                                                25) ^ 0x14530451,
                                            25) ^ 0x14530451,
                                            25) ^ 0x14530451,
                                        25) ^ 0x14530451,
                                        25) ^ 0x14530451,
                                    25) ^ 0x14530451,
                                    25) ^ 0x14530451,
                                25) ^ 0x14530451,
                                25) ^ 0x14530451,
                            25) ^ 0x14530451,
                            25) ^ 0x14530451,
                        25) ^ 0x14530451,
                        25) ^ 0x14530451,
                    25) ^ 0x14530451,
                    25) ^ 0x14530451,
                25) ^ 0x14530451,
                25) ^ 0xCAFEBABE
    return res
def decrypt(num):
    res = __ROR4__(
            __ROR4__(
            __ROR4__(
                __ROR4__(
                __ROR4__(
                    __ROR4__(
                    __ROR4__(
                        __ROR4__(
                        __ROR4__(
                            __ROR4__(
                            __ROR4__(
                                __ROR4__(
                                __ROR4__(
                                    __ROR4__(
                                    __ROR4__(
                                        __ROR4__(
                                        __ROR4__(
                                            __ROR4__(
                                            __ROR4__(
                                                __ROR4__(
                                                __ROR4__(
                                                    __ROR4__(
                                                    __ROR4__(
                                                        __ROR4__(
                                                        __ROR4__(
                                                            __ROR4__(
                                                            __ROR4__(num ^ 0xCAFEBABE, 25) ^ 0x14530451,
                                                            25) ^ 0x14530451,
                                                            25) ^ 0x14530451,
                                                        25) ^ 0x14530451,
                                                        25) ^ 0x14530451,
                                                    25) ^ 0x14530451,
                                                    25) ^ 0x14530451,
                                                25) ^ 0x14530451,
                                                25) ^ 0x14530451,
                                            25) ^ 0x14530451,
                                            25) ^ 0x14530451,
                                        25) ^ 0x14530451,
                                        25) ^ 0x14530451,
                                    25) ^ 0x14530451,
                                    25) ^ 0x14530451,
                                25) ^ 0x14530451,
                                25) ^ 0x14530451,
                            25) ^ 0x14530451,
                            25) ^ 0x14530451,
                        25) ^ 0x14530451,
                        25) ^ 0x14530451,
                    25) ^ 0x14530451,
                    25) ^ 0x14530451,
                25) ^ 0x14530451,
                25) ^ 0x14530451,
            25) ^ 0x14530451,
            25) ^  0xDEADBEEF
    return res





### FLOW

inp = [ord('a')]*25
buf0 = [0xAEC4F08C,0x642C04AC,0xA3607854,0x2D393934,0x8E2C4F5A,0xDDD67D14,0x7E005496,0x3ED14A02,0xA56A772,0x466A4076,0xD3A352A9,0x495E93E3,0x67C44ADF,0x3AEBE5BA,0xED850DA8,0xD4B77198,0x51BDB6B2,0x3A5F2448,0x807889CA,0x5B9D4D6E,0x8320EFD6,0x9E68E874,0xBA7FBEA1,0x827BC7E4,0x129F824A]
buf1 = [0x1BE3B694,0xAD42F89,0x1003913B7,0x37C23EB4,0x64C07EF5,0xD7B4785,0x49115944,0x5241F45E,0x829722E9,0x6801CA71,0x165020CF,0xE45F7AB1]
buf2 = [0xA2CC3F37,0xB8B0E2E6,0x9DEA4FD6,0x897DA0D6,0x52B660E5,0x7DBCDC09,0x588E7836,0x3EA786E5,0x5BC7BB33,0xA3959E86,0x5AB05A2F,0xB09E4A8C]
buf3 = [0x38ED550C61366B19,0xA368D7F6F944EF95,0x7730E544811B003B,0xBA7B915F29478B8,0x4CF3C7A1444DDCD5,0x6A1EE5D1CB932EDD,0x1C653D0FAA75CD04,0x5129602CEBB27CD3,0x8D3E0DDB822D166C,0x7743085C81B563CA,0x1FD73D5B1682BEC1,0x49CA0C91D932E680,0x10AC7806FD7DC9E2,0x939CB3D71DC3703E,0x3719C10EFED548AF,0x91AAD1F7FE14E4B,0x8FE8985576B03857,0x376937BC0AF64E77,0x26190529FD5F0437,0x12CF894F2AF71BF3,0x22E8F33E31870D59,0x6842E8D2ED57A1F1,0x189EBE5A06E8334F,0x591CEA928108D643,0x4914740091A11C11,0x3B1A8BB8CD64FAE1,0x48009C01B6DC47BA,0x6CC80ED5A2D94B80,0x3A41F29B470B9346,0x154D52272BF8F,0x7E416B359A0655CC,0x6858E18B590D1A8F]
assert len(buf0)==25 and len(buf1)==12 and len(buf2)==12 and len(buf3)==32

for i in range(25):
    inp[i] = buf0[i]^encrypt(inp[i])

muls = []
for i in range(0,12,2):
    muls.append(inp[i]*inp[i+1])       
for i in range(24,13,-2):
    muls.append(inp[i]*inp[i-1])

assert len(muls)==12

mid = inp[12]

for i in range(12):
    if muls[i]//mid!=buf1[i]:
        # print('Wrong flag 0')
        pass
for i in range(12):
    l = muls[i]%mid
    if buf2[i]!=pow(0x56361E32,l,0xE53ACEB5):
        # print('Wrong flag 1')
        pass

# +Check v46
result = 0
for i in range(32):
    if mid%2:
        result = result + buf3[i]
if result == 0x6_B3312EC731522288:
    print('Correct')
### SOLVE
mid_bits = [1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1]

mid = int(''.join(map(str, mid_bits[::-1])),2)
print(decrypt(mid^buf0[12]).to_bytes(4,'little'))
buf0.remove(buf0[12])
buf0 = buf0[:12] + buf0[-12:][::-1]
ls = [1145528421,
 2899640010,
 2974633774,
 2738511409,
 3011863322,
 421597904,
 1007143139,
 286062229,
 682274922,
 432033812,
 3096311920,
 2015012490]
muls = []
for i in range(12):
        muls.append(mid*buf1[i]+ls[i])
print(muls)
from sympy import factorint
flag = ''
for i in range(12):
    n10,n20 = factorint(muls[i]).keys()
    part = ''
    try:
        part = [decrypt(buf0[i*2]^n10).to_bytes(4,'little').decode()[::-1],decrypt(buf0[i*2+1]^n20).to_bytes(4,'little').decode()[::-1]]
        print(part[0],part[1])
    except:
        part = [decrypt(buf0[i*2]^n20).to_bytes(4,'little').decode()[::-1],decrypt(buf0[i*2+1]^n10).to_bytes(4,'little').decode()[::-1]]
        print(part[1],part[0],2)
        pass
    if i==5:
        print('>sqD'[::-1])
