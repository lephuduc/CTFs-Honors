# CORCTF 2023

There are 3 reverse challenges that I have done, I think that easy at all, so I'm just pushing these file here.

## Generic Baby reverse

This challenge take most of time, but it actually just find a nonogram solver, then put them into and get flag:

Here is solver one: https://www.peter.com.au/projects/nonograms.html

I used extract.py to extract rows, and cols. Then hints.py convert them to input which can use on Solver. 

After that, get the result and write on a file, using pwn-tools to write these bytes to binary and get flag

## Utterly deranged

In this challenge, it's just get input and xor with buffer, then compare with encrypted.

So, im just using ut_scrpt.py to get all element in buffer and xor. Then we got flag easily.

Note: I have tried to using `qiling` to simulate but it just getting wrong...

## Impossible maze

This challenge must be rev the binary correctly. Im just debug and notes until I see everything clearly.

The game have 11 level: First one and last one is easy.

Im just extract all map then rev and noice that what going on each level, here is an example:

Map3:
```
522....2
5.222..2
5...4221
21221111
2.1.....
2.2.2222
2.1.1..2
22222223
```

3: start position, 4 end position (target).
2 is normal step, 1 also normal step but if you step on, this will be a wrong direction.
5 mean you can step only one time on this.

So, I wrote a function can solve these map faster:

```py
def can_step(m,cor,steped_6,steped_9):
    x,y = cor
    if x>=8 or y >= 8 or y<0 or x <0:
        return False
    p = m[x+y*8]
    if p==1 or p==0:
        return False
    # if p==8 and not steped_6:
    #     return False
    # if p==10 and not steped_9:
    #     return False
    return True
def back(step,last):
    if step=='W' and last=='S':
        return True
    if step=='S' and last=='W':
        return True
    if step=='A' and last=='D':
        return True
    if step=='D' and last=='A':
        return True
    return False
def bfs(m:list):
    start = (m.index(3)%8,m.index(3)//8)
    end = (m.index(4)%8,m.index(4)//8)
    print('Start: ',start)
    print('End:', end)
    visited = set()
    queue = [('',start)]
    steped_6 = False
    steped_9 = False
    while queue:
        dir,cor = queue.pop(0)
        x,y = cor
        # print(dir,cor)
        if cor==end:
            print('Found: ',dir)
            break
        if dir in visited:
            continue
        visited.add(dir)
        for step in [('W',0,-1),('A',-1,0),('S',0,1),('D',1,0)]:
            new_cor = (x+step[1],y+step[2])
            if not can_step(m,new_cor,steped_6,steped_9):
                continue
            if len(dir)>=1 and back(step[0],dir[-1]) :
                continue
            new_dir = dir + step[0]
            if new_dir in visited:
                continue
            if m[new_cor[0] + new_cor[1]*8]==6:
                steped_6 = True
            if m[new_cor[0] + new_cor[1]*8]==9:
                steped_6 = True
            queue.append((new_dir,new_cor))
```
And then, some level have hidden these step, but I'm also addit and fix this function.

After win all level, we got flag.
