from hashlib import sha512
def base24To16(s):
    b = "BCDFGHJKMPQRTVWXY2346789"
    res = 0
    based = 1
    for c in s[::-1]:
        res+=b.index(c)*based
        based*=24
    return hex(res).upper()[2:]
def base16To24(s):
    n = int(s,16)
    b = "BCDFGHJKMPQRTVWXY2346789"
    res = ""
    while n:
        res+=b[n%24]
        n = n//24
    return res[::-1]

s = sha512(b'1013D7').hexdigest()

print(base16To24('1013D7'))
print(base24To16('D6PFJDTW2H8R74QGDM'))
print(base16To24('AF733409336842E5D538'))

#key length = 40
# key has 5 part (4 "-")
# part 4 has 4 char, part 5 has 18 char and both must be in base 24 (custom)
# hex(part 5) = something(hex(part 4))
#=> choose random part4 => debug and get part5 in hex => calc part5 in base24

#key: 987-abcdefgh-ctf-46789-D6PFJDTW2H8R74QGDM