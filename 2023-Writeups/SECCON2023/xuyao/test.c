int __fastcall tnls(__int64 a1, __int64 a2, __int64 a3, unsigned __int64 a4)
{
  unsigned int v6; // ebp
  unsigned __int64 v7; // r15
  char *v8; // rax
  char *v9; // rdi
  int i; // ecx
  int v11; // eax
  unsigned int v13; // [rsp+Ch] [rbp-3Ch]

  v6 = a4;
  v13 = a4;
  v7 = HIDWORD(a4);
  v8 = (char *)mmap(0LL, 0x1000uLL, 3, 34, -1, 0LL);
  if ( v8 == (char *)-1LL )
    exit(1);
  v9 = v8;
  for ( i = 0; i != 32; i += 8 )
  {
    if ( HIDWORD(a2) != 4 )
      BUG();
    v11 = sbox[(unsigned __int8)(*(_DWORD *)(a1 + (unsigned int)a2) >> i)] << i;
    *(_DWORD *)(v9 + 1) = v11;
    if ( (_DWORD)v7 != 4 )
      BUG();
    *(_DWORD *)(a3 + v13) |= v11;
  }
  return munmap(v9, 0x1000uLL);
}