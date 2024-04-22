#include <stdio.h>
#include <stdint.h>
int __ROL4__(int value,unsigned char rotation){
    return (value<<rotation)&0xffffffff | (value>>(32 - rotation)&0xffffffff);
}
int __ROR4__(int value,unsigned char rotation){
    return (value>>rotation)&0xffffffff | (value<<(32 - rotation)&0xffffffff);
}

int func(char * buffer){
    int v8;
    int v9;
    unsigned int v10;
    // printf("%c%c%c%c%c%c%c\n",buffer[0],buffer[1],buffer[3],buffer[3],buffer[4],buffer[5],buffer[6]);
    int n1 = (buffer[0]^(buffer[1]<<8)^(buffer[2]<<16)^(buffer[3]<<24));
    int n2 = (buffer[4] | (buffer[5] << 8) ) | (buffer[6] << 16) ;
    // printf("%ld %d \n",n1,n2);
    v8 = 7 * __ROL4__(0x59D87C3F * __ROR4__(0x193482BA * n1, 15), 11);
    v9 = __ROR4__(0x193482BA * n2, 15);
    v10 = 0x764521F9 * ((v8 + 0x47C8AC62) ^ (0x59D87C3F * v9) ^ 7 ^ (((v8 + 0x47C8AC62) ^ (unsigned int)(0x59D87C3F * v9)) >> 16));
    printf("%u\n",(((0x93AC1E76 * ((v10 >> 13) ^ v10)) >> 16) ^ (0x93AC1E76 * ((v10 >> 13) ^ v10))));
    if ((unsigned int)(((0x93AC1E76 * ((v10 >> 13) ^ v10)) >> 16) ^ (0x93AC1E76 * ((v10 >> 13) ^ v10))) == 0xF99C821 ){
        return 1;
    }
    return 0;
}
int main(){
    char buf[7];
    for (int i = 48;i<=57;i++){
        for (int j = 48;j<=57;j++){
            for (int k = 48;k<=57;k++){
                for (int l = 48;l<=57;l++){
                    for (int m = 48;m<=57;m++){
                        for (int n = 48;n<=57;n++){
                            for (int o = 48;o<=57;o++){
                            buf[0]= i;
                            buf[1]= j;
                            buf[2]= k;
                            buf[3]= l;
                            buf[4]= m;
                            buf[5]= n;
                            buf[6]= o;
                            // printf("found %c%c%c%c%c%c%c\n",i,j,k,l,m,n,o);
                            if (func(buf)){
                                printf("found %c%c%c%c%c%c%c\n",i,j,k,l,m,n,o);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}