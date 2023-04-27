
void FUN_00101070(void)

{
  long lVar1;
  int i;
  long j;
  undefined *puVar4;
  int u;
  int *inpuStackedBuff;
  int *piVar7;
  int *piVar8;
  int w;
  long n;
  int k;
  undefined4 *consBuf;
  int v;
  int m;
  undefined *buf2;
  int l;
  long lVar17;
  long x;
  int check;
  long in_FS_OFFSET;
  undefined4 auStack732808 [183190];
  
  lVar1 = *(long *)(in_FS_OFFSET + 0x28);
  inpuStackedBuff = (int *)&stack0xffffffffffde6e48;
  getc(stdin);
  piVar7 = inpuStackedBuff;
  do {
    piVar8 = piVar7 + 1;
    i = getc(stdin);
    *piVar8 = i + *piVar7;
    piVar7 = piVar8;
  } while (piVar8 != (int *)&stack0xffffffffffde74f4);
  puVar4 = &stack0xffffffffffde74f8;
  do {
    consBuf = &DAT_00104040;
    i = 0;
    buf2 = puVar4;
    do {
      j = 0;
      do {
        while (i == (int)j) {
          *(int *)(buf2 + j * 4) = consBuf[j] - *inpuStackedBuff;
          j = j + 1;
          if (j == 0x1ac) goto continueLOOP;
        }
        (buf2 + j * 4) = consBuf[j];
        j = j + 1;
      } while (j != 0x1ac);
    continueLOOP:
      i = i + 1;
      buf2 = buf2 + 0x6b0;
      consBuf = consBuf + 0x1ac;
    } while (i != 0x1ac);
                                //reversed
    check = 0;
    j = 0;
    i = 1;
    do {
      k = 0;
      l = 0;
      m = 0;
      buf2 = puVar4;
      do {
        n = 0;
        do {
          if (((int)n != (int)j) && (m != 0)) {
            k = k + 1;
            (&stack0xffffffffffe9a338 + k * 4 + (long)l * 0x6b0) =
                 (buf2 + n * 4);
            if (k == 0x1ab) {
              l = l + 1;
              k = 0;
            }
          }
          n = n + 1;
        } while (n != 0x1ac);
        m = m + 1;
        buf2 = buf2 + 0x6b0;
      } while (m != 0x1ac);
      m = 0;
      n = 0;
      l = 1;
      k = *(int *)(puVar4 + j * 4) * i;
      do {
        u = 0;
        v = 0;
        w = 0;
        buf2 = &stack0xffffffffffe9a338;
        do {
          x = 0;
          do {
            if (((int)x != (int)n) && (w != 0)) {
              lVar17 = (long)u;
              u = u + 1;
              auStack732808[(long)v * 0x1ac + lVar17] = (buf2 + x * 4);
              if (u == 0x1aa) {
                v = v + 1;
                u = 0;
              }
            }
            x = x + 1;
          } while (x != 0x1ab);
          w = w + 1;
          buf2 = buf2 + 0x6b0;
        } while (w != 0x1ab);
        x = n * 4;
        n = n + 1;
        w = *(int *)(&stack0xffffffffffe9a338 + x) * l;
        l = -l;
        u = FUN_00101b50();
        m = m + w * u;
      } while (n != 0x1ab);
      i = -i;
      j = j + 1;
      check = check + k * m;
    } while (j != 0x1ac);
    
    if (check != 0) {
      printf("Buried in the sands...");
      exit(1);
    }
    inpuStackedBuff = inpuStackedBuff + 1;
    if (inpuStackedBuff == (int *)&stack0xffffffffffde74f8) {
      printf("You made it to the top!");
      return;
    }
  } while( 1 );
}

