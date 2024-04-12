from pwn import xor
buf = b'su}fwIZ`P~g\x08Df@\x02^{\x01zf\x03[e\x03G\x0f\rYMl[\x7fkR\x02\x7f\x13\x15H\x10'
print(xor(b'141592653589793238462643383'[:16],buf))
print(xor(buf[:6],b'BALSN{'))