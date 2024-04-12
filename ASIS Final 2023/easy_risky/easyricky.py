from pwn import xor
sus = b'kycyQ\x1dXsu^euX\x7fDug\x19uEduxcyi\x07|\x1c\x1euG\x1eIb\x0bDo\x0b\x0bW*\x00*'
sus = list(sus)
sus = xor(sus,sus[0x2b])
print(bytes(sus))