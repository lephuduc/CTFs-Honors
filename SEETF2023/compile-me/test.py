
import base64
from pwn import xor

t = """
Y<long>(H => X(He => X(Li => X(Be => X(B => X(C => X(N => X(O => X(F => X(Ne => X(Na =>
Y<sbyte>(Mg =>
Y<int>(Al => X(Si => X(P => X(S => X(Cl => X(Ar => X(K =>
Y<uint>(Ca => X(Sc => X(Ti =>
Y<ulong>(V => X(Cr =>
Y<byte>(Mn => X(Fe => X(Co => X(Ni =>
Y<ushort>(Cu => X(Zn => X(Ga => X(Ge =>
Y<uint>(As => X(Se => X(Br => X(Kr => X(Rb => X(Sr => X(Y => X(Zr =>
Y<short>(Nb =>
Y<ushort>(Mo =>
Y<uint>(Tc => X(Ru => X(Rh => X(Pd => X(Ag => X(Cd =>
Y<bool>(In => X(Sn => X(Sb => X(Te =>
Y<sbyte>(I => X(Xe => X(Cs => X(Ba =>
Y<bool>(La => X(Ce => X(Pr => X(Nd => X(Pm =>
Y<int>(Sm =>
Y<long>(Eu => X(Gd => X(Tb =>
Y<long>(Dy =>
Y<ushort>(Ho => X(Er => X(Tm => X(Yb =>
Y<bool>(Lu => X(Hf => X(Ta =>
Y<ulong>(W => X(Re => X(Os => X(Ir => X(Pt =>
Y<short>(Au => X(Hg => X(Tl => ""
"""

d = {"bool": "Booleanfalse",
"byte": "Byte0",
"sbyte": "SByte0",
"short": "Int160",
"ushort": "UInt160",
"int": "Int320",
"uint": "UInt320",
"long": "Int640",
"ulong": "UInt640",
}

t = t.split('Y<')[1:]
# print(t)
s = ""
for line in t:
    n = line.count('=')
    typ = line.split('(')[0].strip('>')
    print(typ)
    s+= d[typ]*n
print(s)
enc = base64.b64decode(b"To8nQU1OWzL4qzlMYUPPeCI68VIueVeBrtZYuNkHv5TfVXoriYjNIW23S0DHdPNQW84enVObbXmPF6O1xs1+9MiWVAu6T39L")
print(enc)
print(xor(enc,b'SEE{'))