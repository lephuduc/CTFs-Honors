import struct
import binascii
import scrypt
N = 16384;r = 8;p = 1;
f = open("gatekeeper.pattern.key", "rb")
blob = f.read() 
s = struct.Struct('<'+'17s 8s 32s')
(meta, salt, signature) = s.unpack_from(blob)
f1 = open(
    "password.txt", "r"
)
lines=f1.readlines()[::-1]
for data in lines:    
    password=data.strip()       
    to_hash = meta    
    to_hash += password.encode()
    hash = scrypt.hash(to_hash, salt, N, r, p)  
    # print ('signature ' ,signature  )  
    # print ('Hash:     ' ,hash[0:32]  )
    # print ('Equal:    ' ,(hash[0:32] == signature)   )     
    if hash[0:32] == signature:  
        print(password)
        print ("OK")        
        exit()
