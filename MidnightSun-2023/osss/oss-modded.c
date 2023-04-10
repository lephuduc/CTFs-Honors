#include <stdio.h>
#include <string.h>
#define FLAG "midnight{ccccddddeeeeff}"
#ifndef FLAG
#error "FLAG is not defined."
#endif

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
#define check1(a, b) (mul(rol1(rol4(a)), count1) == (b) ? (++count1) : (count1 = count1))
#define check2(a, b) (rol1(rol4(a)) == (b) ? (++count2) : (count2 = count2))
#define check3(a, b) (xor1(a) == (b) ? (++count3) : (count3 = count3))
typedef unsigned int ui;
ui count1 = 1, count2 = 1, count3 = 1;
int main(void)
{
    const char flag[] = FLAG;
    ui N = strlen(flag);
    // ui buf1[] = {
    //     sus1(flag[19], flag[15], flag[11], flag[4]),
    //     sus1(flag[3],flag[20], flag[10], flag[14]),
    //     sus1(flag[0], flag[6], flag[1], flag[8]),
    //     sus1(flag[17], flag[13], flag[9], flag[23]),
    // };
    // ui buf3[] = {
    //     xorl(sus3(flag[4],flag[23]), sus3(flag[11], flag[18])),
    //     xorl(sus3(flag[17], flag[10]), sus3(flag[12],flag[7])),
    //     xorl(sus3(flag[15], flag[6]), sus3(flag[20], flag[1])),
    //     xorl(sus3(flag[22],flag[14]), sus3(flag[5], flag[3])),
    //     xorl(sus3(flag[9], flag[0]), sus3(flag[13], flag[16])),
    //     xorl(sus3(flag[8], flag[19]), sus3(flag[5], flag[21])),
    // };

    ui bytes[12] = {0x10, 0, 010, 20, 0xe, 014, 0x12, 02, 0x16, 012, 6, 4};
    ui buf3[6] = {0};
    ui buf1[6] = {0};
    ui buf2[12] = {0};
    for (ui i = 0; i < N; i += 4)
    {
        if (i < 12)
        {
            // printf("%d %d %d\n",bytes[i + 3] / 2,bytes[i + 3],bytes[i + 3] + 1); // 
            buf2[bytes[i + 3] / 2] = sus2(flag[bytes[i + 3]], flag[bytes[i + 3] + 1]);
            buf3[i / 4] = xorl(sus3(flag[i * 2], flag[i * 2 + 2]), sus3(flag[i * 2 + 4], flag[i * 2 + 6]));
            printf("%d: %d,%d,%d,%d\n",i / 4,i * 2,i * 2 + 2,i * 2 + 4,i * 2 + 6);
            if (i < 4)
                buf1[i / 4] = sus1(flag[i], flag[i + 4], flag[i + 8], flag[i + 12]);
            buf3[(i / 4) + 3] = xorl(sus3(flag[i * 2 + 1], flag[i * 2 + 3]), sus3(flag[i * 2 + 5], flag[i * 2 + 7]));
            printf("%d: %d,%d,%d,%d\n",(i / 4) + 3,i * 2 + 1,i * 2 + 3,i * 2 + 5,i * 2 + 7);
            buf2[bytes[i + 1] / 2] = sus2(flag[bytes[i + 1]], flag[bytes[i + 1] + 1]);
            // printf("%d %d %d\n",bytes[i + 1] / 2,bytes[i + 1],bytes[i + 1] + 1);
            buf2[bytes[i + 2] / 2] = sus2(flag[bytes[i + 2]], flag[bytes[i + 2] + 1]);
            // printf("%d %d %d\n",bytes[i + 2] / 2,bytes[i + 2],bytes[i + 2] + 1); // 18,19
            if (i == 4)
                buf1[1] = sus1(flag[16], flag[20], flag[1], flag[5]);
            buf2[bytes[i] / 2] = sus2(flag[bytes[i]], flag[bytes[i] + 1]);
            // printf("%d %d %d\n",bytes[i] / 2,bytes[i],bytes[i] + 1);   // 16 17
        }
        else
        {
            if (i < 16)
            {
                buf1[i / 6] = sus1(flag[i - 3], flag[i + 1], flag[i + 5], flag[i * 2 - 3]);
                buf1[3] = sus1(flag[2], flag[6], flag[10], flag[14]);
            }
            check3(buf3[0], 0x202);
            check3(buf3[1], 0x1aa2);
            check3(buf3[2], 0x5a5);
        }
    }
    buf1[4] = sus1(flag[count3 * 2 - count1 - count2], flag[count3 * 2 + count1 + count2], flag[count1 * 3], flag[count2 * 7]);
    buf1[5] = sus1(flag[count3 + count1], flag[count3 + 5], flag[count3 * 2 - count2], flag[count3 * 2 + 3]);
    check1(buf1[0], 0x5B);
    check1(buf1[1], 13);
    check1(buf1[2], 0x5D);
    check1(buf1[3], 0244);
    check1(buf1[4], 52);
    check1(buf1[5], 0xDC);

    check2(buf2[0], 0x1010);//
    check2(buf2[1], 024050);//
    check2(buf2[2], 034070);//
    check2(buf2[3], 28784);//
    // check2(buf2[4], 0x12d2d); // 8 9
    check2(buf2[5], 0x10d0d);    // 10 11
    // check2(buf2[6], 042104);     // 12 13
    // check2(buf2[7], 012024); // 14 15
    // check2(buf2[8], 0xc4c4);    //16 17
    // check2(buf2[9], 0156334);    // 18 19
    // check2(buf2[10], 0x16161); // 20 21
    // check2(buf2[11], 0270561);  22 23
    // check2(sus2(flag[20], flag[23]), 4112);
    // check2(sus2(flag[14], flag[0]), 90465);
    check3(buf3[3], 03417);
    check3(buf3[4], 0x3787);
    check3(buf3[5], 030421);
    ui checksum = 0;
    for (ui i = 0; i < N; i++)
        checksum = (checksum * 251) ^ flag[i];
    printf((count1 == 7) && (count2 == 15) && (count3 == 13) && (checksum == 0x4E6F76D0) ? ":)\n" : ":(\n");
    return 0;
}
