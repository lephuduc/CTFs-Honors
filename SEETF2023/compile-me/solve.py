from itertools import combinations
from z3 import *

meow = """                Z(H, He, Li, Be, B, C, N, O, F),
                Z(Ne, Na, Mg, Al, Si, P, S, Cl, Ar),
                Z(K, Ca, Sc, Ti, V, Cr, Mn, Fe, Co),
                Z(Ni, Cu, Zn, Ga, Ge, As, Se, Br, Kr),
                Z(Rb, Sr, Y, Zr, Nb, Mo, Tc, Ru, Rh),
                Z(Pd, Ag, Cd, In, Sn, Sb, Te, I, Xe),
                Z(Cs, Ba, La, Ce, Pr, Nd, Pm, Sm, Eu),
                Z(Gd, Tb, Dy, Ho, Er, Tm, Yb, Lu, Hf),
                Z(Ta, W, Re, Os, Ir, Pt, Au, Hg, Tl),
                Z(H, Ne, K, Ni, Rb, Pd, Cs, Gd, Ta),
                Z(He, Na, Ca, Cu, Sr, Ag, Ba, Tb, W),
                Z(Li, Mg, Sc, Zn, Y, Cd, La, Dy, Re),
                Z(Be, Al, Ti, Ga, Zr, In, Ce, Ho, Os),
                Z(B, Si, V, Ge, Nb, Sn, Pr, Er, Ir),
                Z(C, P, Cr, As, Mo, Sb, Nd, Tm, Pt),
                Z(N, S, Mn, Se, Tc, Te, Pm, Yb, Au),
                Z(O, Cl, Fe, Br, Ru, I, Sm, Lu, Hg),
                Z(F, Ar, Co, Kr, Rh, Xe, Eu, Hf, Tl),
                Z(H, He, Li, Ne, Na, Mg, K, Ca, Sc),
                Z(Be, B, C, Al, Si, P, Ti, V, Cr),
                Z(N, O, F, S, Cl, Ar, Mn, Fe, Co),
                Z(Ni, Cu, Zn, Rb, Sr, Y, Pd, Ag, Cd),
                Z(Ga, Ge, As, Zr, Nb, Mo, In, Sn, Sb),
                Z(Se, Br, Kr, Tc, Ru, Rh, Te, I, Xe),
                Z(Cs, Ba, La, Gd, Tb, Dy, Ta, W, Re),
                Z(Ce, Pr, Nd, Ho, Er, Tm, Os, Ir, Pt),
                Z(Pm, Sm, Eu, Yb, Lu, Hf, Au, Hg, Tl),"""

meow = [map(str.strip, line[18:-2].split(",")) for line in meow.split("\n")]



e = ("H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y", "Zr", "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl")
nodes = {k: Int(k) for k in e}

s = Solver()
s.add(nodes["H"] == nodes["Eu"], nodes["Eu"] == nodes["Dy"]) # long = H = Eu = Dy
s.add(nodes["Mg"] == nodes["I"])                     # sbyte = Mg = I
s.add(nodes["Al"] == nodes["Sm"])                    # int = Al = Sm 
s.add(nodes["Ca"] == nodes["As"], nodes["As"] == nodes["Tc"])# uint = Ca = As = Tc
s.add(nodes["V"] == nodes["W"])                      # ulong = V = W
                                             # byte = Mn
s.add(nodes["Cu"] == nodes["Mo"], nodes["Mo"] == nodes["Ho"])# ushort = Cu = Mo = Ho
s.add(nodes["Nb"] == nodes["Au"])                            # short = Nb = Au
s.add(nodes["In"] == nodes["La"], nodes["La"] == nodes["Lu"])# bool = In = La = Lu
meow.append(["H", "Mg", "Al", "Ca", "V", "Mn", "Cu", "Nb", "In"])

edges = set()
for f in meow:
    edges.update(combinations(f, 2))

for edge in edges:
    s.add(nodes[edge[0]] != nodes[edge[1]])

for node in nodes.values():
    s.add(node >= 0, node < 9)

print(s.check())
m = s.model()
print({k: m[l] for k,l in nodes.items()})

# sat = {'H': 8, 'He': 3, 'Li': 4, 'Be': 5, 'B': 2, 'C': 7, 'N': 6, 'O': 0, 'F': 1, 'Ne': 1, 'Na': 0, 'Mg': 7, 'Al': 6, 'Si': 8, 'P': 4, 'S': 3, 'Cl': 5, 'Ar': 2, 'K': 6, 'Ca': 5, 'Sc': 2, 'Ti': 0, 'V': 1, 'Cr': 3, 'Mn': 4, 'Fe': 8, 'Co': 7, 'Ni': 3, 'Cu': 2, 'Zn': 0, 'Ga': 4, 'Ge': 7, 'As': 5, 'Se': 8, 'Br': 1, 'Kr': 6, 'Rb': 7, 'Sr': 6, 'Y': 1, 'Zr': 8, 'Nb': 0, 'Mo': 2, 'Tc': 5, 'Ru': 4, 'Rh': 3, 'Pd': 4, 'Ag': 8, 'Cd': 5, 'In': 3, 'Sn': 6, 'Sb': 1, 'Te': 2, 'I': 7, 'Xe': 0, 'Cs': 2, 'Ba': 4, 'La': 3, 'Ce': 1, 'Pr': 5, 'Nd': 0, 'Pm': 7, 'Sm': 6, 'Eu': 8, 'Gd': 0, 'Tb': 7, 'Dy': 8, 'Ho': 2, 'Er': 4, 'Tm': 6, 'Yb': 1, 'Lu': 3, 'Hf': 5, 'Ta': 5, 'W': 1, 'Re': 6, 'Os': 7, 'Ir': 3, 'Pt': 8, 'Au': 0, 'Hg': 2, 'Tl': 4}
# e = ("H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mg", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y", "Zr", "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl")
# conversion = ["Int16", "UInt64", "UInt16", "Boolean", "Byte", "UInt32", "Int32", "SByte", "Int64"]

# s = ""
# for v in sat.values():
#     s += conversion[v]
# print(s)