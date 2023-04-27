f = open("uncertainty_modified", "rb").read()
b = list(f)
i = 0
bitnum = 6
for a in range(len(b)):
    b[a] = (b[a] & ~(1 << bitnum)) | (1<<bitnum)
open("uncertainty", "wb").write(bytes(b))