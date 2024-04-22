#include <stdio.h>
#define HIBYTE(a) (a>>8)

int check1(int a1){
  int v1; // edx
  int v3; // [rsp+Ah] [rbp-Ah]
  unsigned int v4; // [rsp+Eh] [rbp-6h]
  int i; // [rsp+10h] [rbp-4h]

  v3 = 0;
  for ( i = 0; i <= 15; ++i )
  {
    v4 = (int)(unsigned __int16)((1 << i) & a1) >> i;
    if ( (i & 3) != 0 )
    {
      if ( i % 4 == 1 )
      {
        v3 |= ((((1 << i) & 0xA55A) >> i) ^ v4) << i;
      }
      else
      {
        if ( i % 4 == 2 )
          v1 = ((((1 << i) & 0xA55A) >> i) ^ v4) << i;
        else
          v1 = ((((1 << i) & 0x5AA5) >> i) ^ v4) << i;
        v3 |= v1;
      }
    }
    else
    {
      v3 |= ((((1 << i) & 0x5AA5) >> i) ^ v4) << i;
    }
  }
  return v3 == 0x63B6;
}
int check2(unsigned __int16 a1)
{
  __int16 v1; // ax
  __int16 v3; // [rsp+8h] [rbp-Ch]
  __int16 v4; // [rsp+Ah] [rbp-Ah]
  int i; // [rsp+10h] [rbp-4h]

  v3 = 0;
  v4 = 1;
  for ( i = 0; i <= 15; ++i )
  {
    if ( ((unsigned __int16)v4 & a1) != 0 )
      v1 = 0;
    else
      v1 = v4;
    v3 |= v1;
    v4 *= 2;
  }
  return v3 == -13155;
}
int check3(unsigned __int16 a1)
{
  int i; // [rsp+Ch] [rbp-8h]
  int v4; // [rsp+10h] [rbp-4h]

  for ( i = 0; i <= 15; ++i )
  {
    v4 = a1 & 1;
    a1 >>= 1;
    if ( v4 )
      a1 ^= 0xB400u;
  }
  return a1 == 18718;
}
int check4(__int16 a1, char a2)
{  a2 = 55;
  return (((unsigned __int8)a1 << 8) | (unsigned __int8)((a2 + a1) ^ (a1>>8))) == 24546;
}

int check5(unsigned __int16 a1, char a2)
{

    return ((a1 << a2) | (a1 >> (16 - a2))) == 107808365;
}
int check6(unsigned __int16 a1)
{
  unsigned __int16 v2; // [rsp+Eh] [rbp-6h]
  int i; // [rsp+10h] [rbp-4h]

  v2 = 0;
  for ( i = 0; i <= 15; ++i )
    v2 |= (((int)a1 >> i) & 1) << (15 - i);
  return v2 == 64198;
}
int check7(__int16 a1)
{
  return a1 ^ 0xF00D;
}
int check8_1(unsigned __int16 a1, unsigned __int16 a2)
{
    a2 = 26887;
  return (unsigned __int16)((16 * (((((int)a1 >> 4) & 0xF) + (((int)a2 >> 4) & 0xF)) & 0xF)) | ((((HIBYTE(a1) & 0xF)
                                                                                               + (HIBYTE(a2) & 0xF)) & 0xF) << 8) | ((((a2 >> 12) * (a1 >> 12)) & 0xF) << 12) | ((a2 & 0xF) * (a1 & 0xF)) & 0xF)== 17509;
}
int check8_2(unsigned __int16 a1, unsigned __int16 a2)
{
    a2 = 37425;
  return (unsigned __int16)((16 * (((((int)a1 >> 4) & 0xF) + (((int)a2 >> 4) & 0xF)) & 0xF)) | ((((HIBYTE(a1) & 0xF)
                                                                                                + (HIBYTE(a2) & 0xF)) & 0xF) << 8) | ((((a2 >> 12) * (a1 >> 12)) & 0xF) << 12) | ((a2 & 0xF) * (a1 & 0xF)) & 0xF) == 28051;
}
int main(){ 
    int c = 0;
    for (unsigned int i =0;i<65536;i++){
        if (check7(i)){
            c+=1;
            // printf("%c%c\n",i,i>>8);
            // break;
        }
    }
    printf("%d",c);
    return 0;
}