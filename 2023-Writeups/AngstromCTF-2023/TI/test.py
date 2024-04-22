from pwn import *
import string
m = string.ascii_letters + "0123456789_"
# "CE C RELEASE"
# D1A820 address of first name input
# D1AB38 check name

# D1A7E4 input address of code talk to guard
# D1A7C0 address of printed string option 1

# $DIA968: get input function
# $021D2C: print str

x = bytes.fromhex('33 31 26 2A 37 29 75 32 38 1A 7D 75 1A 71 36 32 72 24 21 2E 05 2B 65 2F 32') 
guess = b"RRRLLLAAAEEEEEEAAALLLRRR2"
b =   guess + b'\x00'*(25 - len(guess))
print(len(guess),len(x))
print(xor(x,b))
