There are 3 challenge that I solved in my category: Reverse engineering

# Easy risky
 * Script solve in `easy_risky`

Simple xor cipher, find the right ciphertext and xor back to get flag.

# Dadci

```c
__int64 __fastcall main(int a1, char **a2, char **a3)
{
  FILE *flagtxt; // rax
  FILE *v4; // rbp
  __int64 i; // rbx
  char v6; // al
  char *also_flag_buf; // rdx
  char v8; // al
  char *v9; // rcx
  int qrcode_size; // eax
  char *v12; // r13
  int v13; // r15d
  __int64 k; // rbx
  void *v15; // rax
  unsigned int v16; // r14d
  void **v17; // rbp
  __int64 m; // r13
  __int64 v19; // rdx
  bool v20; // zf
  _WORD *v21; // rax
  const char *v22; // rax
  void **v23; // r12
  const char *triangle_; // rbx
  char *v25; // r15
  char *v26; // rax
  char *v27; // rax
  char *v28; // rax
  char **v29; // rbp
  const char **trigangle_line; // rbx
  const char *triangle_line_; // r14
  size_t v32; // r15
  char *out; // r12
  __int64 idx; // rax
  char tri_byte; // dl
  char v36; // al
  char *v37; // rdx
  char *mm; // rsi
  size_t v39; // rbp
  char *v40; // rax
  char *v41; // r14
  FILE *v42; // r13
  const char *v43; // r15
  unsigned __int64 v44; // rbp
  const char *v45; // rsi
  char v46; // al
  void **v47; // rbp
  void *v48; // rdi
  void **v49; // rbx
  void *v50; // rdi
  __int64 v51; // r15
  unsigned __int64 v52; // rcx
  __int64 kk; // rbx
  void *v54; // rdi
  void **ii; // rbx
  void *v56; // rdi
  void **v57; // rbx
  void *v58; // rdi
  void **v59; // rbp
  void **v60; // rbx
  void *v61; // rdi
  void **v62; // rbp
  void *v63; // rdi
  void **v64; // rbx
  void *v65; // rdi
  __int64 jj; // rbx
  void *v67; // rdi
  __int64 n; // rbx
  void *v69; // rdi
  __int64 v70; // rbx
  void *v71; // rdi
  __int64 v72; // rbx
  void *v73; // rdi
  char *qr_line; // [rsp+8h] [rbp-2F90h]
  int dest; // [rsp+10h] [rbp-2F88h]
  char *final_; // [rsp+10h] [rbp-2F88h]
  int v77; // [rsp+18h] [rbp-2F80h]
  int v78; // [rsp+20h] [rbp-2F78h]
  const char **v79; // [rsp+20h] [rbp-2F78h]
  void **qr_text_image; // [rsp+28h] [rbp-2F70h]
  __int64 size; // [rsp+30h] [rbp-2F68h]
  char *src; // [rsp+38h] [rbp-2F60h]
  char *triangle; // [rsp+38h] [rbp-2F60h]
  void *ptr; // [rsp+40h] [rbp-2F58h]
  void **v85; // [rsp+48h] [rbp-2F50h]
  void **v86; // [rsp+58h] [rbp-2F40h]
  char nptr[9]; // [rsp+67h] [rbp-2F31h] BYREF
  char flag[256]; // [rsp+70h] [rbp-2F28h] BYREF
  char buf0[3912]; // [rsp+170h] [rbp-2E28h] BYREF
  int v90; // [rsp+10B8h] [rbp-1EE0h]
  __int16 v91; // [rsp+10BCh] [rbp-1EDCh]
  char buf2[3912]; // [rsp+10C0h] [rbp-1ED8h] BYREF
  int v93; // [rsp+2008h] [rbp-F90h]
  __int16 v94; // [rsp+200Ch] [rbp-F8Ch]
  char buf1[3912]; // [rsp+2010h] [rbp-F88h] BYREF
  int v96; // [rsp+2F58h] [rbp-40h]
  __int16 j; // [rsp+2F5Ch] [rbp-3Ch]

  flagtxt = fopen("flag.txt", "r");
  if ( !flagtxt )
    return 1LL;
  v4 = flagtxt;
  for ( i = 0LL; ; ++i )
  {
    v6 = fgetc(v4);
    if ( v6 == -1 || v6 == 10 || (int)i > 254 )
      break;
    flag[i] = v6;
  }
  flag[(int)i] = 0;
  fclose(v4);
  also_flag_buf = buf0;
  memset(buf0, 0, sizeof(buf0));
  v91 = 0;
  v90 = 0;
  memset(buf2, 0, sizeof(buf2));
  v93 = 0;
  v94 = 0;
  memset(buf1, 0, sizeof(buf1));
  v8 = flag[0];
  v9 = flag;
  v96 = 0;
  for ( j = 0; *v9; v8 = *v9 )
  {
    ++v9;
    *also_flag_buf++ = v8;
  }
  if ( !(unsigned __int8)sub_55B69E0FB0D0(buf0, buf1, buf2, 0, 1, 40, 0xFFFFFFFF, 1) )
    return 1LL;
  qrcode_size = Check_result((unsigned __int8 *)buf2);
  v12 = (char *)qrcode_size;
  v77 = qrcode_size;
  v78 = qrcode_size;
  v13 = 2 * qrcode_size + 1;
  dest = v13;
  size = qrcode_size;
  qr_text_image = (void **)malloc(size * 8);
  if ( !qr_text_image )
    return 1LL;
  if ( (int)v12 <= 0 )
    goto LABEL_25;
  for ( k = 0LL; ; ++k )                        // set multiple bytes'0'
  {
    v15 = malloc(v13);
    qr_text_image[k] = v15;
    if ( !v15 )
    {
      v59 = qr_text_image;
      v60 = &qr_text_image[k];
      while ( v59 != v60 )
      {
        v61 = *v59++;
        free(v61);
      }
      free(qr_text_image);
      return 1LL;
    }
    memset(v15, 48, v13);
    if ( v12 == (char *)(k + 1) )
      break;
  }
  src = v12;
  v16 = 0;
  v17 = qr_text_image;
  do
  {
    for ( m = 0LL; ; m = v19 )
    {
      v20 = (unsigned __int8)sub_55B69E0FA390((unsigned __int8 *)buf2, m, v16) == 0;
      v21 = *v17;
      if ( !v20 )
        break;
      v19 = m + 1;
      v21[m] = '00';
      if ( m == k )
        goto LABEL_23;
LABEL_20:
      ;
    }
    v21[m] = '11';
    v19 = m + 1;
    if ( m != k )
      goto LABEL_20;                            // convert from flag to QR image, '1' or '0', size 42x42
LABEL_23:
    ++v16;
    ++v17;
    LOBYTE(v21[v78]) = 0;
  }
  while ( v77 != v16 );
  v12 = src;
LABEL_25:
  v22 = (const char *)malloc(2 * v77 * (v77 + 1));
  triangle = (char *)v22;
  if ( !v22 )
    return 1LL;
  sub_55B69E0F4AC0(v77, v22);
  v23 = (void **)malloc(size * 8);
  if ( !v23 )
  {
    for ( n = 0LL; v77 > (int)n; ++n )
    {
      v69 = qr_text_image[n];
      free(v69);
    }
    free(qr_text_image);
    free(triangle);
    return 1LL;
  }
  if ( v77 > 0 )
  {
    triangle_ = triangle;
    v25 = 0LL;
    do
    {
      v26 = (char *)malloc(dest);
      v23[(_QWORD)v25] = v26;
      if ( !v26 )
      {
        for ( ii = v23; ii != &v23[(_QWORD)v25]; ++ii )
        {
          v56 = *ii;
          free(v56);
        }
        v57 = qr_text_image;
        do
        {
          v58 = *v57++;
          free(v58);
        }
        while ( &qr_text_image[size] != v57 );  // cpy triangle
        goto LABEL_75;
      }
      ++v25;
      v27 = strncpy(v26, triangle_, dest);
      triangle_ += dest;
      v27[v78 * 2] = 0;
    }
    while ( v12 != v25 );
    ptr = malloc(size * 8);
    if ( ptr )
      goto LABEL_32;
    for ( jj = 0LL; v77 > (int)jj; ++jj )
    {
      v67 = qr_text_image[jj];
      free(v67);
    }
LABEL_72:
    for ( kk = 0LL; v77 > (int)kk; ++kk )
    {
      v54 = v23[kk];
      free(v54);
    }
LABEL_75:
    free(qr_text_image);
    free(v23);
    free(triangle);
    return 1LL;
  }
  ptr = malloc(size * 8);
  if ( !ptr )
    goto LABEL_72;
LABEL_32:
  v28 = (char *)malloc(v77 * dest + 1LL);
  final_ = v28;
  if ( !v28 )
    return 1LL;
  *v28 = 0;
  if ( v77 > 0 )
  {
    v29 = (char **)qr_text_image;
    v85 = v23;
    trigangle_line = (const char **)v23;
    v86 = v23;
    v79 = (const char **)&v23[size];
    while ( 1 )
    {
      triangle_line_ = *trigangle_line;
      v32 = strlen(*trigangle_line);
      qr_line = *v29;
      out = (char *)malloc(v32 + 1);
      if ( !out )
        break;
      idx = 0LL;
      if ( v32 )
      {
        do
        {
          while ( 1 )
          {
            tri_byte = triangle_line_[idx];
            if ( tri_byte != '0' )
              break;
            out[idx] = (qr_line[idx] != '0') + '0';
            if ( v32 == ++idx )
              goto LABEL_44;
          }
          if ( tri_byte == '1' )
          {
            if ( qr_line[idx] == '1' )
              tri_byte = '0';
          }
          else
          {
            tri_byte = '1';
          }
          out[idx++] = tri_byte;
        }
        while ( v32 != idx );
      }
LABEL_44:
      out[v32] = 0;
      v36 = *out;
      v37 = out;
      for ( mm = out; v36; ++v37 )
      {
        while ( v36 != 10 )
        {
          ++v37;
          *mm++ = v36;
          v36 = *v37;
          if ( !*v37 )
            goto LABEL_47;
        }
        v36 = v37[1];
      }
LABEL_47:
      *mm = 0;
      ++trigangle_line;
      ++v29;
      strcat(final_, out);
      free(out);
      if ( v79 == trigangle_line )
      {
        v23 = v85;
        goto LABEL_49;
      }
    }
    v23 = v85;
    free(final_);
    v62 = qr_text_image;
    do
    {
      v63 = *v62++;
      free(v63);
    }
    while ( &qr_text_image[size] != v62 );
    free(qr_text_image);
    v64 = v86;
    do
    {
      v65 = *v64++;
      free(v65);
    }
    while ( v79 != (const char **)v64 );
    goto LABEL_90;
  }
LABEL_49:
  v39 = strlen(final_);
  if ( (v39 & 7) == 0 )
  {
    v40 = (char *)malloc(v39 + 1);
    v41 = v40;
    if ( v40 )
    {
      memcpy(v40, final_, v39 + 1);
      v42 = fopen("flag.enc", "wb");
      if ( v42 )
      {
        if ( v39 )
        {
LABEL_53:
          v43 = v41;
          v44 = (unsigned __int64)&v41[((v39 - 1) & 0xFFFFFFFFFFFFFFF8LL) + 8];
          do
          {
            v45 = v43;
            v43 += 8;
            strncpy(nptr, v45, 8uLL);
            nptr[8] = 0;
            v46 = strtol(nptr, 0LL, 2);
            fputc(v46, v42);
          }
          while ( (const char *)v44 != v43 );
        }
        fclose(v42);
      }
      goto LABEL_56;
    }
LABEL_99:
    v70 = 0LL;
    free(final_);
    while ( v77 > (int)v70 )
    {
      v71 = qr_text_image[v70++];
      free(v71);
    }
    v72 = 0LL;
    free(qr_text_image);
    while ( v77 > (int)v72 )
    {
      v73 = v23[v72++];
      free(v73);
    }
LABEL_90:
    free(v23);
    free(triangle);
    free(ptr);
    return 1LL;
  }
  v51 = 8 - (unsigned int)(v39 & 7);
  v41 = (char *)malloc(v39 + v51 + 1);
  if ( !v41 )
    goto LABEL_99;
  v52 = 1LL;
  if ( (int)v51 > 0 )
    v52 = 8 - (unsigned int)(v39 & 7);
  memset(v41, 48, v52);
  memcpy(&v41[v51], final_, v39 + 1);
  v42 = fopen("flag.enc", "wb");
  if ( v42 )
  {
    v39 += v51;
    goto LABEL_53;
  }
LABEL_56:
  free(v41);
  free(final_);
  if ( v77 <= 0 )
  {
    free(qr_text_image);
  }
  else
  {
    v47 = qr_text_image;
    do
    {
      v48 = *v47++;
      free(v48);
    }
    while ( &qr_text_image[size] != v47 );
    v49 = v23;
    free(qr_text_image);
    do
    {
      v50 = *v49++;
      free(v50);
    }
    while ( &v23[size] != v49 );
  }
  free(v23);
  free(triangle);
  free(ptr);
  return 0LL;
}
```

This program convert from flag to QR image, '1' or '0', size 42x42, then copy and filter as triangle.

After that, write back to flag.enc.

Our job is recover this QR -> flag.

Solve script in `dadci/dadci.py`

# Solron

```c
__int64 __fastcall magic(char *src, _QWORD *rand_nums)
{
  char *v3; // x2
  unsigned __int64 number; // x3
  __int64 i; // x1
  unsigned __int8 *v6; // x0
  _QWORD *v7; // x3
  __int64 v8; // x4
  int64x2_t v9; // q0
  char *v10; // x0
  int64x2_t v11; // t1
  unsigned __int8 dest[8]; // [xsp+28h] [xbp+28h] BYREF
  unsigned __int8 bin_str[40]; // [xsp+30h] [xbp+30h] BYREF
  char v15; // [xsp+58h] [xbp+58h] BYREF
  _QWORD out[40]; // [xsp+60h] [xbp+60h] BYREF
  char v17; // [xsp+1A0h] [xbp+1A0h] BYREF

  strncpy((char *)dest, src, 5uLL);
  dest[5] = 0;
  v3 = (char *)bin_str;                         // bytes to number
  number = dest[4] | ((dest[3] | ((dest[2] | ((dest[1] | ((unsigned __int64)dest[0] << 8)) << 8)) << 8)) << 8);
  do
  {
    *v3 = ((number >> ((unsigned __int8)bin_str + 39 - (unsigned __int8)v3)) & 1) + '0';// convert to binary string
    ++v3;
  }
  while ( &v15 != v3 );
  i = 1LL;
  v15 = 0;
  do
  {
    v6 = &bin_str[i];                           // out[i-1] = rand_nums[i-1]*bin_str[i-1]
    v7 = &out[i];                               // multiple
    v8 = rand_nums[i++ - 1];
    *(v7 - 1) = (*(v6 - 1) - '0') * v8;
  }
  while ( i != 41 );
  v9 = 0uLL;
  v10 = (char *)out;
  do
  {
    v11 = *(int64x2_t *)v10;                    // sum
    v10 += 16;
    v9 = vaddq_s64(v9, v11);
  }
  while ( &v17 != v10 );
  return vaddvq_s64(v9);
}
```

Solron is an interested in challenge that we reverse the program to find sequences of random number, then bruteforce to find out the flag.

Solve script and details in `solron/solron.py`