T1 = 481033500000
with open('annotation1.txt','r') as f:
    d = f.readlines()
    t1 = []
    for l in d:
        l = l.split()
        t1.append(int(l[-1].strip('\n')))

T2 = 481868166667
with open('annotation2.txt','r') as f:
    d = f.readlines()
    t2 = []
    for l in d:
        l = l.split()
        t2.append(int(l[-1].strip('\n')))
gaps = []
i = 0
j = 0
while len(gaps) < 500:
    save_t1 = 0
    save_t2 = 0
    while True:
        n = t1[i]
        if n > 300000000:
            save_t1 = T1
            T1+=n
            i+=1
            break
        T1 += n
        i+=1
    while True:
        if j==0:
            save_t2 = T2
            j+=1
            break
        m = t2[j]
        T2 += m
        if m > 300000000:
            save_t2 = T2
            j+=1
            break
        j+=1
    # print(save_t1,save_t2,T1,T2)
    gaps.append(save_t2-save_t1)

print(i,j)
gaps.append(828617928)
print(gaps,len(gaps))