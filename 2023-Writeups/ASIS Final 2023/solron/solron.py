with open('output-ori.txt','r') as f:
    out_nums = []
    rand_nums = []
    for line in f.readlines():
        if len(line)==16:
            out_nums.append(int(line))
        else:
            rand_nums.append(int(line))
print(out_nums,rand_nums,len(rand_nums))


def get_sum(inp): # len(inp) == 5
    out_res = []
    inp = bin(int.from_bytes(inp,'big'))[2:]
    for i in range(0,39):
        out_res.append(int(inp[i])*rand_nums[i])
    return sum(out_res)

# for i in range(1000000):
#     get_sum(b'abcde')
# print(len(out_nums),len(rand_nums))
