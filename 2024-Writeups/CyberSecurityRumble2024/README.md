## Where's the box and What's in the box


These challenge is so cool and I'm very excited while doing these challenge.

Both challenge has the same reverse part, here is some note from my reverse part

```
VM with 2 code: string1 and string2
there are 8x8 matrix, contains 0,1 and randomly.
goal: make run_vm(string2)==n, with n is calculated in side `get_rand`, the parameter are random numbers.
n saved in `r7`

core->table[v16 + 24]     ; register from '0' to '7'

4 operation 'l,u,r,d,': move left, up, right, down in the matrix

Register operations:
m, r: mult r1,r1,r2   , xor r1,r1,f2
I, D: increase, decrease register [cur+1]
i: r[<x>] = table[x][y]   ; 0 or 1
f: return x*8 + y        ; return idex, 1st: flip the bit at table[x][y]; 2nd must be find the right one.
c: ?
```

And here's compiler that I wrote:

```py
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
```

After reverse these bunch of funtion, I see some problems that relative to these challenge. And here's some other relative link:

Where's the box: 

    http://datagenetics.com/blog/december12014/index.html

    https://www.youtube.com/watch?v=as7Gkm7Y7h4

    https://www.youtube.com/watch?v=wTJI_WuZSwE

Whats in the box: 

    https://en.wikipedia.org/wiki/100_prisoners_problem

Follow these math puzzle and solve it, then send it into the server and got flag.