buffer = []
enc = "(kh)k'k(Qj)Q'Q(2U)2'2(35)3'3(Ff)F(ul)u?hbjU5?'F(9M)9'9(4 C)4'4(iv)i?ofM?'u?tCl?(SP)S'S'i?Pvh?_(k4)k'k(Q0)Q'Q(2Y)2'2(9 j)9'9(uB)u(S I)S(N7)N(oH)o?40Yi?(3a)3'3(Fi)F'F'S(XG)X'o?arij?(4k)4'4'u(fs)f(d f)d?kBr?(ix)i'i'X(cH)c'd(VZ)V(q x)q'q(DJ)D(W B)W?eIxG?(sp)s's(xN)x'x(pD)p'p'N'W?pND7g?(Mq)M'M?uqH?'c'f'V?HsfZl?'D(eT)e'e(j N)j'j?xJaT??BNr?_(kh)k'k(QS)Q'Q(2U)2'2(32)3'3(FZ)F(4s)4(XG)X?hSaU2?'F(97)9'9'4(Sw)S'S?nZ7s?(uc)u'u(iQ)i'i'X?cdwQG?_(k6)k'k(Qq)Q'Q(F8)F(9 8)9(i v)i(e4)e?i6q?(2t)2'2(3i)3'3'F'9(4 u)4'4(p R)p(oK)o(f b)f(Vr)V(D8)D?tin8?(us)u'u(SF)S'i(X 1)X'X(sS)s(NR)N(c 9)c(q o)q?8eus?'S'p(M X)M'f(W f)W(jm)j?Fvx1?'s(xo)x'x'c?Sop?'M'e'j?rR?'N(d8)d?eRX?'o?sK9?'d'q'W?sb8?'V?iro?'D?8v4??efm?"
i = 0
def remove_one(c):
    global buffer
    for i in range(len(buffer)):
        if c==buffer[i]:
            buffer = buffer[:i] + buffer[i+1:]
            return
flag = ""
while i < len(enc):
    if enc[i]==')':
        buffer.append(enc[i-1])
    if enc[i]=='?':
        tmp = []
        n = enc[i+1:].index('?')
        for j in range(i+1,i+n+1):
            tmp.append(enc[j])
        i+=n+1
        for c in tmp:
            if c in buffer:
                remove_one(c)
            else:
                flag+=c
    if enc[i]=='_':
        flag+='_'
    i+=1
print(flag)
