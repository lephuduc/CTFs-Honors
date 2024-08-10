import math
import struct
import scipy
import numpy as np
import scipy.interpolate
import itertools
import tqdm
import multiprocessing


MAX = np.float32(255.0)
UPPER = np.float32(128.0)
C_23 = np.float32(23.0)
HALF = np.float32(0.5)

# get mid: (a >> b) % (1<<c). This is eq of getting bits from bit b to bit c.
def getbits(a: np.float32, b: np.float32, c: np.float32):
    b = np.floor(b + HALF)
    c = np.floor(c + HALF)
    p = np.floor((np.floor(a) + HALF) / np.power(np.float32(2), b))
    m = np.floor(np.float32(1.0)*np.power(np.float32(2), c - b) + HALF)
    res = p % m
    return res

def f(input: np.float32): 
    if (input == np.float32(0.0)): return (0,0,0,0)
    isNeg = np.float32(0.0)
    if input > np.float32(0.0):
        isNeg = np.float32(0.0)
    else:
        isNeg = np.float32(1.0)
    input = np.fabs(input)
    OWO = np.floor(np.log2(input))
    normalized = OWO + MAX - UPPER
    result = ((input / np.power(np.float32(2), OWO)) - np.float32(1.0)) * np.power(np.float32(2.0), C_23);
    owO = normalized / np.float32(2.0); 
    upper_bits = (owO % np.float32(1)) + (owO % np.float32(1)); 
    oWO = np.floor(owO); 
    # return those as RGBA
    res = getbits(result, np.float32(0.0), np.float32(8.0)) / MAX; 
    res2 = getbits(result, np.float32(8.0), np.float32(16.0)) / MAX;  
    res3 = (upper_bits * UPPER + getbits(result, np.float32(16.0), C_23)) / MAX; 
    res4 = (isNeg * UPPER + oWO) / MAX;   
    return (res, res2, res3, res4)


D = [0x4, 0x14, 0x17, 0xd, 0xb, 0x0, 0xf, 0x1, 0xe, 0x15, 0x9, 0x13, 0x8, 0x3, 0x11, 0x18, 0x10, 0x6, 0x16, 0xa, 0x7, 0x12, 0x2, 0x5, 0xc]


def _offset(f):
    # this is returning fract(f) + this.d[int(f)] / 0x19
    # this.d ranges from 0x0 to 0x19
    return (np.float32(f) % np.float32(1) + np.float32(D[int(f)])) / np.float32(0x19)
    # return numpy.float32(f % 0x1) + D[int(f)] / numpy.float32(0x19)

W = H = np.float32(650.0)

# from 0 - 1 cast to 0-255
def cast_to_byte(f):
    return round(f * 255)

def wtf(a, b, c):
    # this is just a 1D interpolation, as its
    # b - - - b   (650)
    # |     / |
    # |   /   |
    # | /     |
    # a - - - a   (0)
    # important: interpolate 0.5 at pixel 0
    target_coor = _offset(c) * W

    interpol_z = (_offset(b) - _offset(a)) / W * \
                    (target_coor + np.float32(0.5)) + _offset(a)

    # pol = scipy.interpolate.interp1d([numpy.float32(-0.5), numpy.float32(649.5)], [numpy.float32(_offset(a)), numpy.float32(_offset(b))])
    # interpol_z = pol(target_coor)
    # print(interpol_z, target_coor)
    # print(target_coor, interpol_z)
    # print(interpol_z)
    vec4 = f(interpol_z)
    # print("interpol", interpol_z, _offset(b), _offset(a), target_coor)
    vec4 = list(map(cast_to_byte, vec4))
    # print(vec4)
    res = struct.unpack('<f', bytes(vec4))
    return float(f'{res[0]:.15f}')

from matplotlib.tri import Triangulation, LinearTriInterpolator, CubicTriInterpolator

def gtfo(a,b,c,d,e):
    target_x = _offset(d) * W
    target_y = _offset(e) * H
    diff = np.float32(0.5)
    triObj = Triangulation([np.float32(0) - diff, np.float32(650*2) - diff, np.float32(0) - diff], 
                           [np.float32(0) - diff, np.float32(0) - diff, np.float32(650*2) - diff])
    pol = LinearTriInterpolator(triObj, [_offset(a), _offset(b), _offset(c)])
    interpol_z = np.float32(pol(target_x, target_y))
    vec4 = f(interpol_z)
    vec4 = list(map(cast_to_byte, vec4))
    # print(vec4)
    res = struct.unpack('<f', bytes(vec4))
    return float(f'{res[0]:.15f}')



# ====== solve ======


src = {"_13_3_5": (0x13, 0x3, 0x5),
"_7_14_12": (0x7, 0x14, 0x12),
"_b_16_12": (0xb, 0x16, 0x12),
"_5_11_2": (0x5, 0x11, 0x2),
"_14_d_5": (0x14, 0xd, 0x5),
"_b_1_15": (0xb, 0x1, 0x15),
"_8_b_1": (0x8, 0xb, 0x1),
"_9_5_4": (0x9, 0x5, 0x4),
"_11_9_15": (0x11, 0x9, 0x15),
"_17_9_14": (0x17, 0x9, 0x14),
"_10_5_4": (0x10, 0x5, 0x4),
"_10_e_d": (0x10, 0xe, 0xd),
"_5_6_a": (0x5, 0x6, 0xa),
"_2_b_5": (0x2, 0xb, 0x5),
"_b_3_1": (0xb, 0x3, 0x1),
"_c_3_a": (0xc, 0x3, 0xa),
"_e_1_9": (0xe, 0x1, 0x9),
"_12_b_11": (0x12, 0xb, 0x11),
"_c_f_2": (0xc, 0xf, 0x2),
"_16_0_13": (0x16, 0x0, 0x13)}

constraints = [[0.3837876686390533, "_b_1_15", "_e_1_9", "_11_9_15", 0x10, 0x15],
[0.21054889940828397, "_b_3_1", "_b_1_15", "_8_b_1", 0x8, 0x2],
[0.475323349112426, "_b_1_15", "_12_b_11", "_5_6_a", 0x0, 0x14],
[0.6338370887573964, "_5_11_2", "_7_14_12", "_5_6_a", 0x8, 0x4],
[0.4111607928994082, "_b_16_12", "_b_3_1", "_c_3_a", 0x17, 0x1],
[0.7707577751479291, "_12_b_11", "_5_11_2", "_10_e_d", 0x14, 0x6],
[0.7743081420118344, "_17_9_14", "_2_b_5", "_5_11_2", 0x9, 0xa],
[0.36471487573964495, "_11_9_15", "_13_3_5", "_14_d_5", 0x12, 0x8],
[0.312678449704142, "_c_3_a", "_17_9_14", "_12_b_11", 0x0, 0x11],
[0.9502808165680473, "_c_f_2", "_17_9_14", "_5_11_2", 0x16, 0xa],
[0.5869052899408282, "_5_6_a", "_9_5_4", "_b_16_12", 0xe, 0xa],
[0.9323389467455623, "_12_b_11", "_b_16_12", "_5_6_a", 0xc, 0x7],
[0.4587118106508875, "_8_b_1", "_2_b_5", "_b_16_12", 0x4, 0x15],
[0.14484472189349107, "_c_3_a", "_17_9_14", "_b_3_1", 0x7, 0xf],
[0.7255550059171598, "_b_1_15", "_12_b_11", "_c_f_2", 0x9, 0x17],
[0.5031261301775147, "_5_11_2", "_b_16_12", "_b_3_1", 0x7, 0x1],
[0.1417352189349112, "_8_b_1", "_b_3_1", "_11_9_15", 0x10, 0xe],
[0.5579334437869822, "_b_3_1", "_b_16_12", "_c_f_2", 0x13, 0xb],
[0.48502262721893485, "_10_5_4", "_14_d_5", "_9_5_4", 0x17, 0x12],
[0.5920916568047336, "_9_5_4", "_11_9_15", "_7_14_12", 0x13, 0x6],
[0.7222713017751479, "_e_1_9", "_b_16_12", "_14_d_5", 0x8, 0x10],
[0.12367382248520711, "_10_5_4", "_c_3_a", "_5_6_a", 0x9, 0x5],
[0.4558028402366864, "_10_e_d", "_10_5_4", "_b_16_12", 0xa, 0x2],
[0.8537692426035504, "_12_b_11", "_17_9_14", "_2_b_5", 0x4, 0xb],
[0.9618170650887574, "_5_6_a", "_c_f_2", "_12_b_11", 0xf, 0x2],
[0.22088933727810647, "_13_3_5", "_9_5_4", "_e_1_9", 0xa, 0x5],
[0.4302783550295858, "_e_1_9", "_10_e_d", "_b_1_15", 0xe, 0x2],
[0.6262803313609467, "_16_0_13", "_b_3_1", "_b_16_12", 0x11, 0x16]]

def work(input):
    vars_assignment, fixed_assignment, vars, c = input
    vars_mapping = {}
    for k in fixed_assignment:
        vars_mapping[k] = fixed_assignment[k]
    for i in range(len(vars_assignment)):
        vars_mapping[vars[i]] = vars_assignment[i]
    computed_srcs = [0 for _ in range(3)]
    for i in range(3):
        wtf_var = c[i+1]
        current_srcs = src[wtf_var]
        val = []
        for j in current_srcs:
            val.append(vars_mapping[j])
        computed_srcs[i] = wtf(*val) * 0x19
    computed_srcs.append(c[4])
    computed_srcs.append(c[5])
    # print(computed_srcs)
    diff = abs(gtfo(*computed_srcs) - c[0])
    if diff > 0.00001:
        return
    return diff, vars_mapping

def experiement(fixed_assignment):
    min_deg = 10
    min_constraint = 0
    cur_deg = None
    for ci, c in enumerate(constraints):
        deg = set()
        for i in range(1, 4):
            for j in src[c[i]]:
                deg.add(j)
        for i in fixed_assignment:
            deg.discard(i)
        # print(ci, len(deg), deg)
        if len(deg) > 0 and len(deg) < min_deg:
            min_deg = len(deg)
            cur_deg = deg
            min_constraint = ci

    # solving 2nd and onwards constraints

    print("Min constraint:", min_constraint, min_deg, cur_deg)
    c = constraints[min_constraint]
    deg = set()
    for i in range(1, 4):
        for j in src[c[i]]:
            deg.add(j)
        for k in fixed_assignment:
            deg.discard(k)
    vars = list(deg)
    print(vars)

    charset = set(range(25))
    charset.difference_update(fixed_assignment.values())
    print("charset", charset)

    with multiprocessing.Pool(8) as workers:
        iter = zip(itertools.permutations(charset, r=len(vars)), itertools.repeat(fixed_assignment), itertools.repeat(vars), itertools.repeat(c))
        candidates = list(tqdm.tqdm(workers.imap_unordered(work, iter), total=int(math.factorial(len(charset))/math.factorial(len(charset) - len(vars)))))
        
        # workers.map(work, tqdm.tqdm(itertools.permutations(range(25), r=5), total=int(math.factorial(25)/math.factorial(20))))
    # for vars_assignment in tqdm.tqdm(itertools.permutations(range(25), r=5), total=math.factorial(25)/math.factorial(20))
    candidates = list(filter(lambda x: x != None, candidates))

    if len(candidates) > 0:
        print(len(candidates))
        print(candidates)
    return candidates

# experiement({1: 9})
# work([{}, {1: 7, 3: 17, 8: 1, 11:15, 21:22}, [], constraints[1]])

assignment = {}
possible_queue = [{}]
while len(possible_queue) > 0:
    current_assignment = possible_queue.pop()
    print("Testing", current_assignment)
    if len(current_assignment) > len(assignment):
        assignment = current_assignment
    if len(current_assignment) >= 24:
        break
    candidates = experiement(current_assignment)
    print(candidates)
    for acc, pos_assignments in candidates:
        possible_queue.append(pos_assignments)
    print(len(assignment))
print("Solution", assignment)
