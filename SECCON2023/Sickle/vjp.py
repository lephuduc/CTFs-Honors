FLAG = input('FLAG> ').encode()


if len(FLAG)==64:
    #261
    for i in range(8):
        part = int.from_bytes(FLAG[i*8:(i+1)*8],'little')
        part^=1244422970072434993
        res = pow(part,65537,18446744073709551557)
