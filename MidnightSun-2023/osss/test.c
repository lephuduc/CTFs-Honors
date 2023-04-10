#include <stdio.h>
typedef unsigned int ui;
#define FLAG "midnight{0--N_50rCeRy!!}"
#define rol4(a) (((a) << 4) | ((a) >> 4))
#define xorb(a, b) (((a) ^ (b)) & 0xff)
#define danxen(a, b) ((a)&0x55) | (((b)&0xaa) >> 1)
#define mul(a, b) ((((a) * (b)) % 1257) & 0xff)
#define rol1(T3S) (((T3S) << 1) | ((T3S) >> 7))
#define xor1(T3S) (((T3S) << 3) ^ ((T3S) >> 5))
#define xor2(a, b) (((a) << 4) ^ (b))
#define sus1(a, b, c, d) rol4(mul(rol1(rol4(danxen(rol1(xorb(a, b)), rol1(xorb(c, d))))), b))
#define sus2(a, b) rol1(rol4(xorb(a, b)))
#define sus3(a, b) xor2(b, rol4(xorb(a, b)))
#define xorl(a, b) ((a) ^ (b))
#define check1(a, b) (mul(rol1(rol4(a)), count1) == (b) ? (1) : (0))
#define check2(a, b) (rol1(rol4(a)) == (b) ? (1) : (0))
#define check3(a, b) (xor1(a) == (b) ? (1) : (0))

#define Z3K(R2K) (((R2K) /*&||*/ << 4) | ((R2K) /*&=|=*/ >> 4))
#define X1M(A9W, B8X) (((A9W) /*|=*/ ^ (B8X)) & /*~*/ 0xff)
#define Y2G(A9W, B8X) ((A9W) /*>>*/ & 0x55) | (((B8X) & /*<<*/ 0xaa) >> 1)
#define W4U(A9W, B8X) ((((A9W) /*%*/ * (B8X)) % /*&=|=*/1257) & 0xff)
#define V5H(T3S) (((T3S) /*>>*/ << 1) | ((T3S) /*|*/ >> 7))
#define S6E(T3S) (((T3S) /*^*/ << 3) ^ ((T3S) /*&*/ >> 5))
#define D7F(A9W, B8X) (((A9W) /*<*/ << 4) ^ /*~*/ (B8X))
#define A1C(P6F, Q5G, R4H, S3I) Z3K(W4U(V5H(Z3K(Y2G(V5H(X1M(/*&||*/ P6F, Q5G)), V5H(X1M(R4H, S3I))))), Q5G)) /* Function W */
#define B2D(P6F, Q5G) V5H(Z3K(X1M(P6F, Q5G)))
#define C3E(P6F, Q5G) D7F(Q5G, Z3K(X1M(P6F, Q5G)))
#define D4F(P6F, Q5G) ((P6F) /*&|*/ ^ (Q5G))
#define E1I(K2L, M1N) (W4U(V5H(Z3K(K2L)), q1s) /*|*/ == (M1N) ? (++q1s) : (q1s = q1s))
#define F2J(K2L, M1N) (V5H(Z3K(K2L)) == (M1N) ? (++r8w) : (r8w = r8w))
#define G3K(K2L, M1N) (S6E(K2L) == (M1N) ? (++s9r) : (s9r = s9r))


#define LOWORD(l) ((WORD)(l))
#define HIWORD(l) ((WORD)(((DWORD)(l) >> 16) & 0xFFFF))
#define LOBYTE(w) ((BYTE)(w))
#define HIBYTE(w) ((BYTE)(((WORD)(w) >> 8) & 0xFF))
int main()
{
    ui count1= 0;
    ui buf3[6] = {0};
    ui buf1[6] = {0};
    ui buf2[12] = {0};
    int i =0;
    char flag[] = FLAG;

    for (int k = 0;k<255;k++){
        // for (int j = 0;j<255;j++){
        int j = '}';
        if ( ((2
       * ((16
         * ((2 * ((16 * (char)(k ^ j)) & 0xFF0 | ((char)(k ^ j) >> 4) & 0xF)) | (((16 * (char)(k ^ j)) & 0xFF0 | ((char)(k ^ j) >> 4) & 0xF) >> 7))) | (((2 * ((16 * (char)(k ^ j)) & 0xFF0 | ((char)(k ^ j) >> 4) & 0xF)) | (((16 * (char)(k ^ j)) & 0xFF0 | ((char)(k ^ j) >> 4) & 0xF) >> 7)) >> 4))) | (((16 * ((2 * ((16 * (char)(k ^ j)) & 0xFF0 | ((char)(k ^ j) >> 4) & 0xF)) | (((16 * (char)(k ^ j)) & 0xFF0 | ((char)(k ^ j) >> 4) & 0xF) >> 7))) | (((2 * ((16 * (char)(k ^ j)) & 0xFF0 | ((char)(k ^ j) >> 4) & 0xF)) | (((16 * (char)(k ^ j)) & 0xFF0 | ((char)(k ^ j) >> 4) & 0xF) >> 7)) >> 4)) >> 7)) == 4112 ){
                // printf("%d %d\n",j,k);
                break;
            }
    }

    //brute sus2
    for (int j = 0;j<255;j++){
        // flag[9] = j;
        int tmp = sus2(flag[12],j);
        if (check2(tmp,042104)){
            printf("%d\n",j);
        }
    }
    for (int k = 112;k<128;k++){
        for (int j = 48;j<63;j++){
            // flag[9] = j;
            int tmp = sus2(k,j);
            if (check2(tmp,0x10d0d)){
                flag[10] = k;
                flag[11] = j;
                printf("%s\n",flag);
                // printf("%d %d\n",k,j);
            }
        }
    }
    // brute buf3
    // for (int k = 0;k<255;k++){
        for (int j = 0;j<255;j++){
            int tmp = xorl(sus3(flag[9], j), sus3(flag[13], flag[15]));
            if (check3(tmp,0x3787)){
                // printf("%d %d\n",j,0);
            }
        }
    

    return 0;
}