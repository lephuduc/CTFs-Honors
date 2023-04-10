f= list(bytes(b'hxp{abcdefghijklmnopqrstuvwxy}'))  

def rotate_left(a, n):
    return ((a << (8 - n)) & 0xff) | (a >> n)
def rotate_right(a, n):
    return ((a << n) & 0xff) | (a >> (8 - n))
#<<7 >>1: rotate right => rev = left
#<<1 >>7: rotate left = > rev = g 
f[17]-=f[5];f[17]&=0xff
f[29]=~f[29]&0xff
f[3]^=f[11]
f[6]=f[6]<<7&0xff|f[6]>>1
f[2]=~f[2]&0xff
f[20]=f[20]<<7&0xff|f[20]>>1
f[23]=f[23]^(f[23]>>1)
f[15]=f[15]^(f[15]>>1)
f[9]^=f[1]
f[9]^=f[4]
f[16]=f[16]^(f[16]>>1)
f[11]=f[11]<<1&0xff|f[11]>>7
f[28]=~f[28]&0xff
f[0]=~f[0]&0xff
f[16]-=f[13];f[16]&=0xff
f[14]-=f[29];f[14]&=0xff
f[13]=~f[13]&0xff
f[26]+=f[7];f[26]&=0xff
f[26]+=f[0];f[26]&=0xff
f[18]+=f[29];f[18]&=0xff
f[8]=f[8]<<1&0xff|f[8]>>7
f[4]=f[4]^(f[4]>>1)
f[5]+=f[7];f[5]&=0xff
f[10]^=f[29]
f[15]^=f[20]
f[22]=f[22]<<7&0xff|f[22]>>1
f[4]^=f[15]
f[13]+=f[3];f[13]&=0xff
f[5]=f[5]<<1&0xff|f[5]>>7
f[26]=f[26]<<7&0xff|f[26]>>1
f[14]^=f[21]
f[29]=f[29]<<7&0xff|f[29]>>1
f[1]+=f[4];f[1]&=0xff
f[4]=~f[4]&0xff
f[13]+=f[18];f[13]&=0xff
f[16]=f[16]<<1&0xff|f[16]>>7
f[11]=f[11]<<7&0xff|f[11]>>1
f[7]+=f[6];f[7]&=0xff
f[11]+=f[20];f[11]&=0xff
f[23]=~f[23]&0xff
f[4]-=f[3];f[4]&=0xff
f[26]-=f[22];f[26]&=0xff
f[16]=f[16]<<1&0xff|f[16]>>7
f[11]-=f[8];f[11]&=0xff
f[8]^=f[9]
f[24]-=f[14];f[24]&=0xff
f[29]+=f[24];f[29]&=0xff
f[4]+=f[18];f[4]&=0xff
f[1]=f[1]<<7&0xff|f[1]>>1
f[20]=f[20]<<7&0xff|f[20]>>1
f[20]=f[20]<<7&0xff|f[20]>>1
f[20]=~f[20]&0xff
f[11]^=f[2]
f[20]+=f[24];f[20]&=0xff
f[2]-=f[6];f[2]&=0xff
f[10]-=f[24];f[10]&=0xff
f[25]=f[25]^(f[25]>>1)
f[12]^=f[14]
f[25]=f[25]<<7&0xff|f[25]>>1
f[15]=f[15]<<1&0xff|f[15]>>7
f[25]-=f[12];f[25]&=0xff
f[2]-=f[5];f[2]&=0xff
f[0]+=f[11];f[0]&=0xff
f[6]+=f[1];f[6]&=0xff
f[6]-=f[17];f[6]&=0xff
f[29]+=f[9];f[29]&=0xff
f[7]=~f[7]&0xff
f[2]-=f[5];f[2]&=0xff
f[22]+=f[2];f[22]&=0xff
f[24]=f[24]<<1&0xff|f[24]>>7
f[20]=f[20]^(f[20]>>1)
f[28]=f[28]^(f[28]>>1)
f[15]^=f[20]
f[3]=f[3]<<1&0xff|f[3]>>7
f[17]=f[17]<<7&0xff|f[17]>>1
f[11]=f[11]<<7&0xff|f[11]>>1
f[18]=~f[18]&0xff
f[13]=f[13]^(f[13]>>1)
f[15]+=f[2];f[15]&=0xff
f[9]-=f[20];f[9]&=0xff
f[6]^=f[1]
f[1]+=f[13];f[1]&=0xff
f[0]+=f[4];f[0]&=0xff
f[14]=~f[14]&0xff
f[17]=f[17]<<1&0xff|f[17]>>7
f[17]=f[17]<<7&0xff|f[17]>>1
f[14]=f[14]^(f[14]>>1)
f[24]+=f[7];f[24]&=0xff
f[16]^=f[6]
f[13]-=f[9];f[13]&=0xff
f[1]+=f[10];f[1]&=0xff
f[28]=f[28]<<1&0xff|f[28]>>7
f[25]+=f[22];f[25]&=0xff
f[14]=f[14]^(f[14]>>1)
f[2]=f[2]<<7&0xff|f[2]>>1
f[2]^=f[15]
f[17]=f[17]<<7&0xff|f[17]>>1
f[3]+=f[22];f[3]&=0xff
f[23]=f[23]<<7&0xff|f[23]>>1
f[11]=f[11]<<7&0xff|f[11]>>1
f[9]-=f[16];f[9]&=0xff
f[7]=f[7]<<7&0xff|f[7]>>1
f[6]=~f[6]&0xff
f[5]-=f[15];f[5]&=0xff
f[6]+=f[17];f[6]&=0xff
f[7]+=f[6];f[7]&=0xff
f[3]-=f[28];f[3]&=0xff
f[1]^=f[18]
f[22]+=f[5];f[22]&=0xff
f[14]+=f[2];f[14]&=0xff
f[21]^=f[22]
f[4]+=f[29];f[4]&=0xff
f[26]=(((f[26]*0x0802&0x22110)|(f[26]*0x8020&0x88440))*0x10101>>16)&0xff
f[17]+=f[18];f[17]&=0xff
f[17]=f[17]<<1&0xff|f[17]>>7
f[16]+=f[3];f[16]&=0xff
f[25]^=f[21]
f[14]-=f[9];f[14]&=0xff
f[1]-=f[13];f[1]&=0xff
f[0]^=f[1]
f[1]^=f[28]
f[14]=~f[14]&0xff
f[27]=(((f[27]*0x0802&0x22110)|(f[27]*0x8020&0x88440))*0x10101>>16)&0xff
f[9]^=f[2]
f[17]=f[17]<<7&0xff|f[17]>>1
f[13]^=f[1]
f[5]^=f[13]
f[10]^=f[0]
f[12]^=f[1]
f[2]=~f[2]&0xff
f[1]=f[1]<<7&0xff|f[1]>>1
f[11]=f[11]<<1&0xff|f[11]>>7
f[9]^=f[28]
f[3]=(((f[3]*0x0802&0x22110)|(f[3]*0x8020&0x88440))*0x10101>>16)&0xff
f[19]=f[19]<<1&0xff|f[19]>>7
f[16]+=f[9];f[16]&=0xff
f[8]=f[8]<<1&0xff|f[8]>>7
f[28]=f[28]<<1&0xff|f[28]>>7
f[12]+=f[3];f[12]&=0xff
f[25]=(((f[25]*0x0802&0x22110)|(f[25]*0x8020&0x88440))*0x10101>>16)&0xff
f[14]=(((f[14]*0x0802&0x22110)|(f[14]*0x8020&0x88440))*0x10101>>16)&0xff
f[11]=f[11]<<7&0xff|f[11]>>1
f[6]-=f[28];f[6]&=0xff
f[6]^=f[5]
f[28]^=f[0]
f[10]+=f[22];f[10]&=0xff
f[8]=f[8]^(f[8]>>1)
f[19]=f[19]<<7&0xff|f[19]>>1
f[26]+=f[14];f[26]&=0xff
f[25]^=f[28]
f[15]+=f[17];f[15]&=0xff
f[12]^=f[4]
f[25]-=f[4];f[25]&=0xff
f[11]=~f[11]&0xff
f[1]=f[1]<<7&0xff|f[1]>>1
f[9]-=f[28];f[9]&=0xff
f[4]^=f[18]
f[15]=~f[15]&0xff
f[12]=f[12]<<1&0xff|f[12]>>7
f[12]=f[12]<<7&0xff|f[12]>>1
f[2]=f[2]^(f[2]>>1)
f[6]=~f[6]&0xff
f[10]=f[10]<<7&0xff|f[10]>>1
f[20]=f[20]^(f[20]>>1)
f[20]-=f[24];f[20]&=0xff
f[4]=f[4]<<1&0xff|f[4]>>7
f[16]^=f[11]
f[8]=~f[8]&0xff
f[1]=(((f[1]*0x0802&0x22110)|(f[1]*0x8020&0x88440))*0x10101>>16)&0xff
f[4]-=f[18];f[4]&=0xff
f[5]=f[5]^(f[5]>>1)
f[25]+=f[4];f[25]&=0xff
f[9]^=f[26]
f[5]^=f[3]
f[4]^=f[2]
f[29]+=f[21];f[29]&=0xff
f[20]=f[20]<<1&0xff|f[20]>>7
f[24]^=f[27]
f[8]-=f[16];f[8]&=0xff
f[22]=f[22]<<7&0xff|f[22]>>1
f[3]=f[3]<<7&0xff|f[3]>>1
f[10]+=f[9];f[10]&=0xff
f[9]=f[9]^(f[9]>>1)
f[24]^=f[25]
f[9]=~f[9]&0xff
f[1]=f[1]^(f[1]>>1)
f[19]=f[19]<<1&0xff|f[19]>>7
f[7]=f[7]<<7&0xff|f[7]>>1
f[21]-=f[25];f[21]&=0xff
f[28]+=f[0];f[28]&=0xff
f[18]=f[18]<<7&0xff|f[18]>>1
f[20]^=f[5]
f[17]^=f[12]
f[22]+=f[23];f[22]&=0xff
f[18]-=f[25];f[18]&=0xff
f[4]=f[4]<<1&0xff|f[4]>>7
f[0]=f[0]<<1&0xff|f[0]>>7
f[29]=f[29]<<1&0xff|f[29]>>7
f[17]=f[17]<<1&0xff|f[17]>>7
f[7]^=f[21]
f[8]+=f[17];f[8]&=0xff
f[10]-=f[22];f[10]&=0xff
f[8]+=f[18];f[8]&=0xff
f[21]-=f[0];f[21]&=0xff
f[15]^=f[20]
f[1]=f[1]<<1&0xff|f[1]>>7
f[14]=f[14]<<7&0xff|f[14]>>1
f[13]^=f[2]
f[9]^=f[6]
f[15]+=f[8];f[15]&=0xff
f[8]^=f[1]
f[6]=f[6]^(f[6]>>1)
f[21]^=f[5]
f[17]^=f[13]
f[12]+=f[8];f[12]&=0xff
f[19]^=f[12]
f[2]^=f[1]
f[25]=f[25]<<1&0xff|f[25]>>7
f[19]=f[19]^(f[19]>>1)
f[0]=f[0]^(f[0]>>1)
f[17]-=f[27];f[17]&=0xff
f[20]=f[20]<<7&0xff|f[20]>>1
f[28]+=f[13];f[28]&=0xff
f[22]=~f[22]&0xff
f[26]^=f[17]
f[10]=f[10]<<1&0xff|f[10]>>7
f[24]=~f[24]&0xff
f[4]+=f[22];f[4]&=0xff
f[4]+=f[20];f[4]&=0xff
f[24]-=f[12];f[24]&=0xff
f[13]=f[13]<<1&0xff|f[13]>>7
f[2]=f[2]<<7&0xff|f[2]>>1
f[1]+=f[24];f[1]&=0xff
f[11]^=f[27]
f[14]=f[14]^(f[14]>>1)
f[17]=f[17]^(f[17]>>1)
f[21]=f[21]^(f[21]>>1)
f[24]=(((f[24]*0x0802&0x22110)|(f[24]*0x8020&0x88440))*0x10101>>16)&0xff
f[12]=f[12]^(f[12]>>1)
f[3]=f[3]<<1&0xff|f[3]>>7
f[8]-=f[1];f[8]&=0xff
f[21]-=f[18];f[21]&=0xff
f[0]-=f[22];f[0]&=0xff
f[4]=f[4]<<7&0xff|f[4]>>1
f[25]=f[25]<<1&0xff|f[25]>>7
f[10]=f[10]<<7&0xff|f[10]>>1
f[13]=f[13]^(f[13]>>1)
f[1]+=f[27];f[1]&=0xff
f[13]=(((f[13]*0x0802&0x22110)|(f[13]*0x8020&0x88440))*0x10101>>16)&0xff
f[11]=(((f[11]*0x0802&0x22110)|(f[11]*0x8020&0x88440))*0x10101>>16)&0xff
f[2]-=f[17];f[2]&=0xff
f[6]=f[6]<<7&0xff|f[6]>>1
f[10]=f[10]^(f[10]>>1)
f[4]+=f[8];f[4]&=0xff
f[1]+=f[2];f[1]&=0xff
f[0]+=f[14];f[0]&=0xff
f[11]=f[11]^(f[11]>>1)
f[7]+=f[17];f[7]&=0xff
f[18]=~f[18]&0xff
f[0]^=f[16]
f[12]-=f[13];f[12]&=0xff
f[23]=~f[23]&0xff
f[10]+=f[7];f[10]&=0xff
f[29]=f[29]^(f[29]>>1)
f[3]=f[3]<<7&0xff|f[3]>>1
f[20]^=f[3]
f[8]=f[8]<<1&0xff|f[8]>>7
f[25]+=f[24];f[25]&=0xff
f[26]=f[26]<<1&0xff|f[26]>>7
f[10]=f[10]^(f[10]>>1)
f[26]=f[26]^(f[26]>>1)
f[16]+=f[7];f[16]&=0xff
f[8]=~f[8]&0xff
f[14]^=f[13]
f[3]-=f[24];f[3]&=0xff
f[15]=(((f[15]*0x0802&0x22110)|(f[15]*0x8020&0x88440))*0x10101>>16)&0xff
f[15]+=f[28];f[15]&=0xff
f[10]=f[10]^(f[10]>>1)
f[17]-=f[15];f[17]&=0xff
f[22]+=f[2];f[22]&=0xff
f[27]=~f[27]&0xff
f[5]=f[5]^(f[5]>>1)
f[20]=~f[20]&0xff
f[13]^=f[24]
f[23]^=f[21]
f[2]+=f[23];f[2]&=0xff
f[5]-=f[20];f[5]&=0xff
f[24]^=f[12]
f[9]+=f[8];f[9]&=0xff
f[11]=f[11]^(f[11]>>1)
f[27]+=f[14];f[27]&=0xff
f[18]-=f[25];f[18]&=0xff
f[6]-=f[26];f[6]&=0xff
f[7]=f[7]^(f[7]>>1)
f[28]=f[28]^(f[28]>>1)
f[10]+=f[1];f[10]&=0xff
f[18]+=f[14];f[18]&=0xff
f[20]-=f[14];f[20]&=0xff
f[15]+=f[17];f[15]&=0xff
f[0]=~f[0]&0xff