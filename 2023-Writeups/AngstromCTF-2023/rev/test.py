from pwn import xor
x1 = b"2& =$!-( <*+*( ?!&$$6,. )' $19 , #9=!1 <*=6 <6;66#"
x2 = b"anextremelycomplicatedkeythatisdefinitelyuselessss"
print(xor(x1,x2))


print(pow(4919,-1,2**64)) #cringe
