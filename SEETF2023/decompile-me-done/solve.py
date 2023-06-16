from pwn import xor
# with open('flag.txt', 'rb') as (f):
#     flag = f.read()

# n = len(flag)
# part1 = flag[0:n // 3]
# part2 = flag[n // 3:2 * n // 3]
# part3 = flag[2 * n // 3:]
# part1 = xor(part1, int(str(n)[0]) + int(str(n)[1]))
# part2 = xor(part1, part2)
# part3 = xor(part2, part3)
# part1 = xor(part3, part1)
# part2 = xor(part1, part2)
# part3 = xor(part2, part3)
# part3 = xor(part3, int(str(n)[0]) * int(str(n)[1]))
# enc = part1 + part2 + part3
# with open('output.txt', 'wb') as (f):
#     f.write(enc)

with open('output.txt', 'rb') as (f):
    enc = f.read()
n = len(enc)
part1 = enc[0:n // 3]
part2 = enc[n // 3:2 * n // 3]
part3 = enc[2 * n // 3:]

part3 = xor(part3, int(str(n)[0]) * int(str(n)[1]))
part3 = xor(part2, part3)
part2 = xor(part1, part2)
part1 = xor(part3, part1)

part3 = xor(part2, part3)
part2 = xor(part1, part2)
part1 = xor(part1, int(str(n)[0]) + int(str(n)[1]))
print(part1+part2+part3)