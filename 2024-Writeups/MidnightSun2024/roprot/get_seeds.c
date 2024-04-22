#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int16_t check_sum(uint32_t a1)
{
  uint16_t checksum; // [rsp+Ch] [rbp-18h]
  int16_t v4; // [rsp+Eh] [rbp-16h]
  int j; // [rsp+10h] [rbp-14h]
  uint64_t i; // [rsp+14h] [rbp-10h]
  uint8_t *v7; // [rsp+1Ch] [rbp-8h]

  checksum = -1;
  v4 = 4129;
  v7 = (uint8_t *)&a1;
  for ( i = 0LL; i <= 3; ++i )
  {
    checksum ^= v7[i] << 8;
    for ( j = 0; j <= 7; ++j )
    {
      if ( (checksum & 0x8000u) == 0 )
        checksum *= 2;
      else
        checksum = (2 * checksum) ^ v4;
    }
  }
  return checksum;
}
int main(){
    for (uint32_t i = 0;i < 4294967295;i++){
        if (check_sum(i)==0x2cc2){
            printf("%u\n",i);
        }
    }
    return 0;
}