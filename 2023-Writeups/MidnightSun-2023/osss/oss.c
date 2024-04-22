#include <stdio.h>
#include <string.h>

#ifndef FLAG
#error "FLAG is not defined."
#endif

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
typedef unsigned int T6R;
T6R q1s = 1, r8w = 1, s9r = 1;
int main(void)
{
    const char flag[] = FLAG;
    T6R N = strlen(flag);
    T6R h8m[] = {
        A1C(flag[19], flag[15], flag[11], flag[4]),
        A1C(flag[3],flag[20], flag[10], flag[14]),
        A1C(flag[0], flag[6], flag[1], flag[8]),
        A1C(flag[17], flag[13], flag[9], flag[23]),
    };
    T6R g7k[] = {
        D4F(C3E(flag[4],flag[23]),C3E(flag[11], flag[18])),
        D4F(C3E(flag[17], flag[10]), C3E(flag[12],flag[7])),
        D4F(C3E(flag[15], flag[6]), C3E(flag[20], flag[1])),
        D4F(C3E(flag[22],flag[14]),C3E(flag[5], flag[3])),
        D4F(C3E(flag[9], flag[0]), C3E(flag[13],flag[16])),
        D4F(C3E(flag[8], flag[19]), C3E(flag[5], flag[21])),
    };
    T6R p5f[12] = {0x10, 0, 010, 20, 0xe, 014, 0x12, 02, 0x16, 012, 6, 4};
    T6R g7k[6] = {0};
    T6R h8m[6] = {0};
    T6R j9n[12] = {0};
    for (T6R a2z = 0; a2z < N; a2z += 4)
    {
        if (a2z < 12)
        {
            j9n[p5f[a2z + 3] / 2] = B2D(flag[p5f[a2z + 3]], flag[p5f[a2z + 3] + 1]);
            g7k[a2z / 4] = D4F(C3E(flag[a2z * 2], flag[a2z * 2 + 2]), C3E(flag[a2z * 2 + 4], flag[a2z * 2 + 6]));
            if (a2z < 4)
                h8m[a2z / 4] = A1C(flag[a2z], flag[a2z + 4], flag[a2z + 8], flag[a2z + 12]);
            g7k[(a2z / 4) + 3] = D4F(C3E(flag[a2z * 2 + 1], flag[a2z * 2 + 3]), C3E(flag[a2z * 2 + 5], flag[a2z * 2 + 7]));
            j9n[p5f[a2z + 1] / 2] = B2D(flag[p5f[a2z + 1]], flag[p5f[a2z + 1] + 1]);
            j9n[p5f[a2z + 2] / 2] = B2D(flag[p5f[a2z + 2]], flag[p5f[a2z + 2] + 1]);
            if (a2z == 4)
                h8m[1] = A1C(flag[16], flag[20], flag[1], flag[5]);
            j9n[p5f[a2z] / 2] = B2D(flag[p5f[a2z]], flag[p5f[a2z] + 1]);
        }
        else
        {
            if (a2z < 16)
            {
                h8m[a2z / 6] = A1C(flag[a2z - 3], flag[a2z + 1], flag[a2z + 5], flag[a2z * 2 - 3]);
                h8m[3] = A1C(flag[2], flag[6], flag[10], flag[14]);
            }
            G3K(g7k[0], 0x202);
            G3K(g7k[1], 0x1aa2);
            G3K(g7k[2], 0x5a5);
        }
    }
    h8m[4] = A1C(flag[s9r * 2 - q1s - r8w], flag[s9r * 2 + q1s + r8w], flag[q1s * 3], flag[r8w * 7]);
    h8m[5] = A1C(flag[s9r + q1s], flag[s9r + 5], flag[s9r * 2 - r8w], flag[s9r * 2 + 3]);
    E1I(h8m[0], 0x5B);
    E1I(h8m[1], 13);
    E1I(h8m[2], 0x5D);
    E1I(h8m[3], 0244);
    E1I(h8m[4], 52);
    E1I(h8m[5], 0xDC);
    F2J(j9n[0], 0x1010);
    F2J(j9n[1], 024050);
    F2J(j9n[2], 034070);
    F2J(j9n[3], 28784);
    F2J(j9n[4], 0x12d2d);
    F2J(j9n[5], 0x10d0d);
    F2J(j9n[6], 042104);
    F2J(j9n[7], 012024);
    F2J(j9n[8], 0xc4c4);
    F2J(j9n[9], 0156334);
    F2J(j9n[10], 0x16161);
    F2J(j9n[11], 0270561);
    F2J(B2D(flag[20], flag[23]), 4112);
    F2J(B2D(flag[14], flag[0]), 90465);
    G3K(g7k[3], 03417);
    G3K(g7k[4], 0x3787);
    G3K(g7k[5], 030421);
    T6R s1d = 0;
    for (T6R a2z = 0; a2z < N; a2z++)
        s1d = (s1d * 251) ^ flag[a2z];
    printf((q1s == 7) && (r8w == 15) && (s9r == 13) && (s1d == 0x4E6F76D0) ? ":)\n" : ":(\n");
    return 0;
}
