bitnum = 6  # the bit position that was modified
msg_len = 100  # the length of the original message in bytes

with open("uncertainty_modified", "rb") as f:
    b = list(f.read())

msgb = ""
for a in range(len(b)):
    msgb += str((b[a] >> bitnum) & 1)

msg = bytes.fromhex(hex(int(msgb[:msg_len*8], 2))[2:])
print(msg)