enc = b'\xf3c\xe9\\\xae\x07\xe8\xdap\\P~\xb0\x86p6?\xe6\xcb\t\xafYN\x04\xcc1\xae\xeap\xebPk\x8e\xe9\xc6dC\xedS\xfcy\xa8\x7fl\x93\x93*\x1e[\x1e\xd7u\x83\x16f\x9e~\x0c\x1f\xa0q:\x948\x08\xf6\x15\xb4\xe1o\x04\xf2\x16\x9d\xfd\x0b\xa5\x87tP\xdf\x19]l\x9e/\xe1m\x9e\xb1\xddXh\xf2\x05\xbd\x06,\x17\x9dP~\xd5\xe9\xfd\x89\xfa<(\xef=\xb8\t\xf1Sy\xb4\xa1\xb7(\xd0\x88\x80vT\xa1\xed\x1b'

# from qiling import Qiling
# from qiling.const import QL_VERBOSE

# ql = Qiling([r"rootfs/x8664_linux/bin/utterlyderanged"],r"rootfs/x8664_linux/",verbose=QL_VERBOSE.DISABLED)
# ql.run()
x = [144, 12, 155, 63, 218, 97, 147, 169, 67, 111, 97, 16, 215, 217, 4, 94, 77, 147, 148, 100, 214, 6, 126, 116, 248, 64, 219, 217, 47, 155, 34, 88, 234, 216, 165, 80, 55, 222, 102, 129, 121, 168, 127, 108, 147, 147, 42, 30, 91, 30, 215, 117, 131, 22, 102, 158, 126, 12, 31, 160, 113, 58, 148, 56, 8, 246, 21, 180, 225, 111, 4, 242, 22, 157, 253, 11, 165, 135, 116, 80, 223, 25, 93, 108, 158, 47, 225, 109, 158, 177, 221, 88, 104, 242, 5, 189, 6, 44, 23, 157, 80, 126, 213, 233, 253, 137, 250, 60, 40, 239, 61, 184, 9, 241, 83, 121, 180, 161, 183, 40, 208, 136, 128, 118, 84, 161, 237, 27]
print(len(x))
from pwn import xor
print(xor(x,enc))