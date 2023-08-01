__int64 __fastcall verify(_BYTE *inp)
{
  char v2; // [rsp+Fh] [rbp-29h]
  int v3; // [rsp+10h] [rbp-28h]
  int ii; // [rsp+14h] [rbp-24h]
  int count1; // [rsp+18h] [rbp-20h]
  int n; // [rsp+1Ch] [rbp-1Ch]
  int e; // [rsp+20h] [rbp-18h]
  int m; // [rsp+24h] [rbp-14h]
  int line_idx; // [rsp+28h] [rbp-10h]
  int k; // [rsp+2Ch] [rbp-Ch]
  int j; // [rsp+30h] [rbp-8h]
  int i; // [rsp+34h] [rbp-4h]

  for ( i = 0; i <= 95; ++i )
  {
    for ( j = 0; j <= 95; ++j )
    {
      v2 = inp[96 * j + i];
      if ( v2 != '.' && v2 != ' ' )             // these value must be '.' or ' '
        return 0LL;
    }
  }
  for ( k = 0; k <= 95; ++k )
  {
    line_idx = 0;
    for ( m = 0; m <= 95 && rows[96 * k + m] != -1; ++m )
    {
      while ( line_idx <= 95 && inp[96 * k + line_idx] == ' ' )// skip for `space`
        ++line_idx;
      if ( line_idx == 96 )                     // 
                                                // 
        return 0LL;
      e = rows[96 * k + m] - 1;                 // get item on a line
      ++line_idx;
      while ( e && line_idx <= 95 && inp[96 * k + line_idx] == '.' )
      {
        --e;
        ++line_idx;
      }
      if ( e )
        return 0LL;
      if ( line_idx <= 95 && inp[96 * k + line_idx] == '.' )
        return 0LL;
    }
  }
  for ( n = 0; n <= 95; ++n )                   // correspoding to column
  {
    count1 = 0;
    for ( ii = 0; ii <= 95 && cols[96 * n + ii] != -1; ++ii )
    {
      while ( count1 <= 95 && inp[96 * count1 + n] == 32 )
        ++count1;
      if ( count1 == 96 )
        return 0LL;
      v3 = cols[96 * n + ii] - 1;
      ++count1;
      while ( v3 && count1 <= 95 && inp[96 * count1 + n] == 46 )
      {
        --v3;
        ++count1;
      }
      if ( v3 )
        return 0LL;
      if ( count1 <= 95 && inp[96 * count1 + n] == 46 )
        return 0LL;
    }
  }
  return 1LL;
}