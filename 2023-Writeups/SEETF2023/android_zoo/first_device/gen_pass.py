import itertools

digits = "123456789"
length = 5

combinations = []
for comb in itertools.permutations(digits, length):
    combination = "".join(comb)
    combinations.append(combination)
with open('password.txt','w') as f:
    f.write('\n'.join(combinations))
print(len(combinations))