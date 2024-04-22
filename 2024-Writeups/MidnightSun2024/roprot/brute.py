import subprocess
import struct

with open('roprot','rb') as f:
    d = f.read()

seeds = [39040976, 77294443, 133195991, 169348690, 186710260, 292547478, 322594374, 326299402, 429357258, 440631340, 523157029, 530491550, 593391974, 612818513, 774498459, 845344266, 974918932, 999121459, 1041565290, 1112377611, 1173384949, 1195699176, 1239725718, 1247401789, 1277158092, 1308531612, 1335655574, 1418313074, 1433421627, 1506365013, 1611724639, 1653590797, 1735335979, 1816289202, 1910059619, 1949632705, 1973432170, 2001236390, 2014364338, 2016154885, 2026216640, 2069791107, 2164920328, 2213944409, 2346002613, 2450513750, 2495394039, 2525013098, 2530327068, 2534211800, 2619617229, 2668120284, 2694885117, 2730712532, 2812802806, 2823158295, 2842496672, 2858019496, 2876454489, 2880788063, 2893432340, 3175060384, 3226611648, 3337881311, 3360267287, 3514666712, 3521029655, 3522389906, 3552616174, 3583179138, 3645673571, 3668781593, 3875556285, 3887542767, 3982254061, 3996260606, 4040428616, 4050847126, 4059451825, 4067324055, 4148938706, 4289260530]

for seed in seeds: 
    newb = d.replace(b'\x78\x56\x34\x12',struct.pack('<I',seed))
    with open('roprot_new','wb') as wf:
        wf.write(newb)
        wf.close()
    try:
        print(seed)
        print(subprocess.check_output(['./roprot_new','0123-5678-ABCD-EFGH']))
    except Exception as e:
        pass