# VM with 2 code: string1 and string2
# there are 8x8 matrix, contains 0,1 and randomly.
# goal: make run_vm(string2)==n, with n is calculated in side `get_rand`, the parameter are random numbers.
# n saved in `r7`

# core->table[v16 + 24]     ; register from '0' to '7'

# 4 operation 'l,u,r,d,': move left, up, right, down in the matrix

# Register operations:
# m, r: mult r1,r1,r2   , xor r1,r1,f2
# I, D: increase, decrease register [cur+1]
# i: r[<x>] = table[x][y]   ; 0 or 1
# f: return x*8 + y        ; return idex, 1st: flip the bit at table[x][y]; 2nd must be find the right one.
# c: ?


def compile(code):
    result = ""
    instructions = code.split('\n')[1:-1]
    for ins in instructions:
        ins = ins.strip().split()
        mnemonic = ins[0]
        match mnemonic:
            case 'mul':
                result += 'm' + ins[1][1] + ins[2][1]
            case 'xor':
                result += 'x' + ins[1][1] + ins[2][1]

            case 'left':
                result += 'l'
            case 'right':
                result += 'r'
            case 'up':
                result += 'u'
            case 'down':
                result += 'd'

            case 'inc':
                result += 'I' + ins[1][1]
            case 'dec':
                result += 'D' + ins[1][1]  
            
            case 'ret':
                result += 'f'

            case 'load':         #load from table
                result += 'i' + ins[1][1]

            case 'sus':
                assert int(ins[1]) <= 23
                result += 'i' + chr(97+int(ins[1]))
            case _:
                result += 'a'

    return result
# print(compile(code))

inp1 = 'x00x11x22x33x44x55x66I5I6I6x00ddddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01m26x20x00llllllluuuuui1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01m26x20x00llllllluuuuuui1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01lllllllddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01lllllllddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01lllllllddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01m26x20x00llluuuuuuui1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01m26x20x00llllluuuuuuui1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01m26x20x00lllllluuuuuuui1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01m26x20x27llllllluuuuuuuc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2'
inp2 = 'x00x11x22x33x44x55x66I5I6I6x00ddddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01m26x20x00llllllluuuuui1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01llllllldi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01m26x20x00llllllluuuuuui1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01lllllllddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01lllllllddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01lllllllddi1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01ri1x01m26x20x00llluuuuuuui1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01llldi1x01ri1x01ri1x01ri1x01m26x20x00llllluuuuuuui1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01llllldi1x01ri1x01rrri1x01ri1x01m26x20x00lllllluuuuuuui1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01lllllldi1x01rri1x01rri1x01rri1x01m26x20llllllluuuuuuuc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2llllllldc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2rc2fD2'