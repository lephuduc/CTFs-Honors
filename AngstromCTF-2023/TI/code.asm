000000     F3            di 
000001     ED7E          rsmix 
000003     5BC34F0E00    jp.lil $000E4F
000008     F3            di 
000009     ED7E          rsmix 
00000B     5BC3F51500    jp.lil $0015F5
000010     F3            di 
000011     ED7E          rsmix 
000013     5BC3100102    jp.lil $020110
000018     F3            di 
000019     ED7E          rsmix 
00001B     5BC3140102    jp.lil $020114
000020     F3            di 
000021     ED7E          rsmix 
000023     5BC3180102    jp.lil $020118
000028     F3            di 
000029     ED7E          rsmix 
00002B     5BC31C0102    jp.lil $02011C
000030     F3            di 
000031     ED7E          rsmix 
000033     5BC3200102    jp.lil $020120
000038     08            ex af, af
000039     D9            exx 
00003A     DDE5          push ix
00003C     FDE5          push iy
00003E     FD218000      ld iy, $0080
000042     D0            ret nc
000043     C35406        jp $0654
000046     00            nop 
000047     E5            push hl
000048     C5            push bc
000049     CDC606        call $06C6
00004C     00            nop 
00004D     C1            pop bc
00004E     E1            pop hl
00004F     C20C14        jp nz, $140C
000052     00            nop 
000053     F1            pop af
000054     C3A820        jp $20A8
000057     02            ld (bc), a
000058     FF            rst $0038
000059     FF            rst $0038
00005A     FF            rst $0038
00005B     FF            rst $0038
00005C     FF            rst $0038
00005D     FF            rst $0038
00005E     FF            rst $0038
00005F     FF            rst $0038
000060     FF            rst $0038
000061     FF            rst $0038
000062     FF            rst $0038
000063     FF            rst $0038
000064     FF            rst $0038
000065     FF            rst $0038
000066     F5            push af
000067     ED383D        in0 a, ($3D)
00006A     E603          and a, $03
00006C     ED393E        out0 ($3E), a
00006F     28D6          jr z, $0047
000071     F1            pop af
000072     C3F515        jp $15F5
000075     00            nop 
000076     FF            rst $0038
000077     FF            rst $0038
000078     FF            rst $0038
000079     FF            rst $0038
00007A     FF            rst $0038
00007B     FF            rst $0038
00007C     FF            rst $0038
00007D     FF            rst $0038
00007E     FF            rst $0038
00007F     FF            rst $0038
000080     C33F0E        jp $0E3F
000083     00            nop 
000084     C34C0E        jp $0E4C
000087     00            nop 
000088     C34F37        jp $374F
00008B     00            nop 
00008C     C3440E        jp $0E44
00008F     00            nop 
000090     C3470E        jp $0E47
000093     00            nop 
000094     C37022        jp $2270
000097     00            nop 
000098     C3E923        jp $23E9
00009B     00            nop 
00009C     C38A22        jp $228A
00009F     00            nop 
0000A0     C3AD22        jp $22AD
0000A3     00            nop 
0000A4     C3DE22        jp $22DE
0000A7     00            nop 
0000A8     C3FE22        jp $22FE
0000AB     00            nop 
0000AC     C33023        jp $2330
0000AF     00            nop 
0000B0     C35523        jp $2355
0000B3     00            nop 
0000B4     C39B23        jp $239B
0000B7     00            nop 
0000B8     C3C823        jp $23C8
0000BB     00            nop 
0000BC     C31624        jp $2416
0000BF     00            nop 
0000C0     C34124        jp $2441
0000C3     00            nop 
0000C4     C36624        jp $2466
0000C7     00            nop 
0000C8     C38324        jp $2483
0000CB     00            nop 
0000CC     C39E24        jp $249E
0000CF     00            nop 
0000D0     C3B824        jp $24B8
0000D3     00            nop 
0000D4     C3DF24        jp $24DF
0000D7     00            nop 
0000D8     C3F424        jp $24F4
0000DB     00            nop 
0000DC     C32525        jp $2525
0000DF     00            nop 
0000E0     C35A25        jp $255A
0000E3     00            nop 
0000E4     C3A125        jp $25A1
0000E7     00            nop 
0000E8     C3D225        jp $25D2
0000EB     00            nop 
0000EC     C3F525        jp $25F5
0000EF     00            nop 
0000F0     C32526        jp $2625
0000F3     00            nop 
0000F4     C35226        jp $2652
0000F7     00            nop 
0000F8     C3C723        jp $23C7
0000FB     00            nop 
0000FC     C37E20        jp $207E
0000FF     00            nop 
000100     C37520        jp $2075
000103     00            nop 
000104     C36B20        jp $206B
000107     00            nop 
000108     C38A20        jp $208A
00010B     00            nop 
00010C     C39620        jp $2096
00010F     00            nop 
000110     C3051B        jp $1B05
000113     00            nop 
000114     C3311B        jp $1B31
000117     00            nop 
000118     C36B1B        jp $1B6B
00011B     00            nop 
00011C     C3A81B        jp $1BA8
00011F     00            nop 
000120     C3DB1B        jp $1BDB
000123     00            nop 
000124     C3111C        jp $1C11
000127     00            nop 
000128     C3471C        jp $1C47
00012B     00            nop 
00012C     C38D1C        jp $1C8D
00012F     00            nop 
000130     C3801C        jp $1C80
000133     00            nop 
000134     C39D1C        jp $1C9D
000137     00            nop 
000138     C3B81C        jp $1CB8
00013B     00            nop 
00013C     C3C41C        jp $1CC4
00013F     00            nop 
000140     C3FD1C        jp $1CFD
000143     00            nop 
000144     C3071D        jp $1D07
000147     00            nop 
000148     C31E1D        jp $1D1E
00014B     00            nop 
00014C     C32A1D        jp $1D2A
00014F     00            nop 
000150     C3361D        jp $1D36
000153     00            nop 
000154     C3421D        jp $1D42
000157     00            nop 
000158     C3421D        jp $1D42
00015B     00            nop 
00015C     C37E1D        jp $1D7E
00015F     00            nop 
000160     C3801D        jp $1D80
000163     00            nop 
000164     C3891D        jp $1D89
000167     00            nop 
000168     C3931D        jp $1D93
00016B     00            nop 
00016C     C3AE1D        jp $1DAE
00016F     00            nop 
000170     C3E61D        jp $1DE6
000173     00            nop 
000174     C3F71D        jp $1DF7
000177     00            nop 
000178     C3EF1D        jp $1DEF
00017B     00            nop 
00017C     C3091E        jp $1E09
00017F     00            nop 
000180     C3011E        jp $1E01
000183     00            nop 
000184     C32E1E        jp $1E2E
000187     00            nop 
000188     C3261E        jp $1E26
00018B     00            nop 
00018C     C34B1E        jp $1E4B
00018F     00            nop 
000190     C3571E        jp $1E57
000193     00            nop 
000194     C3631E        jp $1E63
000197     00            nop 
000198     C36A1E        jp $1E6A
00019B     00            nop 
00019C     C3941E        jp $1E94
00019F     00            nop 
0001A0     C3851E        jp $1E85
0001A3     00            nop 
0001A4     C39A1E        jp $1E9A
0001A7     00            nop 
0001A8     C3A31E        jp $1EA3
0001AB     00            nop 
0001AC     C3A31E        jp $1EA3
0001AF     00            nop 
0001B0     C3B91E        jp $1EB9
0001B3     00            nop 
0001B4     C3CD1E        jp $1ECD
0001B7     00            nop 
0001B8     C3FC1E        jp $1EFC
0001BB     00            nop 
0001BC     C30E1F        jp $1F0E
0001BF     00            nop 
0001C0     C3321F        jp $1F32
0001C3     00            nop 
0001C4     C3411F        jp $1F41
0001C7     00            nop 
0001C8     C3501F        jp $1F50
0001CB     00            nop 
0001CC     C3501F        jp $1F50
0001CF     00            nop 
0001D0     C3BD1F        jp $1FBD
0001D3     00            nop 
0001D4     C3CA1F        jp $1FCA
0001D7     00            nop 
0001D8     C3D41F        jp $1FD4
0001DB     00            nop 
0001DC     C3DD1F        jp $1FDD
0001DF     00            nop 
0001E0     C30820        jp $2008
0001E3     00            nop 
0001E4     C31820        jp $2018
0001E7     00            nop 
0001E8     C32720        jp $2027
0001EB     00            nop 
0001EC     C34920        jp $2049
0001EF     00            nop 
0001F0     C3A220        jp $20A2
0001F3     00            nop 
0001F4     C3B120        jp $20B1
0001F7     00            nop 
0001F8     C3C020        jp $20C0
0001FB     00            nop 
0001FC     C3CC20        jp $20CC
0001FF     00            nop 
000200     C3D520        jp $20D5
000203     00            nop 
000204     C3DE20        jp $20DE
000207     00            nop 
000208     C3EB20        jp $20EB
00020B     00            nop 
00020C     C30521        jp $2105
00020F     00            nop 
000210     C31921        jp $2119
000213     00            nop 
000214     C35121        jp $2151
000217     00            nop 
000218     C38C21        jp $218C
00021B     00            nop 
00021C     C39B21        jp $219B
00021F     00            nop 
000220     C3A721        jp $21A7
000223     00            nop 
000224     C3B321        jp $21B3
000227     00            nop 
000228     C3B321        jp $21B3
00022B     00            nop 
00022C     C3801D        jp $1D80
00022F     00            nop 
000230     C3891D        jp $1D89
000233     00            nop 
000234     C3C821        jp $21C8
000237     00            nop 
000238     C3D121        jp $21D1
00023B     00            nop 
00023C     C3EB21        jp $21EB
00023F     00            nop 
000240     C30722        jp $2207
000243     00            nop 
000244     C3FF21        jp $21FF
000247     00            nop 
000248     C31922        jp $2219
00024B     00            nop 
00024C     C31122        jp $2211
00024F     00            nop 
000250     C32E22        jp $222E
000253     00            nop 
000254     C32622        jp $2226
000257     00            nop 
000258     C33B22        jp $223B
00025B     00            nop 
00025C     C34A22        jp $224A
00025F     00            nop 
000260     C35922        jp $2259
000263     00            nop 
000264     C36122        jp $2261
000267     00            nop 
000268     C36722        jp $2267
00026B     00            nop 
00026C     C3E42F        jp $2FE4
00026F     00            nop 
000270     C35F30        jp $305F
000273     00            nop 
000274     C3BE30        jp $30BE
000277     00            nop 
000278     C3DB30        jp $30DB
00027B     00            nop 
00027C     C35931        jp $3159
00027F     00            nop 
000280     C30333        jp $3303
000283     00            nop 
000284     C3FA31        jp $31FA
000287     00            nop 
000288     C32132        jp $3221
00028B     00            nop 
00028C     C3E132        jp $32E1
00028F     00            nop 
000290     C3F232        jp $32F2
000293     00            nop 
000294     C35B30        jp $305B
000297     00            nop 
000298     C30E33        jp $330E
00029B     00            nop 
00029C     C38133        jp $3381
00029F     00            nop 
0002A0     C39F33        jp $339F
0002A3     00            nop 
0002A4     C3E333        jp $33E3
0002A7     00            nop 
0002A8     C3B033        jp $33B0
0002AB     00            nop 
0002AC     C32734        jp $3427
0002AF     00            nop 
0002B0     C3CE33        jp $33CE
0002B3     00            nop 
0002B4     C36334        jp $3463
0002B7     00            nop 
0002B8     C39234        jp $3492
0002BB     00            nop 
0002BC     C3D734        jp $34D7
0002BF     00            nop 
0002C0     C3B334        jp $34B3
0002C3     00            nop 
0002C4     C3BD34        jp $34BD
0002C7     00            nop 
0002C8     C3FB34        jp $34FB
0002CB     00            nop 
0002CC     C37F35        jp $357F
0002CF     00            nop 
0002D0     C3EA0D        jp $0DEA
0002D3     00            nop 
0002D4     C3360D        jp $0D36
0002D7     00            nop 
0002D8     C38E0C        jp $0C8E
0002DB     00            nop 
0002DC     C37E0C        jp $0C7E
0002DF     00            nop 
0002E0     C3460D        jp $0D46
0002E3     00            nop 
0002E4     C3360D        jp $0D36
0002E7     00            nop 
0002E8     C3AA18        jp $18AA
0002EB     00            nop 
0002EC     C3C718        jp $18C7
0002EF     00            nop 
0002F0     C3740B        jp $0B74
0002F3     00            nop 
0002F4     C3A50B        jp $0BA5
0002F7     00            nop 
0002F8     C38E0B        jp $0B8E
0002FB     00            nop 
0002FC     C3F40B        jp $0BF4
0002FF     00            nop 
000300     C3F40B        jp $0BF4
000303     00            nop 
000304     C3F40B        jp $0BF4
000307     00            nop 
000308     C3F616        jp $16F6
00030B     00            nop 
00030C     C34A17        jp $174A
00030F     00            nop 
000310     C35017        jp $1750
000313     00            nop 
000314     C32E17        jp $172E
000317     00            nop 
000318     C36C17        jp $176C
00031B     00            nop 
00031C     C31F17        jp $171F
00031F     00            nop 
000320     C3A017        jp $17A0
000323     00            nop 
000324     C3A117        jp $17A1
000327     00            nop 
000328     C37817        jp $1778
00032B     00            nop 
00032C     C37717        jp $1777
00032F     00            nop 
000330     C37F17        jp $177F
000333     00            nop 
000334     C32A18        jp $182A
000337     00            nop 
000338     C3E617        jp $17E6
00033B     00            nop 
00033C     C30818        jp $1808
00033F     00            nop 
000340     C3010E        jp $0E01
000343     00            nop 
000344     C35A5F        jp $5F5A
000347     00            nop 
000348     C3730A        jp $0A73
00034B     00            nop 
00034C     C3500A        jp $0A50
00034F     00            nop 
000350     C3560A        jp $0A56
000353     00            nop 
000354     C3870A        jp $0A87
000357     00            nop 
000358     C3FF0A        jp $0AFF
00035B     00            nop 
00035C     C35A64        jp $645A
00035F     00            nop 
000360     C39264        jp $6492
000363     00            nop 
000364     C33965        jp $6539
000367     00            nop 
000368     C3C25E        jp $5EC2
00036B     00            nop 
00036C     C3E95D        jp $5DE9
00036F     00            nop 
000370     C3BE5F        jp $5FBE
000373     00            nop 
000374     C3B456        jp $56B4
000377     00            nop 
000378     C30755        jp $5507
00037B     00            nop 
00037C     C3DA12        jp $12DA
00037F     00            nop 
000380     C37B38        jp $387B
000383     00            nop 
000384     C3CF56        jp $56CF
000387     00            nop 
000388     C3605C        jp $5C60
00038B     00            nop 
00038C     C37155        jp $5571
00038F     00            nop 
000390     C32055        jp $5520
000393     00            nop 
000394     C3260E        jp $0E26
000397     00            nop 
000398     C3FB12        jp $12FB
00039B     00            nop 
00039C     C3BD13        jp $13BD
00039F     00            nop 
0003A0     C3E613        jp $13E6
0003A3     00            nop 
0003A4     C3AB67        jp $67AB
0003A7     00            nop 
0003A8     C38F67        jp $678F
0003AB     00            nop 
0003AC     C30C14        jp $140C
0003AF     00            nop 
0003B0     C3FB35        jp $35FB
0003B3     00            nop 
0003B4     C3455C        jp $5C45
0003B7     00            nop 
0003B8     C3475C        jp $5C47
0003BB     00            nop 
0003BC     C31967        jp $6719
0003BF     00            nop 
0003C0     C3FD66        jp $66FD
0003C3     00            nop 
0003C4     C37467        jp $6774
0003C7     00            nop 
0003C8     C36667        jp $6766
0003CB     00            nop 
0003CC     C34137        jp $3741
0003CF     00            nop 
0003D0     C3B237        jp $37B2
0003D3     00            nop 
0003D4     C3B837        jp $37B8
0003D7     00            nop 
0003D8     C3A566        jp $66A5
0003DB     00            nop 
0003DC     C3A566        jp $66A5
0003DF     00            nop 
0003E0     C3920F        jp $0F92
0003E3     00            nop 
0003E4     C37B66        jp $667B
0003E7     00            nop 
0003E8     C38266        jp $6682
0003EB     00            nop 
0003EC     C30047        jp $4700
0003EF     01C371        ld bc, $71C3
0003F2     47            ld b, a
0003F3     01C321        ld bc, $21C3
0003F6     C1            pop bc
0003F7     00            nop 
0003F8     C3C94B        jp $4BC9
0003FB     01C349        ld bc, $49C3
0003FE     B1            or a, c
0003FF     00            nop 
000400     C36C1C        jp $1C6C
000403     01C3B6        ld bc, $B6C3
000406     BB            cp a, e
000407     00            nop 
000408     C3D9BA        jp $BAD9
00040B     00            nop 
00040C     C3A1BA        jp $BAA1
00040F     00            nop 
000410     C312BB        jp $BB12
000413     00            nop 
000414     C38DBB        jp $BB8D
000417     00            nop 
000418     C335BC        jp $BC35
00041B     00            nop 
00041C     C348E5        jp $E548
00041F     00            nop 
000420     C3B023        jp $23B0
000423     01C397        ld bc, $97C3
000426     37            scf 
000427     01C396        ld bc, $96C3
00042A     39            add hl, sp
00042B     01C38F        ld bc, $8FC3
00042E     3B            dec sp
00042F     01C3E3        ld bc, $E3C3
000432     35            dec (hl)
000433     01C342        ld bc, $42C3
000436     3E01          ld a, $01
000438     C3930E        jp $0E93
00043B     01C3F2        ld bc, $F2C3
00043E     A4            and a, h
00043F     00            nop 
000440     C33C44        jp $443C
000443     01C3B7        ld bc, $B7C3
000446     44            ld b, h
000447     01C37A        ld bc, $7AC3
00044A     A3            and a, e
00044B     00            nop 
00044C     C35948        jp $4859
00044F     01C3DC        ld bc, $DCC3
000452     48            ld c, b
000453     01C36A        ld bc, $6AC3
000456     4901C3EA      ld.lis bc, $EAC3
00045A     44            ld b, h
00045B     01C320        ld bc, $20C3
00045E     B0            or a, b
00045F     00            nop 
000460     C36D34        jp $346D
000463     01C367        ld bc, $67C3
000466     4B            ld c, e
000467     01C3BE        ld bc, $BEC3
00046A     3101C3        ld sp, $C301
00046D     51            ld d, c
00046E     45            ld b, l
00046F     01C373        ld bc, $73C3
000472     07            rlca 
000473     01C327        ld bc, $27C3
000476     2E01          ld l, $01
000478     C3B829        jp $29B8
00047B     01C3DF        ld bc, $DFC3
00047E     2A01C3        ld hl, ($C301)
000481     77            ld (hl), a
000482     2B            dec hl
000483     01C337        ld bc, $37C3
000486     2D            dec l
000487     01C34D        ld bc, $4DC3
00048A     2F            cpl 
00048B     01C364        ld bc, $64C3
00048E     2E01          ld l, $01
000490     C3D20C        jp $0CD2
000493     01C3C6        ld bc, $C6C3
000496     07            rlca 
000497     01C3E4        ld bc, $E4C3
00049A     4901C3A4      ld.lis bc, $A4C3
00049E     4A            ld c, d
00049F     01C3F4        ld bc, $F4C3
0004A2     EC00C3        call pe, $C300
0004A5     D6F2          sub a, $F2
0004A7     00            nop 
0004A8     C3981A        jp $1A98
0004AB     01C37A        ld bc, $7AC3
0004AE     B6            or a, (hl)
0004AF     00            nop 
0004B0     C3C4B9        jp $B9C4
0004B3     00            nop 
0004B4     C35CEB        jp $EB5C
0004B7     00            nop 
0004B8     C378F5        jp $F578
0004BB     00            nop 
0004BC     C303B4        jp $B403
0004BF     00            nop 
0004C0     C39CA1        jp $A19C
0004C3     00            nop 
0004C4     C34A19        jp $194A
0004C7     01C378        ld bc, $78C3
0004CA     1601          ld d, $01
0004CC     C3AF46        jp $46AF
0004CF     01C35A        ld bc, $5AC3
0004D2     46            ld b, (hl)
0004D3     01C3E8        ld bc, $E8C3
0004D6     0601          ld b, $01
0004D8     C35107        jp $0751
0004DB     01C326        ld bc, $26C3
0004DE     46            ld b, (hl)
0004DF     01C3AD        ld bc, $ADC3
0004E2     45            ld b, l
0004E3     01C3FC        ld bc, $FCC3
0004E6     45            ld b, l
0004E7     01C397        ld bc, $97C3
0004EA     45            ld b, l
0004EB     01C379        ld bc, $79C3
0004EE     45            ld b, l
0004EF     01C3BF        ld bc, $BFC3
0004F2     43            ld b, e
0004F3     01C3A9        ld bc, $A9C3
0004F6     42            ld b, d
0004F7     01C320        ld bc, $20C3
0004FA     43            ld b, e
0004FB     01C367        ld bc, $67C3
0004FE     42            ld b, d
0004FF     01C3C8        ld bc, $C8C3
000502     43            ld b, e
000503     01C350        ld bc, $50C3
000506     D9            exx 
000507     00            nop 
000508     C3F1D7        jp $D7F1
00050B     00            nop 
00050C     C35EE2        jp $E25E
00050F     00            nop 
000510     C36CDC        jp $DC6C
000513     00            nop 
000514     C3A4E4        jp $E4A4
000517     00            nop 
000518     C30A71        jp $710A
00051B     00            nop 
00051C     C32C71        jp $712C
00051F     00            nop 
000520     C37968        jp $6879
000523     00            nop 
000524     C36268        jp $6862
000527     00            nop 
000528     C3B568        jp $68B5
00052B     00            nop 
00052C     C39E68        jp $689E
00052F     00            nop 
000530     C3F168        jp $68F1
000533     00            nop 
000534     C3DA68        jp $68DA
000537     00            nop 
000538     C33E6B        jp $6B3E
00053B     00            nop 
00053C     C3FE6B        jp $6BFE
00053F     00            nop 
000540     C36E6B        jp $6B6E
000543     00            nop 
000544     C3106C        jp $6C10
000547     00            nop 
000548     C39E6B        jp $6B9E
00054B     00            nop 
00054C     C3226C        jp $6C22
00054F     00            nop 
000550     C3CE6B        jp $6BCE
000553     00            nop 
000554     C3346C        jp $6C34
000557     00            nop 
000558     C32A6A        jp $6A2A
00055B     00            nop 
00055C     C3EA6A        jp $6AEA
00055F     00            nop 
000560     C35A6A        jp $6A5A
000563     00            nop 
000564     C3FC6A        jp $6AFC
000567     00            nop 
000568     C38A6A        jp $6A8A
00056B     00            nop 
00056C     C30E6B        jp $6B0E
00056F     00            nop 
000570     C3BA6A        jp $6ABA
000573     00            nop 
000574     C3206B        jp $6B20
000577     00            nop 
000578     C3D306        jp $06D3
00057B     00            nop 
00057C     C38C66        jp $668C
00057F     00            nop 
000580     C37CF9        jp $F97C
000583     00            nop 
000584     C35C06        jp $065C
000587     01C3E3        ld bc, $E3C3
00058A     0601          ld b, $01
00058C     C3AC01        jp $01AC
00058F     01C3F0        ld bc, $F0C3
000592     0101C3        ld bc, $C301
000595     5D            ld e, l
000596     FE00          cp a, $00
000598     C308FF        jp $FF08
00059B     00            nop 
00059C     C3B800        jp $00B8
00059F     01C34F        ld bc, $4FC3
0005A2     FE00          cp a, $00
0005A4     C3A400        jp $00A4
0005A7     01C333        ld bc, $33C3
0005AA     FB            ei 
0005AB     00            nop 
0005AC     C3C2FB        jp $FBC2
0005AF     00            nop 
0005B0     C35FFB        jp $FB5F
0005B3     00            nop 
0005B4     C38AFB        jp $FB8A
0005B7     00            nop 
0005B8     C328FC        jp $FC28
0005BB     00            nop 
0005BC     C353FC        jp $FC53
0005BF     00            nop 
0005C0     C32002        jp $0220
0005C3     01C347        ld bc, $47C3
0005C6     02            ld (bc), a
0005C7     01C3DE        ld bc, $DEC3
0005CA     FE00          cp a, $00
0005CC     C36573        jp $7365
0005CF     00            nop 
0005D0     C300FB        jp $FB00
0005D3     00            nop 
0005D4     C3AFFC        jp $FCAF
0005D7     00            nop 
0005D8     C3E7FC        jp $FCE7
0005DB     00            nop 
0005DC     C379FD        jp $FD79
0005DF     00            nop 
0005E0     C3F8FD        jp $FDF8
0005E3     00            nop 
0005E4     C33906        jp $0639
0005E7     01C313        ld bc, $13C3
0005EA     0101C3        ld bc, $C301
0005ED     FC0001        call m, $0100
0005F0     C34901        jp $0149
0005F3     01C3DE        ld bc, $DEC3
0005F6     0600          ld b, $00
0005F8     C3ED6F        jp $6FED
0005FB     00            nop 
0005FC     C3ECF7        jp $F7EC
0005FF     00            nop 
000600     C35430        jp $3054
000603     01C3A6        ld bc, $A6C3
000606     66            ld h, (hl)
000607     00            nop 
000608     C30476        jp $7604
00060B     00            nop 
00060C     C37976        jp $7679
00060F     00            nop 
000610     C3EE76        jp $76EE
000613     00            nop 
000614     C36377        jp $7763
000617     00            nop 
000618     C3D877        jp $77D8
00061B     00            nop 
00061C     C34D78        jp $784D
00061F     00            nop 
000620     C3C278        jp $78C2
000623     00            nop 
000624     C33779        jp $7937
000627     00            nop 
000628     C3AC79        jp $79AC
00062B     00            nop 
00062C     C3217A        jp $7A21
00062F     00            nop 
000630     C3897A        jp $7A89
000633     00            nop 
000634     C3767B        jp $7B76
000637     00            nop 
000638     C3877B        jp $7B87
00063B     00            nop 
00063C     C339F3        jp $F339
00063F     00            nop 
000640     C3B85B        jp $5BB8
000643     00            nop 
000644     C3685B        jp $5B68
000647     00            nop 
000648     C36B5B        jp $5B6B
00064B     00            nop 
00064C     C3135B        jp $5B13
00064F     00            nop 
000650     C3A65C        jp $5CA6
000653     00            nop 
000654     ED3806        in0 a, ($06)
000657     CB57          bit 2, a
000659     280A          jr z, $0665
00065B     3E03          ld a, $03
00065D     ED3906        out0 ($06), a
000660     FE03          cp a, $03
000662     2801          jr z, $0665
000664     CF            rst $0008
000665     FDCBF61B      set 6, (iy+$1B)
000669     ED6E          ld a, mb
00066B     FED0          cp a, $D0
00066D     C20C14        jp nz, $140C
000670     00            nop 
000671     2AD72A        ld hl, ($2AD7)
000674     D0            ret nc
000675     E5            push hl
000676     CDEA0D        call $0DEA
000679     00            nop 
00067A     C21514        jp nz, $1415
00067D     00            nop 
00067E     C30C01        jp $010C
000681     02            ld (bc), a
000682     210501        ld hl, $0105
000685     02            ld (bc), a
000686     7E            ld a, (hl)
000687     ED391D        out0 ($1D), a
00068A     23            inc hl
00068B     7E            ld a, (hl)
00068C     ED391E        out0 ($1E), a
00068F     23            inc hl
000690     7E            ld a, (hl)
000691     ED391F        out0 ($1F), a
000694     F5            push af
000695     7D            ld a, l
000696     FE07          cp a, $07
000698     C2F515        jp nz, $15F5
00069B     00            nop 
00069C     7C            ld a, h
00069D     FE01          cp a, $01
00069F     C2F515        jp nz, $15F5
0006A2     00            nop 
0006A3     22D72A        ld ($2AD7), hl
0006A6     D0            ret nc
0006A7     3AD92A        ld a, ($2AD9)
0006AA     D0            ret nc
0006AB     FE02          cp a, $02
0006AD     C2F515        jp nz, $15F5
0006B0     00            nop 
0006B1     7E            ld a, (hl)
0006B2     47            ld b, a
0006B3     F1            pop af
0006B4     B8            cp a, b
0006B5     C2F515        jp nz, $15F5
0006B8     00            nop 
0006B9     AF            xor a, a
0006BA     32BA77        ld ($77BA), a
0006BD     D1            pop de
0006BE     32BC77        ld ($77BC), a
0006C1     D1            pop de
0006C2     C30801        jp $0108
0006C5     02            ld (bc), a
0006C6     2A0001        ld hl, ($0100)
0006C9     02            ld (bc), a
0006CA     015AA5        ld bc, $A55A
0006CD     00            nop 
0006CE     B7            or a, a
0006CF     52ED42        sbc.sil hl, bc
0006D2     C9            ret 
0006D3     C5            push bc
0006D4     47            ld b, a
0006D5     3A7E00        ld a, ($007E)
0006D8     00            nop 
0006D9     FEFF          cp a, $FF
0006DB     78            ld a, b
0006DC     C1            pop bc
0006DD     C9            ret 
0006DE     C5            push bc
0006DF     47            ld b, a
0006E0     3A7E00        ld a, ($007E)
0006E3     00            nop 
0006E4     CB7F          bit 7, a
0006E6     78            ld a, b
0006E7     C1            pop bc
0006E8     C9            ret 
0006E9     210501        ld hl, $0105
0006EC     02            ld (bc), a
0006ED     7E            ld a, (hl)
0006EE     32D72A        ld ($2AD7), a
0006F1     D0            ret nc
0006F2     23            inc hl
0006F3     7E            ld a, (hl)
0006F4     32D82A        ld ($2AD8), a
0006F7     D0            ret nc
0006F8     23            inc hl
0006F9     7E            ld a, (hl)
0006FA     32D92A        ld ($2AD9), a
0006FD     D0            ret nc
0006FE     2AD72A        ld hl, ($2AD7)
000701     D0            ret nc
000702     010401        ld bc, $0104
000705     00            nop 
000706     09            add hl, bc
000707     110000        ld de, $0000
00070A     02            ld (bc), a
00070B     B7            or a, a
00070C     ED52          sbc hl, de
00070E     C9            ret 
00070F     010000        ld bc, $0000
000712     00            nop 
000713     46            ld b, (hl)
000714     23            inc hl
000715     4E            ld c, (hl)
000716     2B            dec hl
000717     03            inc bc
000718     03            inc bc
000719     E5            push hl
00071A     210201        ld hl, $0102
00071D     00            nop 
00071E     B7            or a, a
00071F     ED42          sbc hl, bc
000721     3004          jr nc, $0727
000723     010201        ld bc, $0102
000726     00            nop 
000727     E1            pop hl
000728     EDB0          ldir 
00072A     C9            ret 
00072B     00            nop 
00072C     0101DD        ld bc, $DD01
00072F     E5            push hl
000730     DD210000      ld ix, $0000
000734     00            nop 
000735     DD39          add ix, sp
000737     E5            push hl
000738     21F6FC        ld hl, $FCF6
00073B     FF            rst $0038
00073C     39            add hl, sp
00073D     F9            ld sp, hl
00073E     DD27FD        ld hl, (ix-$03)
000741     DDE5          push ix
000743     E1            pop hl
000744     01F3FC        ld bc, $FCF3
000747     FF            rst $0038
000748     09            add hl, bc
000749     DD2FF9        ld (ix-$07), hl
00074C     DDE5          push ix
00074E     E1            pop hl
00074F     01F7FE        ld bc, $FEF7
000752     FF            rst $0038
000753     09            add hl, bc
000754     DD2FFC        ld (ix-$04), hl
000757     DD17FC        ld de, (ix-$04)
00075A     DD2709        ld hl, (ix+$09)
00075D     CD0F07        call $070F
000760     00            nop 
000761     DD1706        ld de, (ix+$06)
000764     212B07        ld hl, $072B
000767     00            nop 
000768     CD0F07        call $070F
00076B     00            nop 
00076C     0E03          ld c, $03
00076E     DD71FF        ld (ix-$01), c
000771     DDCB3EFF      srl (ix-$01)
000775     301F          jr nc, $0796
000777     DD070C        ld bc, (ix+$0C)
00077A     C5            push bc
00077B     DD0706        ld bc, (ix+$06)
00077E     C5            push bc
00077F     DD07FC        ld bc, (ix-$04)
000782     C5            push bc
000783     DD07F9        ld bc, (ix-$07)
000786     C5            push bc
000787     CDD107        call $07D1
00078A     00            nop 
00078B     C1            pop bc
00078C     C1            pop bc
00078D     C1            pop bc
00078E     C1            pop bc
00078F     DD1706        ld de, (ix+$06)
000792     CD0F07        call $070F
000795     00            nop 
000796     DD7EFF        ld a, (ix-$01)
000799     B7            or a, a
00079A     282D          jr z, $07C9
00079C     DD070C        ld bc, (ix+$0C)
00079F     C5            push bc
0007A0     DD07FC        ld bc, (ix-$04)
0007A3     C5            push bc
0007A4     C5            push bc
0007A5     DD07F9        ld bc, (ix-$07)
0007A8     C5            push bc
0007A9     CDD107        call $07D1
0007AC     00            nop 
0007AD     C1            pop bc
0007AE     C1            pop bc
0007AF     C1            pop bc
0007B0     C1            pop bc
0007B1     DD17FC        ld de, (ix-$04)
0007B4     CD0F07        call $070F
0007B7     00            nop 
0007B8     3A2D77        ld a, ($772D)
0007BB     D1            pop de
0007BC     B7            or a, a
0007BD     2808          jr z, $07C7
0007BF     210412        ld hl, $1204
0007C2     00            nop 
0007C3     CDDA12        call $12DA
0007C6     00            nop 
0007C7     18A8          jr $0771
0007C9     DD2706        ld hl, (ix+$06)
0007CC     DDF9          ld sp, ix
0007CE     DDE1          pop ix
0007D0     C9            ret 
0007D1     DDE5          push ix
0007D3     DD210000      ld ix, $0000
0007D7     00            nop 
0007D8     DD39          add ix, sp
0007DA     E5            push hl
0007DB     ED22D3        lea hl, ix-$2D
0007DE     F9            ld sp, hl
0007DF     DD27FD        ld hl, (ix-$03)
0007E2     010302        ld bc, $0203
0007E5     00            nop 
0007E6     DD2706        ld hl, (ix+$06)
0007E9     3600          ld (hl), $00
0007EB     E5            push hl
0007EC     D1            pop de
0007ED     13            inc de
0007EE     EDB0          ldir 
0007F0     DD2709        ld hl, (ix+$09)
0007F3     010000        ld bc, $0000
0007F6     00            nop 
0007F7     46            ld b, (hl)
0007F8     23            inc hl
0007F9     4E            ld c, (hl)
0007FA     79            ld a, c
0007FB     B0            or a, b
0007FC     CAA008        jp z, $08A0
0007FF     00            nop 
000800     DD0FFD        ld (ix-$03), bc
000803     23            inc hl
000804     DD2FFA        ld (ix-$06), hl
000807     7E            ld a, (hl)
000808     DD77F9        ld (ix-$07), a
00080B     DD270C        ld hl, (ix+$0C)
00080E     7E            ld a, (hl)
00080F     23            inc hl
000810     B6            or a, (hl)
000811     CAA008        jp z, $08A0
000814     00            nop 
000815     010000        ld bc, $0000
000818     00            nop 
000819     DD0FF2        ld (ix-$0E), bc
00081C     DD07F2        ld bc, (ix-$0E)
00081F     DD0FEF        ld (ix-$11), bc
000822     010000        ld bc, $0000
000825     00            nop 
000826     DD0FEC        ld (ix-$14), bc
000829     DD270C        ld hl, (ix+$0C)
00082C     23            inc hl
00082D     7E            ld a, (hl)
00082E     DD77F8        ld (ix-$08), a
000831     23            inc hl
000832     DD2FF5        ld (ix-$0B), hl
000835     DD56F9        ld d, (ix-$07)
000838     DD27F5        ld hl, (ix-$0B)
00083B     5E            ld e, (hl)
00083C     23            inc hl
00083D     DD2FF5        ld (ix-$0B), hl
000840     ED5C          mlt de
000842     DD27EC        ld hl, (ix-$14)
000845     19            add hl, de
000846     EB            ex de, hl
000847     DD2706        ld hl, (ix+$06)
00084A     23            inc hl
00084B     23            inc hl
00084C     DD07EF        ld bc, (ix-$11)
00084F     09            add hl, bc
000850     03            inc bc
000851     DD0FEF        ld (ix-$11), bc
000854     010000        ld bc, $0000
000857     00            nop 
000858     4E            ld c, (hl)
000859     EB            ex de, hl
00085A     09            add hl, bc
00085B     7D            ld a, l
00085C     12            ld (de), a
00085D     6C            ld l, h
00085E     2600          ld h, $00
000860     DD2FEC        ld (ix-$14), hl
000863     DD35F8        dec (ix-$08)
000866     20CD          jr nz, $0835
000868     DD7EEC        ld a, (ix-$14)
00086B     B7            or a, a
00086C     DD07EF        ld bc, (ix-$11)
00086F     280B          jr z, $087C
000871     DD2706        ld hl, (ix+$06)
000874     23            inc hl
000875     23            inc hl
000876     09            add hl, bc
000877     03            inc bc
000878     DD0FEF        ld (ix-$11), bc
00087B     77            ld (hl), a
00087C     DD2706        ld hl, (ix+$06)
00087F     70            ld (hl), b
000880     23            inc hl
000881     71            ld (hl), c
000882     DD27F2        ld hl, (ix-$0E)
000885     23            inc hl
000886     DD2FF2        ld (ix-$0E), hl
000889     DD07FD        ld bc, (ix-$03)
00088C     B7            or a, a
00088D     ED42          sbc hl, bc
00088F     300F          jr nc, $08A0
000891     DD27FA        ld hl, (ix-$06)
000894     23            inc hl
000895     7E            ld a, (hl)
000896     DD77F9        ld (ix-$07), a
000899     DD2FFA        ld (ix-$06), hl
00089C     C31C08        jp $081C
00089F     00            nop 
0008A0     110000        ld de, $0000
0008A3     00            nop 
0008A4     DD2706        ld hl, (ix+$06)
0008A7     56            ld d, (hl)
0008A8     23            inc hl
0008A9     5E            ld e, (hl)
0008AA     010000        ld bc, $0000
0008AD     00            nop 
0008AE     DD270F        ld hl, (ix+$0F)
0008B1     46            ld b, (hl)
0008B2     23            inc hl
0008B3     4E            ld c, (hl)
0008B4     EB            ex de, hl
0008B5     B7            or a, a
0008B6     ED42          sbc hl, bc
0008B8     DA480A        jp c, $0A48
0008BB     00            nop 
0008BC     DD2FE9        ld (ix-$17), hl
0008BF     DD2706        ld hl, (ix+$06)
0008C2     56            ld d, (hl)
0008C3     23            inc hl
0008C4     5E            ld e, (hl)
0008C5     13            inc de
0008C6     73            ld (hl), e
0008C7     2B            dec hl
0008C8     72            ld (hl), d
0008C9     DD270F        ld hl, (ix+$0F)
0008CC     010000        ld bc, $0000
0008CF     00            nop 
0008D0     46            ld b, (hl)
0008D1     23            inc hl
0008D2     4E            ld c, (hl)
0008D3     09            add hl, bc
0008D4     46            ld b, (hl)
0008D5     2B            dec hl
0008D6     4E            ld c, (hl)
0008D7     DD0FDC        ld (ix-$24), bc
0008DA     DD2706        ld hl, (ix+$06)
0008DD     010000        ld bc, $0000
0008E0     00            nop 
0008E1     46            ld b, (hl)
0008E2     23            inc hl
0008E3     4E            ld c, (hl)
0008E4     09            add hl, bc
0008E5     46            ld b, (hl)
0008E6     2B            dec hl
0008E7     4E            ld c, (hl)
0008E8     DD0FD9        ld (ix-$27), bc
0008EB     DD2706        ld hl, (ix+$06)
0008EE     46            ld b, (hl)
0008EF     23            inc hl
0008F0     4E            ld c, (hl)
0008F1     0B            dec bc
0008F2     71            ld (hl), c
0008F3     2B            dec hl
0008F4     70            ld (hl), b
0008F5     DD7EDD        ld a, (ix-$23)
0008F8     DDBEDA        cp a, (ix-$26)
0008FB     2006          jr nz, $0903
0008FD     DD36E8FF      ld (ix-$18), $FF
000901     1828          jr $092B
000903     DD27D9        ld hl, (ix-$27)
000906     DD7EDD        ld a, (ix-$23)
000909     110000        ld de, $0000
00090C     00            nop 
00090D     5F            ld e, a
00090E     7C            ld a, h
00090F     4D            ld c, l
000910     B7            or a, a
000911     ED62          sbc hl, hl
000913     0610          ld b, $10
000915     CB21          sla c
000917     17            rla 
000918     ED6A          adc hl, hl
00091A     B7            or a, a
00091B     ED52          sbc hl, de
00091D     3003          jr nc, $0922
00091F     19            add hl, de
000920     1802          jr $0924
000922     CBC1          set 0, c
000924     10EF          djnz $0915
000926     57            ld d, a
000927     59            ld e, c
000928     DD73E8        ld (ix-$18), e
00092B     DD2706        ld hl, (ix+$06)
00092E     010000        ld bc, $0000
000931     00            nop 
000932     46            ld b, (hl)
000933     23            inc hl
000934     4E            ld c, (hl)
000935     2B            dec hl
000936     09            add hl, bc
000937     ED27          ld hl, (hl)
000939     DD2FDF        ld (ix-$21), hl
00093C     210000        ld hl, $0000
00093F     00            nop 
000940     DD17DC        ld de, (ix-$24)
000943     DD7EE8        ld a, (ix-$18)
000946     6F            ld l, a
000947     63            ld h, e
000948     ED6C          mlt hl
00094A     E5            push hl
00094B     C1            pop bc
00094C     6F            ld l, a
00094D     62            ld h, d
00094E     ED6C          mlt hl
000950     29            add hl, hl
000951     29            add hl, hl
000952     29            add hl, hl
000953     29            add hl, hl
000954     29            add hl, hl
000955     29            add hl, hl
000956     29            add hl, hl
000957     29            add hl, hl
000958     09            add hl, bc
000959     DD07DF        ld bc, (ix-$21)
00095C     DD17DC        ld de, (ix-$24)
00095F     B7            or a, a
000960     ED42          sbc hl, bc
000962     380A          jr c, $096E
000964     2808          jr z, $096E
000966     DD35E8        dec (ix-$18)
000969     09            add hl, bc
00096A     ED52          sbc hl, de
00096C     18F1          jr $095F
00096E     DD7EE8        ld a, (ix-$18)
000971     B7            or a, a
000972     CA230A        jp z, $0A23
000975     00            nop 
000976     010000        ld bc, $0000
000979     00            nop 
00097A     DD0FD9        ld (ix-$27), bc
00097D     DD0FD6        ld (ix-$2A), bc
000980     DD270F        ld hl, (ix+$0F)
000983     23            inc hl
000984     23            inc hl
000985     DD2FE5        ld (ix-$1B), hl
000988     DD2706        ld hl, (ix+$06)
00098B     23            inc hl
00098C     23            inc hl
00098D     DD07E9        ld bc, (ix-$17)
000990     09            add hl, bc
000991     DD2FE2        ld (ix-$1E), hl
000994     010000        ld bc, $0000
000997     00            nop 
000998     DD270F        ld hl, (ix+$0F)
00099B     46            ld b, (hl)
00099C     23            inc hl
00099D     4E            ld c, (hl)
00099E     DD0FD3        ld (ix-$2D), bc
0009A1     DD5EE8        ld e, (ix-$18)
0009A4     DD27E5        ld hl, (ix-$1B)
0009A7     56            ld d, (hl)
0009A8     23            inc hl
0009A9     DD2FE5        ld (ix-$1B), hl
0009AC     ED5C          mlt de
0009AE     DD27D9        ld hl, (ix-$27)
0009B1     19            add hl, de
0009B2     DD2FD9        ld (ix-$27), hl
0009B5     110000        ld de, $0000
0009B8     00            nop 
0009B9     DD27E2        ld hl, (ix-$1E)
0009BC     5E            ld e, (hl)
0009BD     210000        ld hl, $0000
0009C0     00            nop 
0009C1     DD6ED9        ld l, (ix-$27)
0009C4     EB            ex de, hl
0009C5     B7            or a, a
0009C6     ED52          sbc hl, de
0009C8     DD07D6        ld bc, (ix-$2A)
0009CB     09            add hl, bc
0009CC     7D            ld a, l
0009CD     6C            ld l, h
0009CE     DD2FD6        ld (ix-$2A), hl
0009D1     DD27E2        ld hl, (ix-$1E)
0009D4     77            ld (hl), a
0009D5     23            inc hl
0009D6     DD2FE2        ld (ix-$1E), hl
0009D9     DD27D9        ld hl, (ix-$27)
0009DC     6C            ld l, h
0009DD     2600          ld h, $00
0009DF     DD2FD9        ld (ix-$27), hl
0009E2     DD27D3        ld hl, (ix-$2D)
0009E5     2B            dec hl
0009E6     DD2FD3        ld (ix-$2D), hl
0009E9     7D            ld a, l
0009EA     B4            or a, h
0009EB     20B4          jr nz, $09A1
0009ED     DD07E2        ld bc, (ix-$1E)
0009F0     0A            ld a, (bc)
0009F1     B7            or a, a
0009F2     ED62          sbc hl, hl
0009F4     6F            ld l, a
0009F5     DD17D9        ld de, (ix-$27)
0009F8     ED52          sbc hl, de
0009FA     DD17D6        ld de, (ix-$2A)
0009FD     19            add hl, de
0009FE     DD2FD6        ld (ix-$2A), hl
000A01     7D            ld a, l
000A02     02            ld (bc), a
000A03     7C            ld a, h
000A04     B7            or a, a
000A05     281C          jr z, $0A23
000A07     DD2706        ld hl, (ix+$06)
000A0A     23            inc hl
000A0B     23            inc hl
000A0C     DD07E9        ld bc, (ix-$17)
000A0F     09            add hl, bc
000A10     EB            ex de, hl
000A11     DD270F        ld hl, (ix+$0F)
000A14     23            inc hl
000A15     46            ld b, (hl)
000A16     23            inc hl
000A17     B7            or a, a
000A18     1A            ld a, (de)
000A19     8E            adc a, (hl)
000A1A     12            ld (de), a
000A1B     13            inc de
000A1C     23            inc hl
000A1D     10F9          djnz $0A18
000A1F     1A            ld a, (de)
000A20     CE00          adc a, $00
000A22     12            ld (de), a
000A23     DD27E9        ld hl, (ix-$17)
000A26     2B            dec hl
000A27     DD2FE9        ld (ix-$17), hl
000A2A     CB7C          bit 7, h
000A2C     CADA08        jp z, $08DA
000A2F     00            nop 
000A30     010000        ld bc, $0000
000A33     00            nop 
000A34     79            ld a, c
000A35     DD2706        ld hl, (ix+$06)
000A38     46            ld b, (hl)
000A39     23            inc hl
000A3A     4E            ld c, (hl)
000A3B     09            add hl, bc
000A3C     BE            cp a, (hl)
000A3D     2B            dec hl
000A3E     0B            dec bc
000A3F     28FB          jr z, $0A3C
000A41     03            inc bc
000A42     DD2706        ld hl, (ix+$06)
000A45     70            ld (hl), b
000A46     23            inc hl
000A47     71            ld (hl), c
000A48     DD2706        ld hl, (ix+$06)
000A4B     DDF9          ld sp, ix
000A4D     DDE1          pop ix
000A4F     C9            ret 
000A50     7B            ld a, e
000A51     110000        ld de, $0000
000A54     00            nop 
000A55     5F            ld e, a
000A56     7B            ld a, e
000A57     B2            or a, d
000A58     C8            ret z
000A59     7C            ld a, h
000A5A     4D            ld c, l
000A5B     ED62          sbc hl, hl
000A5D     0610          ld b, $10
000A5F     CB21          sla c
000A61     17            rla 
000A62     ED6A          adc hl, hl
000A64     B7            or a, a
000A65     ED52          sbc hl, de
000A67     3003          jr nc, $0A6C
000A69     19            add hl, de
000A6A     1802          jr $0A6E
000A6C     CBC1          set 0, c
000A6E     10EF          djnz $0A5F
000A70     57            ld d, a
000A71     59            ld e, c
000A72     C9            ret 
000A73     6F            ld l, a
000A74     63            ld h, e
000A75     ED6C          mlt hl
000A77     E5            push hl
000A78     C1            pop bc
000A79     6F            ld l, a
000A7A     62            ld h, d
000A7B     ED6C          mlt hl
000A7D     29            add hl, hl
000A7E     29            add hl, hl
000A7F     29            add hl, hl
000A80     29            add hl, hl
000A81     29            add hl, hl
000A82     29            add hl, hl
000A83     29            add hl, hl
000A84     29            add hl, hl
000A85     09            add hl, bc
000A86     C9            ret 
000A87     DDE5          push ix
000A89     DD210000      ld ix, $0000
000A8D     00            nop 
000A8E     DD39          add ix, sp
000A90     C5            push bc
000A91     C5            push bc
000A92     3B            dec sp
000A93     DD270C        ld hl, (ix+$0C)
000A96     CDB81C        call $1CB8
000A99     00            nop 
000A9A     285E          jr z, $0AFA
000A9C     DD2706        ld hl, (ix+$06)
000A9F     ED12FC        lea de, ix-$04
000AA2     010400        ld bc, $0004
000AA5     00            nop 
000AA6     EDB0          ldir 
000AA8     210000        ld hl, $0000
000AAB     00            nop 
000AAC     0620          ld b, $20
000AAE     DD170C        ld de, (ix+$0C)
000AB1     DDCB26FF      sla (ix-$01)
000AB5     DDCB16FE      rl (ix-$02)
000AB9     DDCB16FD      rl (ix-$03)
000ABD     DDCB16FC      rl (ix-$04)
000AC1     ED6A          adc hl, hl
000AC3     B7            or a, a
000AC4     ED52          sbc hl, de
000AC6     3003          jr nc, $0ACB
000AC8     19            add hl, de
000AC9     1804          jr $0ACF
000ACB     DDCBC6FF      set 0, (ix-$01)
000ACF     10E0          djnz $0AB1
000AD1     DD2FF9        ld (ix-$07), hl
000AD4     DD1706        ld de, (ix+$06)
000AD7     ED22FC        lea hl, ix-$04
000ADA     010400        ld bc, $0004
000ADD     00            nop 
000ADE     EDB0          ldir 
000AE0     DD2709        ld hl, (ix+$09)
000AE3     CDB81C        call $1CB8
000AE6     00            nop 
000AE7     2811          jr z, $0AFA
000AE9     3600          ld (hl), $00
000AEB     23            inc hl
000AEC     DD7EFB        ld a, (ix-$05)
000AEF     77            ld (hl), a
000AF0     23            inc hl
000AF1     DD7EFA        ld a, (ix-$06)
000AF4     77            ld (hl), a
000AF5     23            inc hl
000AF6     DD7EF9        ld a, (ix-$07)
000AF9     77            ld (hl), a
000AFA     DDF9          ld sp, ix
000AFC     DDE1          pop ix
000AFE     C9            ret 
000AFF     1A            ld a, (de)
000B00     BE            cp a, (hl)
000B01     C0            ret nz
000B02     13            inc de
000B03     23            inc hl
000B04     1A            ld a, (de)
000B05     BE            cp a, (hl)
000B06     C0            ret nz
000B07     47            ld b, a
000B08     23            inc hl
000B09     13            inc de
000B0A     1A            ld a, (de)
000B0B     BE            cp a, (hl)
000B0C     C0            ret nz
000B0D     10F9          djnz $0B08
000B0F     C9            ret 
000B10     35            dec (hl)
000B11     2E31          ld l, $31
000B13     2E35          ld l, $35
000B15     2E30          ld l, $30
000B17     3031          jr nc, $0B4A
000B19     34            inc (hl)
000B1A     00            nop 
000B1B     CD5F0B        call $0B5F
000B1E     00            nop 
000B1F     F5            push af
000B20     C5            push bc
000B21     D5            push de
000B22     E5            push hl
000B23     DDE5          push ix
000B25     E1            pop hl
000B26     117C8C        ld de, $8C7C
000B29     D1            pop de
000B2A     010000        ld bc, $0000
000B2D     00            nop 
000B2E     4E            ld c, (hl)
000B2F     23            inc hl
000B30     46            ld b, (hl)
000B31     23            inc hl
000B32     EB            ex de, hl
000B33     AF            xor a, a
000B34     ED42          sbc hl, bc
000B36     EB            ex de, hl
000B37     D5            push de
000B38     EDB0          ldir 
000B3A     22D72A        ld ($2AD7), hl
000B3D     D0            ret nc
000B3E     3AD92A        ld a, ($2AD9)
000B41     D0            ret nc
000B42     ED081F        in0 c, ($1F)
000B45     0C            inc c
000B46     B9            cp a, c
000B47     D20C14        jp nc, $140C
000B4A     00            nop 
000B4B     DDE1          pop ix
000B4D     E1            pop hl
000B4E     D1            pop de
000B4F     C1            pop bc
000B50     F1            pop af
000B51     DDE9          jp (ix)
000B53     F5            push af
000B54     3A2801        ld a, ($0128)
000B57     D0            ret nc
000B58     CB57          bit 2, a
000B5A     2801          jr z, $0B5D
000B5C     FB            ei 
000B5D     F1            pop af
000B5E     C9            ret 
000B5F     F5            push af
000B60     C5            push bc
000B61     ED57          ld a, i
000B63     EA690B        jp pe, $0B69
000B66     00            nop 
000B67     ED57          ld a, i
000B69     F5            push af
000B6A     F3            di 
000B6B     C1            pop bc
000B6C     79            ld a, c
000B6D     322801        ld ($0128), a
000B70     D0            ret nc
000B71     C1            pop bc
000B72     F1            pop af
000B73     C9            ret 
000B74     01FF0F        ld bc, $0FFF
000B77     00            nop 
000B78     217C88        ld hl, $887C
000B7B     D1            pop de
000B7C     117D88        ld de, $887D
000B7F     D1            pop de
000B80     3600          ld (hl), $00
000B82     EDB0          ldir 
000B84     AF            xor a, a
000B85     217C8C        ld hl, $8C7C
000B88     D1            pop de
000B89     227C88        ld ($887C), hl
000B8C     D1            pop de
000B8D     C9            ret 
000B8E     217C98        ld hl, $987C
000B91     D1            pop de
000B92     ED5B7C88      ld de, ($887C)
000B96     D1            pop de
000B97     ED53D72A      ld ($2AD7), de
000B9B     D0            ret nc
000B9C     AF            xor a, a
000B9D     ED52          sbc hl, de
000B9F     ED5BD72A      ld de, ($2AD7)
000BA3     D0            ret nc
000BA4     C9            ret 
000BA5     DDE5          push ix
000BA7     DD210000      ld ix, $0000
000BAB     00            nop 
000BAC     DD39          add ix, sp
000BAE     F5            push af
000BAF     F3            di 
000BB0     ED001F        in0 b, ($1F)
000BB3     04            inc b
000BB4     DD7E05        ld a, (ix+$05)
000BB7     B8            cp a, b
000BB8     302C          jr nc, $0BE6
000BBA     DD0709        ld bc, (ix+$09)
000BBD     CD8E0B        call $0B8E
000BC0     00            nop 
000BC1     3824          jr c, $0BE7
000BC3     2822          jr z, $0BE7
000BC5     ED42          sbc hl, bc
000BC7     381E          jr c, $0BE7
000BC9     D5            push de
000BCA     DD2706        ld hl, (ix+$06)
000BCD     EDB0          ldir 
000BCF     22D72A        ld ($2AD7), hl
000BD2     D0            ret nc
000BD3     3AD92A        ld a, ($2AD9)
000BD6     D0            ret nc
000BD7     ED081F        in0 c, ($1F)
000BDA     0C            inc c
000BDB     B9            cp a, c
000BDC     3008          jr nc, $0BE6
000BDE     E1            pop hl
000BDF     ED537C88      ld ($887C), de
000BE3     D1            pop de
000BE4     1805          jr $0BEB
000BE6     CF            rst $0008
000BE7     210000        ld hl, $0000
000BEA     00            nop 
000BEB     F1            pop af
000BEC     E2F10B        jp po, $0BF1
000BEF     00            nop 
000BF0     FB            ei 
000BF1     DDE1          pop ix
000BF3     C9            ret 
000BF4     DDE5          push ix
000BF6     DD210000      ld ix, $0000
000BFA     00            nop 
000BFB     DD39          add ix, sp
000BFD     F5            push af
000BFE     C5            push bc
000BFF     D5            push de
000C00     ED001F        in0 b, ($1F)
000C03     04            inc b
000C04     DD7E05        ld a, (ix+$05)
000C07     B8            cp a, b
000C08     3023          jr nc, $0C2D
000C0A     DD2706        ld hl, (ix+$06)
000C0D     117C88        ld de, $887C
000C10     D1            pop de
000C11     AF            xor a, a
000C12     ED52          sbc hl, de
000C14     3817          jr c, $0C2D
000C16     DD2706        ld hl, (ix+$06)
000C19     117C8C        ld de, $8C7C
000C1C     D1            pop de
000C1D     EB            ex de, hl
000C1E     ED52          sbc hl, de
000C20     380B          jr c, $0C2D
000C22     D1            pop de
000C23     C1            pop bc
000C24     F1            pop af
000C25     DD2706        ld hl, (ix+$06)
000C28     DDF9          ld sp, ix
000C2A     DDE1          pop ix
000C2C     E9            jp (hl)
000C2D     CF            rst $0008
000C2E     ED3828        in0 a, ($28)
000C31     CB5F          bit 3, a
000C33     CA0C14        jp z, $140C
000C36     00            nop 
000C37     CD011A        call $1A01
000C3A     00            nop 
000C3B     D8            ret c
000C3C     03            inc bc
000C3D     CD1D1A        call $1A1D
000C40     00            nop 
000C41     C9            ret 
000C42     3E02          ld a, $02
000C44     4F            ld c, a
000C45     063E          ld b, $3E
000C47     C5            push bc
000C48     79            ld a, c
000C49     FE3B          cp a, $3B
000C4B     282C          jr z, $0C79
000C4D     F5            push af
000C4E     3E04          ld a, $04
000C50     F3            di 
000C51     1800          jr $0C53
000C53     F3            di 
000C54     ED7E          rsmix 
000C56     ED56          im 1
000C58     ED3928        out0 ($28), a
000C5B     ED3828        in0 a, ($28)
000C5E     CB57          bit 2, a
000C60     F1            pop af
000C61     CD7E0C        call $0C7E
000C64     00            nop 
000C65     C1            pop bc
000C66     C5            push bc
000C67     79            ld a, c
000C68     210901        ld hl, $0109
000C6B     00            nop 
000C6C     1F            rra 
000C6D     1F            rra 
000C6E     1F            rra 
000C6F     1F            rra 
000C70     CDDF15        call $15DF
000C73     00            nop 
000C74     79            ld a, c
000C75     CDDF15        call $15DF
000C78     00            nop 
000C79     C1            pop bc
000C7A     0C            inc c
000C7B     10CA          djnz $0C47
000C7D     C9            ret 
000C7E     210000        ld hl, $0000
000C81     00            nop 
000C82     22D72A        ld ($2AD7), hl
000C85     D0            ret nc
000C86     32D92A        ld ($2AD9), a
000C89     D0            ret nc
000C8A     2AD72A        ld hl, ($2AD7)
000C8D     D0            ret nc
000C8E     FDE1          pop iy
000C90     FDE5          push iy
000C92     FD22D72A      ld ($2AD7), iy
000C96     D0            ret nc
000C97     FD218000      ld iy, $0080
000C9B     D0            ret nc
000C9C     3AD92A        ld a, ($2AD9)
000C9F     D0            ret nc
000CA0     FED0          cp a, $D0
000CA2     3804          jr c, $0CA8
000CA4     3E01          ld a, $01
000CA6     37            scf 
000CA7     C9            ret 
000CA8     22D72A        ld ($2AD7), hl
000CAB     D0            ret nc
000CAC     3AD92A        ld a, ($2AD9)
000CAF     D0            ret nc
000CB0     FE02          cp a, $02
000CB2     3803          jr c, $0CB7
000CB4     FE40          cp a, $40
000CB6     3F            ccf 
000CB7     D8            ret c
000CB8     DDE5          push ix
000CBA     F5            push af
000CBB     3E04          ld a, $04
000CBD     F3            di 
000CBE     1800          jr $0CC0
000CC0     F3            di 
000CC1     ED7E          rsmix 
000CC3     ED56          im 1
000CC5     ED3928        out0 ($28), a
000CC8     ED3828        in0 a, ($28)
000CCB     CB57          bit 2, a
000CCD     F1            pop af
000CCE     DD21DA0C      ld ix, $0CDA
000CD2     00            nop 
000CD3     CD1B0B        call $0B1B
000CD6     00            nop 
000CD7     DDE1          pop ix
000CD9     C9            ret 
000CDA     5A            ld e, d
000CDB     00            nop 
000CDC     C5            push bc
000CDD     3A7E00        ld a, ($007E)
000CE0     00            nop 
000CE1     CB77          bit 6, a
000CE3     2004          jr nz, $0CE9
000CE5     EDEE          trap 
000CE7     1848          jr $0D31
000CE9     3EAA          ld a, $AA
000CEB     32AA0A        ld ($0AAA), a
000CEE     00            nop 
000CEF     3E55          ld a, $55
000CF1     325505        ld ($0555), a
000CF4     00            nop 
000CF5     3E80          ld a, $80
000CF7     32AA0A        ld ($0AAA), a
000CFA     00            nop 
000CFB     3EAA          ld a, $AA
000CFD     32AA0A        ld ($0AAA), a
000D00     00            nop 
000D01     3E55          ld a, $55
000D03     325505        ld ($0555), a
000D06     00            nop 
000D07     3E30          ld a, $30
000D09     77            ld (hl), a
000D0A     7E            ld a, (hl)
000D0B     E608          and a, $08
000D0D     20FB          jr nz, $0D0A
000D0F     7E            ld a, (hl)
000D10     E640          and a, $40
000D12     47            ld b, a
000D13     7E            ld a, (hl)
000D14     4F            ld c, a
000D15     E640          and a, $40
000D17     B8            cp a, b
000D18     2817          jr z, $0D31
000D1A     79            ld a, c
000D1B     E640          and a, $40
000D1D     47            ld b, a
000D1E     79            ld a, c
000D1F     E620          and a, $20
000D21     28F0          jr z, $0D13
000D23     7E            ld a, (hl)
000D24     E640          and a, $40
000D26     47            ld b, a
000D27     7E            ld a, (hl)
000D28     E640          and a, $40
000D2A     B8            cp a, b
000D2B     2804          jr z, $0D31
000D2D     3EF0          ld a, $F0
000D2F     77            ld (hl), a
000D30     B7            or a, a
000D31     C1            pop bc
000D32     C3530B        jp $0B53
000D35     00            nop 
000D36     E5            push hl
000D37     212501        ld hl, $0125
000D3A     D0            ret nc
000D3B     70            ld (hl), b
000D3C     010100        ld bc, $0001
000D3F     00            nop 
000D40     CD460D        call $0D46
000D43     00            nop 
000D44     E1            pop hl
000D45     C9            ret 
000D46     CDB313        call $13B3
000D49     00            nop 
000D4A     FE02          cp a, $02
000D4C     3803          jr c, $0D51
000D4E     FE40          cp a, $40
000D50     3F            ccf 
000D51     3825          jr c, $0D78
000D53     FDCB8E25      res 1, (iy+$25)
000D57     DDE5          push ix
000D59     F5            push af
000D5A     3E04          ld a, $04
000D5C     F3            di 
000D5D     1800          jr $0D5F
000D5F     F3            di 
000D60     ED7E          rsmix 
000D62     ED56          im 1
000D64     ED3928        out0 ($28), a
000D67     ED3828        in0 a, ($28)
000D6A     CB57          bit 2, a
000D6C     F1            pop af
000D6D     DD21790D      ld ix, $0D79
000D71     00            nop 
000D72     CD1B0B        call $0B1B
000D75     00            nop 
000D76     DDE1          pop ix
000D78     C9            ret 
000D79     3B            dec sp
000D7A     00            nop 
000D7B     3A7E00        ld a, ($007E)
000D7E     00            nop 
000D7F     CB77          bit 6, a
000D81     2812          jr z, $0D95
000D83     3EAA          ld a, $AA
000D85     32AA0A        ld ($0AAA), a
000D88     00            nop 
000D89     3E55          ld a, $55
000D8B     325505        ld ($0555), a
000D8E     00            nop 
000D8F     3EA0          ld a, $A0
000D91     32AA0A        ld ($0AAA), a
000D94     00            nop 
000D95     7E            ld a, (hl)
000D96     12            ld (de), a
000D97     C5            push bc
000D98     47            ld b, a
000D99     1A            ld a, (de)
000D9A     B8            cp a, b
000D9B     20FC          jr nz, $0D99
000D9D     C1            pop bc
000D9E     13            inc de
000D9F     23            inc hl
000DA0     0B            dec bc
000DA1     ED43D72A      ld ($2AD7), bc
000DA5     D0            ret nc
000DA6     3AD92A        ld a, ($2AD9)
000DA9     D0            ret nc
000DAA     B0            or a, b
000DAB     B1            or a, c
000DAC     20CD          jr nz, $0D7B
000DAE     C3530B        jp $0B53
000DB1     00            nop 
000DB2     C3530B        jp $0B53
000DB5     00            nop 
000DB6     C5            push bc
000DB7     40010C50      ld.sis bc, $500C
000DBB     ED78          in a, (bc)
000DBD     CB87          res 0, a
000DBF     ED79          out (bc), a
000DC1     78            ld a, b
000DC2     FE50          cp a, $50
000DC4     2801          jr z, $0DC7
000DC6     CF            rst $0008
000DC7     79            ld a, c
000DC8     FE0C          cp a, $0C
000DCA     20FA          jr nz, $0DC6
000DCC     0E00          ld c, $00
000DCE     ED78          in a, (bc)
000DD0     E601          and a, $01
000DD2     3D            dec a
000DD3     F5            push af
000DD4     0E0C          ld c, $0C
000DD6     ED78          in a, (bc)
000DD8     CBC7          set 0, a
000DDA     ED79          out (bc), a
000DDC     78            ld a, b
000DDD     FE50          cp a, $50
000DDF     2801          jr z, $0DE2
000DE1     CF            rst $0008
000DE2     79            ld a, c
000DE3     FE0C          cp a, $0C
000DE5     20FA          jr nz, $0DE1
000DE7     F1            pop af
000DE8     C1            pop bc
000DE9     C9            ret 
000DEA     CDC606        call $06C6
000DED     00            nop 
000DEE     C0            ret nz
000DEF     3ABA77        ld a, ($77BA)
000DF2     D1            pop de
000DF3     B7            or a, a
000DF4     C0            ret nz
000DF5     010000        ld bc, $0000
000DF8     02            ld (bc), a
000DF9     C5            push bc
000DFA     CD5360        call $6053
000DFD     00            nop 
000DFE     C1            pop bc
000DFF     2D            dec l
000E00     C9            ret 
000E01     113003        ld de, $0330
000E04     00            nop 
000E05     CD5017        call $1750
000E08     00            nop 
000E09     C0            ret nz
000E0A     CD4A17        call $174A
000E0D     00            nop 
000E0E     110004        ld de, $0400
000E11     00            nop 
000E12     CD2E17        call $172E
000E15     00            nop 
000E16     C0            ret nz
000E17     CD4A17        call $174A
000E1A     00            nop 
000E1B     C5            push bc
000E1C     111906        ld de, $0619
000E1F     D0            ret nc
000E20     EDB0          ldir 
000E22     C1            pop bc
000E23     41            ld b, c
000E24     AF            xor a, a
000E25     C9            ret 
000E26     210000        ld hl, $0000
000E29     00            nop 
000E2A     229505        ld ($0595), hl
000E2D     D0            ret nc
000E2E     215115        ld hl, $1551
000E31     00            nop 
000E32     CD0755        call $5507
000E35     00            nop 
000E36     21100B        ld hl, $0B10
000E39     00            nop 
000E3A     CD0755        call $5507
000E3D     00            nop 
000E3E     C9            ret 
000E3F     3E05          ld a, $05
000E41     0601          ld b, $01
000E43     C9            ret 
000E44     3E05          ld a, $05
000E46     C9            ret 
000E47     3E00          ld a, $00
000E49     060E          ld b, $0E
000E4B     C9            ret 
000E4C     3E07          ld a, $07
000E4E     C9            ret 
000E4F     AF            xor a, a
000E50     ED3901        out0 ($01), a
000E53     40010510      ld.sis bc, $1005
000E57     3E02          ld a, $02
000E59     ED79          out (bc), a
000E5B     317EA8        ld sp, $A87E
000E5E     D1            pop de
000E5F     3E02          ld a, $02
000E61     ED3907        out0 ($07), a
000E64     ED3909        out0 ($09), a
000E67     FE02          cp a, $02
000E69     C2250F        jp nz, $0F25
000E6C     00            nop 
000E6D     78            ld a, b
000E6E     FE10          cp a, $10
000E70     2801          jr z, $0E73
000E72     CF            rst $0008
000E73     79            ld a, c
000E74     FE05          cp a, $05
000E76     20FA          jr nz, $0E72
000E78     40010210      ld.sis bc, $1002
000E7C     3E06          ld a, $06
000E7E     ED79          out (bc), a
000E80     40210210      ld.sis hl, $1002
000E84     52ED42        sbc.sil hl, bc
000E87     C2250F        jp nz, $0F25
000E8A     00            nop 
000E8B     FE06          cp a, $06
000E8D     C2250F        jp nz, $0F25
000E90     00            nop 
000E91     21AC0E        ld hl, $0EAC
000E94     00            nop 
000E95     ED07          ld bc, (hl)
000E97     23            inc hl
000E98     23            inc hl
000E99     23            inc hl
000E9A     ED93          otimr 
000E9C     3AB80E        ld a, ($0EB8)
000E9F     00            nop 
000EA0     B9            cp a, c
000EA1     2008          jr nz, $0EAB
000EA3     01B80E        ld bc, $0EB8
000EA6     00            nop 
000EA7     ED42          sbc hl, bc
000EA9     280E          jr z, $0EB9
000EAB     CF            rst $0008
000EAC     1D            dec e
000EAD     09            add hl, bc
000EAE     00            nop 
000EAF     00            nop 
000EB0     00            nop 
000EB1     02            ld (bc), a
000EB2     7C            ld a, h
000EB3     88            adc a, b
000EB4     D1            pop de
000EB5     7C            ld a, h
000EB6     88            adc a, b
000EB7     D1            pop de
000EB8     263E          ld h, $3E
000EBA     81            add a, c
000EBB     ED393A        out0 ($3A), a
000EBE     FE81          cp a, $81
000EC0     2063          jr nz, $0F25
000EC2     3E98          ld a, $98
000EC4     ED393B        out0 ($3B), a
000EC7     FE98          cp a, $98
000EC9     205A          jr nz, $0F25
000ECB     3ED1          ld a, $D1
000ECD     ED393C        out0 ($3C), a
000ED0     FED1          cp a, $D1
000ED2     2051          jr nz, $0F25
000ED4     217C8C        ld hl, $8C7C
000ED7     D1            pop de
000ED8     227C88        ld ($887C), hl
000EDB     D1            pop de
000EDC     AF            xor a, a
000EDD     32B777        ld ($77B7), a
000EE0     D1            pop de
000EE1     32BB77        ld ($77BB), a
000EE4     D1            pop de
000EE5     3E0F          ld a, $0F
000EE7     ED390D        out0 ($0D), a
000EEA     ED380D        in0 a, ($0D)
000EED     3C            inc a
000EEE     20FA          jr nz, $0EEA
000EF0     3E36          ld a, $36
000EF2     ED3905        out0 ($05), a
000EF5     400120B0      ld.sis bc, $B020
000EF9     3EFF          ld a, $FF
000EFB     ED79          out (bc), a
000EFD     0E24          ld c, $24
000EFF     ED79          out (bc), a
000F01     3C            inc a
000F02     2021          jr nz, $0F25
000F04     78            ld a, b
000F05     FEB0          cp a, $B0
000F07     2801          jr z, $0F0A
000F09     CF            rst $0008
000F0A     3E76          ld a, $76
000F0C     ED3905        out0 ($05), a
000F0F     06FF          ld b, $FF
000F11     10FE          djnz $0F11
000F13     3E26          ld a, $26
000F15     ED3905        out0 ($05), a
000F18     FE26          cp a, $26
000F1A     2009          jr nz, $0F25
000F1C     3E03          ld a, $03
000F1E     ED3906        out0 ($06), a
000F21     FE03          cp a, $03
000F23     2801          jr z, $0F26
000F25     CF            rst $0008
000F26     400100A0      ld.sis bc, $A000
000F2A     AF            xor a, a
000F2B     ED79          out (bc), a
000F2D     0C            inc c
000F2E     3E0F          ld a, $0F
000F30     ED79          out (bc), a
000F32     0C            inc c
000F33     AF            xor a, a
000F34     ED79          out (bc), a
000F36     0C            inc c
000F37     3E0F          ld a, $0F
000F39     ED79          out (bc), a
000F3B     0C            inc c
000F3C     3E08          ld a, $08
000F3E     ED79          out (bc), a
000F40     0C            inc c
000F41     ED79          out (bc), a
000F43     402105A0      ld.sis hl, $A005
000F47     52ED42        sbc.sil hl, bc
000F4A     20D9          jr nz, $0F25
000F4C     CDE613        call $13E6
000F4F     00            nop 
000F50     3ED0          ld a, $D0
000F52     ED6D          ld mb, a
000F54     ED56          im 1
000F56     FD218000      ld iy, $0080
000F5A     D0            ret nc
000F5B     FDCBB61B      res 6, (iy+$1B)
000F5F     CD5013        call $1350
000F62     00            nop 
000F63     F3            di 
000F64     ED380F        in0 a, ($0F)
000F67     CB7F          bit 7, a
000F69     2008          jr nz, $0F73
000F6B     CDFB35        call $35FB
000F6E     00            nop 
000F6F     DAA313        jp c, $13A3
000F72     00            nop 
000F73     CDC723        call $23C7
000F76     00            nop 
000F77     CDB237        call $37B2
000F7A     00            nop 
000F7B     FE06          cp a, $06
000F7D     2007          jr nz, $0F86
000F7F     7D            ld a, l
000F80     FEA0          cp a, $A0
000F82     CA1F10        jp z, $101F
000F85     00            nop 
000F86     CDC606        call $06C6
000F89     00            nop 
000F8A     C22B10        jp nz, $102B
000F8D     00            nop 
000F8E     C38206        jp $0682
000F91     00            nop 
000F92     F5            push af
000F93     F3            di 
000F94     3E8C          ld a, $8C
000F96     ED3924        out0 ($24), a
000F99     FE8C          cp a, $8C
000F9B     C26600        jp nz, $0066
000F9E     00            nop 
000F9F     ED3806        in0 a, ($06)
000FA2     CBD7          set 2, a
000FA4     ED3906        out0 ($06), a
000FA7     00            nop 
000FA8     00            nop 
000FA9     3E04          ld a, $04
000FAB     F3            di 
000FAC     1800          jr $0FAE
000FAE     F3            di 
000FAF     ED7E          rsmix 
000FB1     ED56          im 1
000FB3     ED3928        out0 ($28), a
000FB6     ED3828        in0 a, ($28)
000FB9     CB57          bit 2, a
000FBB     C5            push bc
000FBC     D5            push de
000FBD     E5            push hl
000FBE     ED733F05      ld ($053F), sp
000FC2     D0            ret nc
000FC3     2A3F05        ld hl, ($053F)
000FC6     D0            ret nc
000FC7     017E98        ld bc, $987E
000FCA     D1            pop de
000FCB     117EA8        ld de, $A87E
000FCE     D1            pop de
000FCF     B7            or a, a
000FD0     E5            push hl
000FD1     ED42          sbc hl, bc
000FD3     3807          jr c, $0FDC
000FD5     E1            pop hl
000FD6     E5            push hl
000FD7     D5            push de
000FD8     EB            ex de, hl
000FD9     ED52          sbc hl, de
000FDB     D1            pop de
000FDC     3F            ccf 
000FDD     E1            pop hl
000FDE     D26600        jp nc, $0066
000FE1     00            nop 
000FE2     E1            pop hl
000FE3     D1            pop de
000FE4     C1            pop bc
000FE5     F1            pop af
000FE6     0600          ld b, $00
000FE8     110001        ld de, $0100
000FEB     02            ld (bc), a
000FEC     CD360D        call $0D36
000FEF     00            nop 
000FF0     F5            push af
000FF1     AF            xor a, a
000FF2     F3            di 
000FF3     1800          jr $0FF5
000FF5     F3            di 
000FF6     ED7E          rsmix 
000FF8     ED56          im 1
000FFA     ED3928        out0 ($28), a
000FFD     ED3828        in0 a, ($28)
001000     CB57          bit 2, a
001002     ED3806        in0 a, ($06)
001005     CB97          res 2, a
001007     ED3906        out0 ($06), a
00100A     00            nop 
00100B     00            nop 
00100C     3E88          ld a, $88
00100E     ED3924        out0 ($24), a
001011     FE88          cp a, $88
001013     C26600        jp nz, $0066
001016     00            nop 
001017     F1            pop af
001018     AF            xor a, a
001019     32BA77        ld ($77BA), a
00101C     D1            pop de
00101D     180C          jr $102B
00101F     F5            push af
001020     3E7F          ld a, $7F
001022     32BA77        ld ($77BA), a
001025     D1            pop de
001026     F1            pop af
001027     C3D310        jp $10D3
00102A     00            nop 
00102B     F5            push af
00102C     FDE5          push iy
00102E     CDC606        call $06C6
001031     00            nop 
001032     CAD610        jp z, $10D6
001035     00            nop 
001036     CDE906        call $06E9
001039     00            nop 
00103A     22D72A        ld ($2AD7), hl
00103D     D0            ret nc
00103E     3AD92A        ld a, ($2AD9)
001041     D0            ret nc
001042     FE1E          cp a, $1E
001044     D2D010        jp nc, $10D0
001047     00            nop 
001048     F5            push af
001049     F3            di 
00104A     3E8C          ld a, $8C
00104C     ED3924        out0 ($24), a
00104F     FE8C          cp a, $8C
001051     C26600        jp nz, $0066
001054     00            nop 
001055     ED3806        in0 a, ($06)
001058     CBD7          set 2, a
00105A     ED3906        out0 ($06), a
00105D     00            nop 
00105E     00            nop 
00105F     3E04          ld a, $04
001061     F3            di 
001062     1800          jr $1064
001064     F3            di 
001065     ED7E          rsmix 
001067     ED56          im 1
001069     ED3928        out0 ($28), a
00106C     ED3828        in0 a, ($28)
00106F     CB57          bit 2, a
001071     C5            push bc
001072     D5            push de
001073     E5            push hl
001074     ED733F05      ld ($053F), sp
001078     D0            ret nc
001079     2A3F05        ld hl, ($053F)
00107C     D0            ret nc
00107D     017E98        ld bc, $987E
001080     D1            pop de
001081     117EA8        ld de, $A87E
001084     D1            pop de
001085     B7            or a, a
001086     E5            push hl
001087     ED42          sbc hl, bc
001089     3807          jr c, $1092
00108B     E1            pop hl
00108C     E5            push hl
00108D     D5            push de
00108E     EB            ex de, hl
00108F     ED52          sbc hl, de
001091     D1            pop de
001092     3F            ccf 
001093     E1            pop hl
001094     D26600        jp nc, $0066
001097     00            nop 
001098     E1            pop hl
001099     D1            pop de
00109A     C1            pop bc
00109B     F1            pop af
00109C     E5            push hl
00109D     010000        ld bc, $0000
0010A0     00            nop 
0010A1     C5            push bc
0010A2     CD1E61        call $611E
0010A5     00            nop 
0010A6     C1            pop bc
0010A7     C1            pop bc
0010A8     F5            push af
0010A9     AF            xor a, a
0010AA     F3            di 
0010AB     1800          jr $10AD
0010AD     F3            di 
0010AE     ED7E          rsmix 
0010B0     ED56          im 1
0010B2     ED3928        out0 ($28), a
0010B5     ED3828        in0 a, ($28)
0010B8     CB57          bit 2, a
0010BA     ED3806        in0 a, ($06)
0010BD     CB97          res 2, a
0010BF     ED3906        out0 ($06), a
0010C2     00            nop 
0010C3     00            nop 
0010C4     3E88          ld a, $88
0010C6     ED3924        out0 ($24), a
0010C9     FE88          cp a, $88
0010CB     C26600        jp nz, $0066
0010CE     00            nop 
0010CF     F1            pop af
0010D0     FDE1          pop iy
0010D2     F1            pop af
0010D3     F5            push af
0010D4     FDE5          push iy
0010D6     CD2AAE        call $AE2A
0010D9     00            nop 
0010DA     FDE1          pop iy
0010DC     F1            pop af
0010DD     CDBC1E        call $1EBC
0010E0     01FD21        ld bc, $21FD
0010E3     80            add a, b
0010E4     00            nop 
0010E5     D0            ret nc
0010E6     CDC456        call $56C4
0010E9     00            nop 
0010EA     215C15        ld hl, $155C
0010ED     00            nop 
0010EE     CD0755        call $5507
0010F1     00            nop 
0010F2     CD2055        call $5520
0010F5     00            nop 
0010F6     CD3E55        call $553E
0010F9     00            nop 
0010FA     CD2055        call $5520
0010FD     00            nop 
0010FE     216915        ld hl, $1569
001101     00            nop 
001102     CD0755        call $5507
001105     00            nop 
001106     ED3803        in0 a, ($03)
001109     E601          and a, $01
00110B     2806          jr z, $1113
00110D     21A615        ld hl, $15A6
001110     00            nop 
001111     1804          jr $1117
001113     219315        ld hl, $1593
001116     00            nop 
001117     CD0755        call $5507
00111A     00            nop 
00111B     21B915        ld hl, $15B9
00111E     00            nop 
00111F     CD0755        call $5507
001122     00            nop 
001123     CD131A        call $1A13
001126     00            nop 
001127     380E          jr c, $1137
001129     3E09          ld a, $09
00112B     210017        ld hl, $1700
00112E     00            nop 
00112F     229505        ld ($0595), hl
001132     D0            ret nc
001133     CDBC54        call $54BC
001136     00            nop 
001137     01130F        ld bc, $0F13
00113A     00            nop 
00113B     C5            push bc
00113C     CD5A5F        call $5F5A
00113F     00            nop 
001140     C1            pop bc
001141     2816          jr z, $1159
001143     FDCBDE05      set 3, (iy+$05)
001147     3E0A          ld a, $0A
001149     210019        ld hl, $1900
00114C     00            nop 
00114D     229505        ld ($0595), hl
001150     D0            ret nc
001151     CDBC54        call $54BC
001154     00            nop 
001155     FDCB9E05      res 3, (iy+$05)
001159     CDB411        call $11B4
00115C     00            nop 
00115D     ED380F        in0 a, ($0F)
001160     CB7F          bit 7, a
001162     010000        ld bc, $0000
001165     00            nop 
001166     203E          jr nz, $11A6
001168     CB77          bit 6, a
00116A     010200        ld bc, $0002
00116D     00            nop 
00116E     281E          jr z, $118E
001170     CD9112        call $1291
001173     00            nop 
001174     ED380F        in0 a, ($0F)
001177     CB77          bit 6, a
001179     28DE          jr z, $1159
00117B     CB7F          bit 7, a
00117D     28DA          jr z, $1159
00117F     AF            xor a, a
001180     32B777        ld ($77B7), a
001183     D1            pop de
001184     FDE5          push iy
001186     CD2AAE        call $AE2A
001189     00            nop 
00118A     FDE1          pop iy
00118C     18CB          jr $1159
00118E     C5            push bc
00118F     CDB60D        call $0DB6
001192     00            nop 
001193     CAA313        jp z, $13A3
001196     00            nop 
001197     CDCB12        call $12CB
00119A     00            nop 
00119B     CDB71E        call $1EB7
00119E     01FE40        ld bc, $40FE
0011A1     D2A313        jp nc, $13A3
0011A4     00            nop 
0011A5     C1            pop bc
0011A6     FDE5          push iy
0011A8     C5            push bc
0011A9     CD1E7C        call $7C1E
0011AC     00            nop 
0011AD     C1            pop bc
0011AE     FDE1          pop iy
0011B0     C3E610        jp $10E6
0011B3     00            nop 
0011B4     F5            push af
0011B5     C5            push bc
0011B6     D5            push de
0011B7     E5            push hl
0011B8     CDB837        call $37B8
0011BB     00            nop 
0011BC     FE0F          cp a, $0F
0011BE     C27012        jp nz, $1270
0011C1     00            nop 
0011C2     3E08          ld a, $08
0011C4     329505        ld ($0595), a
0011C7     D0            ret nc
0011C8     97            sub a, a
0011C9     329605        ld ($0596), a
0011CC     D0            ret nc
0011CD     21CE15        ld hl, $15CE
0011D0     00            nop 
0011D1     CD0755        call $5507
0011D4     00            nop 
0011D5     F5            push af
0011D6     F3            di 
0011D7     3E8C          ld a, $8C
0011D9     ED3924        out0 ($24), a
0011DC     FE8C          cp a, $8C
0011DE     C26600        jp nz, $0066
0011E1     00            nop 
0011E2     ED3806        in0 a, ($06)
0011E5     CBD7          set 2, a
0011E7     ED3906        out0 ($06), a
0011EA     00            nop 
0011EB     00            nop 
0011EC     3E04          ld a, $04
0011EE     F3            di 
0011EF     1800          jr $11F1
0011F1     F3            di 
0011F2     ED7E          rsmix 
0011F4     ED56          im 1
0011F6     ED3928        out0 ($28), a
0011F9     ED3828        in0 a, ($28)
0011FC     CB57          bit 2, a
0011FE     C5            push bc
0011FF     D5            push de
001200     E5            push hl
001201     ED733F05      ld ($053F), sp
001205     D0            ret nc
001206     2A3F05        ld hl, ($053F)
001209     D0            ret nc
00120A     017E98        ld bc, $987E
00120D     D1            pop de
00120E     117EA8        ld de, $A87E
001211     D1            pop de
001212     B7            or a, a
001213     E5            push hl
001214     ED42          sbc hl, bc
001216     3807          jr c, $121F
001218     E1            pop hl
001219     E5            push hl
00121A     D5            push de
00121B     EB            ex de, hl
00121C     ED52          sbc hl, de
00121E     D1            pop de
00121F     3F            ccf 
001220     E1            pop hl
001221     D26600        jp nc, $0066
001224     00            nop 
001225     E1            pop hl
001226     D1            pop de
001227     C1            pop bc
001228     F1            pop af
001229     CD420C        call $0C42
00122C     00            nop 
00122D     F5            push af
00122E     AF            xor a, a
00122F     F3            di 
001230     1800          jr $1232
001232     F3            di 
001233     ED7E          rsmix 
001235     ED56          im 1
001237     ED3928        out0 ($28), a
00123A     ED3828        in0 a, ($28)
00123D     CB57          bit 2, a
00123F     ED3806        in0 a, ($06)
001242     CB97          res 2, a
001244     ED3906        out0 ($06), a
001247     00            nop 
001248     00            nop 
001249     3E88          ld a, $88
00124B     ED3924        out0 ($24), a
00124E     FE88          cp a, $88
001250     C26600        jp nz, $0066
001253     00            nop 
001254     F1            pop af
001255     97            sub a, a
001256     329605        ld ($0596), a
001259     D0            ret nc
00125A     CD3E55        call $553E
00125D     00            nop 
00125E     3A9505        ld a, ($0595)
001261     D0            ret nc
001262     3D            dec a
001263     329505        ld ($0595), a
001266     D0            ret nc
001267     97            sub a, a
001268     329605        ld ($0596), a
00126B     D0            ret nc
00126C     CD3E55        call $553E
00126F     00            nop 
001270     E1            pop hl
001271     D1            pop de
001272     C1            pop bc
001273     F1            pop af
001274     C9            ret 
001275     E5            push hl
001276     212600        ld hl, $0026
001279     00            nop 
00127A     225826        ld ($2658), hl
00127D     D0            ret nc
00127E     E1            pop hl
00127F     C9            ret 
001280     FB            ei 
001281     76            halt 
001282     00            nop 
001283     E5            push hl
001284     2A5826        ld hl, ($2658)
001287     D0            ret nc
001288     7D            ld a, l
001289     B4            or a, h
00128A     2803          jr z, $128F
00128C     3E01          ld a, $01
00128E     B7            or a, a
00128F     E1            pop hl
001290     C9            ret 
001291     06F8          ld b, $F8
001293     CD7512        call $1275
001296     00            nop 
001297     CDB60D        call $0DB6
00129A     00            nop 
00129B     281C          jr z, $12B9
00129D     CDB411        call $11B4
0012A0     00            nop 
0012A1     ED380F        in0 a, ($0F)
0012A4     CB7F          bit 7, a
0012A6     2004          jr nz, $12AC
0012A8     CB77          bit 6, a
0012AA     2001          jr nz, $12AD
0012AC     C9            ret 
0012AD     CD8012        call $1280
0012B0     00            nop 
0012B1     20E4          jr nz, $1297
0012B3     CDCB12        call $12CB
0012B6     00            nop 
0012B7     10DA          djnz $1293
0012B9     E5            push hl
0012BA     210000        ld hl, $0000
0012BD     00            nop 
0012BE     229505        ld ($0595), hl
0012C1     D0            ret nc
0012C2     E1            pop hl
0012C3     110000        ld de, $0000
0012C6     00            nop 
0012C7     C30535        jp $3505
0012CA     00            nop 
0012CB     E5            push hl
0012CC     21000C        ld hl, $0C00
0012CF     00            nop 
0012D0     CDDA12        call $12DA
0012D3     00            nop 
0012D4     E1            pop hl
0012D5     C9            ret 
0012D6     7C            ld a, h
0012D7     2F            cpl 
0012D8     2D            dec l
0012D9     5C            ld e, h
0012DA     F5            push af
0012DB     229505        ld ($0595), hl
0012DE     D0            ret nc
0012DF     3A4477        ld a, ($7744)
0012E2     D1            pop de
0012E3     3C            inc a
0012E4     E603          and a, $03
0012E6     324477        ld ($7744), a
0012E9     D1            pop de
0012EA     21D612        ld hl, $12D6
0012ED     00            nop 
0012EE     85            add a, l
0012EF     6F            ld l, a
0012F0     3E00          ld a, $00
0012F2     8C            adc a, h
0012F3     67            ld h, a
0012F4     7E            ld a, (hl)
0012F5     CDBC54        call $54BC
0012F8     00            nop 
0012F9     F1            pop af
0012FA     C9            ret 
0012FB     DDE5          push ix
0012FD     DD210913      ld ix, $1309
001301     00            nop 
001302     CD1B0B        call $0B1B
001305     00            nop 
001306     DDE1          pop ix
001308     C9            ret 
001309     45            ld b, l
00130A     00            nop 
00130B     3EAA          ld a, $AA
00130D     32AA0A        ld ($0AAA), a
001310     00            nop 
001311     3E55          ld a, $55
001313     325505        ld ($0555), a
001316     00            nop 
001317     3E90          ld a, $90
001319     32AA0A        ld ($0AAA), a
00131C     00            nop 
00131D     DD210000      ld ix, $0000
001321     00            nop 
001322     DD39          add ix, sp
001324     310020        ld sp, $2000
001327     00            nop 
001328     210400        ld hl, $0004
00132B     00            nop 
00132C     117C88        ld de, $887C
00132F     D1            pop de
001330     0608          ld b, $08
001332     7E            ld a, (hl)
001333     12            ld (de), a
001334     39            add hl, sp
001335     13            inc de
001336     10FA          djnz $1332
001338     310000        ld sp, $0000
00133B     01063F        ld bc, $3F06
00133E     7E            ld a, (hl)
00133F     12            ld (de), a
001340     39            add hl, sp
001341     13            inc de
001342     10FA          djnz $133E
001344     3EF0          ld a, $F0
001346     320000        ld ($0000), a
001349     00            nop 
00134A     DDF9          ld sp, ix
00134C     C3530B        jp $0B53
00134F     00            nop 
001350     3E7F          ld a, $7F
001352     32BA77        ld ($77BA), a
001355     D1            pop de
001356     FD218000      ld iy, $0080
00135A     D0            ret nc
00135B     FDCB9E05      res 3, (iy+$05)
00135F     210000        ld hl, $0000
001362     D0            ret nc
001363     110100        ld de, $0001
001366     D0            ret nc
001367     01D73F        ld bc, $3FD7
00136A     013600        ld bc, $0036
00136D     EDB0          ldir 
00136F     217C78        ld hl, $787C
001372     D1            pop de
001373     117D78        ld de, $787D
001376     D1            pop de
001377     010120        ld bc, $2001
00137A     00            nop 
00137B     3600          ld (hl), $00
00137D     EDB0          ldir 
00137F     21FFFE        ld hl, $FEFF
001382     D311          out ($11), a
001384     00            nop 
001385     FF            rst $0038
001386     D301          out ($01), a
001388     55            ld d, l
001389     02            ld (bc), a
00138A     00            nop 
00138B     3600          ld (hl), $00
00138D     EDB0          ldir 
00138F     AF            xor a, a
001390     32B777        ld ($77B7), a
001393     D1            pop de
001394     3E95          ld a, $95
001396     328F05        ld ($058F), a
001399     D0            ret nc
00139A     CDB456        call $56B4
00139D     00            nop 
00139E     CDCF56        call $56CF
0013A1     00            nop 
0013A2     C9            ret 
0013A3     CD605C        call $5C60
0013A6     00            nop 
0013A7     F3            di 
0013A8     3EC0          ld a, $C0
0013AA     ED3900        out0 ($00), a
0013AD     3ED4          ld a, $D4
0013AF     ED3909        out0 ($09), a
0013B2     76            halt 
0013B3     ED53D72A      ld ($2AD7), de
0013B7     D0            ret nc
0013B8     3AD92A        ld a, ($2AD9)
0013BB     D0            ret nc
0013BC     C9            ret 
0013BD     F3            di 
0013BE     AF            xor a, a
0013BF     C5            push bc
0013C0     ED3901        out0 ($01), a
0013C3     FE00          cp a, $00
0013C5     2801          jr z, $13C8
0013C7     CF            rst $0008
0013C8     40010510      ld.sis bc, $1005
0013CC     3E02          ld a, $02
0013CE     ED79          out (bc), a
0013D0     FE02          cp a, $02
0013D2     2801          jr z, $13D5
0013D4     CF            rst $0008
0013D5     78            ld a, b
0013D6     FE10          cp a, $10
0013D8     2801          jr z, $13DB
0013DA     CF            rst $0008
0013DB     79            ld a, c
0013DC     FE05          cp a, $05
0013DE     20FA          jr nz, $13DA
0013E0     C1            pop bc
0013E1     060F          ld b, $0F
0013E3     10FE          djnz $13E3
0013E5     C9            ret 
0013E6     F3            di 
0013E7     C5            push bc
0013E8     40010510      ld.sis bc, $1005
0013EC     3E04          ld a, $04
0013EE     ED79          out (bc), a
0013F0     FE04          cp a, $04
0013F2     2801          jr z, $13F5
0013F4     CF            rst $0008
0013F5     78            ld a, b
0013F6     FE10          cp a, $10
0013F8     2801          jr z, $13FB
0013FA     CF            rst $0008
0013FB     79            ld a, c
0013FC     FE05          cp a, $05
0013FE     20FA          jr nz, $13FA
001400     3E03          ld a, $03
001402     ED3901        out0 ($01), a
001405     FE03          cp a, $03
001407     2801          jr z, $140A
001409     CF            rst $0008
00140A     C1            pop bc
00140B     C9            ret 
00140C     F3            di 
00140D     3E10          ld a, $10
00140F     ED3900        out0 ($00), a
001412     00            nop 
001413     00            nop 
001414     76            halt 
001415     40011550      ld.sis bc, $5015
001419     ED78          in a, (bc)
00141B     2829          jr z, $1446
00141D     0E09          ld c, $09
00141F     17            rla 
001420     17            rla 
001421     387F          jr c, $14A2
001423     17            rla 
001424     DACE14        jp c, $14CE
001427     00            nop 
001428     17            rla 
001429     DAE414        jp c, $14E4
00142C     00            nop 
00142D     17            rla 
00142E     17            rla 
00142F     DA1215        jp c, $1512
001432     00            nop 
001433     17            rla 
001434     17            rla 
001435     3EFF          ld a, $FF
001437     ED79          out (bc), a
001439     78            ld a, b
00143A     FE50          cp a, $50
00143C     2801          jr z, $143F
00143E     CF            rst $0008
00143F     79            ld a, c
001440     FE09          cp a, $09
001442     20FA          jr nz, $143E
001444     1843          jr $1489
001446     0D            dec c
001447     ED78          in a, (bc)
001449     2823          jr z, $146E
00144B     0E08          ld c, $08
00144D     1F            rra 
00144E     1F            rra 
00144F     1F            rra 
001450     1F            rra 
001451     DAFA14        jp c, $14FA
001454     00            nop 
001455     1F            rra 
001456     DA2615        jp c, $1526
001459     00            nop 
00145A     1F            rra 
00145B     1F            rra 
00145C     1F            rra 
00145D     3EFF          ld a, $FF
00145F     ED79          out (bc), a
001461     78            ld a, b
001462     FE50          cp a, $50
001464     2801          jr z, $1467
001466     CF            rst $0008
001467     79            ld a, c
001468     FE08          cp a, $08
00146A     20FA          jr nz, $1466
00146C     181B          jr $1489
00146E     0C            inc c
00146F     0C            inc c
001470     ED78          in a, (bc)
001472     0E0A          ld c, $0A
001474     1F            rra 
001475     1F            rra 
001476     1F            rra 
001477     1F            rra 
001478     383A          jr c, $14B4
00147A     3EFF          ld a, $FF
00147C     ED79          out (bc), a
00147E     78            ld a, b
00147F     FE50          cp a, $50
001481     2801          jr z, $1484
001483     CF            rst $0008
001484     79            ld a, c
001485     FE0A          cp a, $0A
001487     20FA          jr nz, $1483
001489     E1            pop hl
00148A     22D72A        ld ($2AD7), hl
00148D     D0            ret nc
00148E     FD218000      ld iy, $0080
001492     D0            ret nc
001493     FDCBB61B      res 6, (iy+$1B)
001497     FDE1          pop iy
001499     DDE1          pop ix
00149B     D9            exx 
00149C     08            ex af, af'
00149D     00            nop 
00149E     00            nop 
00149F     FB            ei 
0014A0     ED4D          reti 
0014A2     AF            xor a, a
0014A3     CBF7          set 6, a
0014A5     ED79          out (bc), a
0014A7     78            ld a, b
0014A8     FE50          cp a, $50
0014AA     2801          jr z, $14AD
0014AC     CF            rst $0008
0014AD     79            ld a, c
0014AE     FE09          cp a, $09
0014B0     20FA          jr nz, $14AC
0014B2     18D5          jr $1489
0014B4     AF            xor a, a
0014B5     CBDF          set 3, a
0014B7     ED79          out (bc), a
0014B9     0E06          ld c, $06
0014BB     ED78          in a, (bc)
0014BD     CB9F          res 3, a
0014BF     ED79          out (bc), a
0014C1     78            ld a, b
0014C2     FE50          cp a, $50
0014C4     2801          jr z, $14C7
0014C6     CF            rst $0008
0014C7     79            ld a, c
0014C8     FE06          cp a, $06
0014CA     20FA          jr nz, $14C6
0014CC     18BB          jr $1489
0014CE     AF            xor a, a
0014CF     CBEF          set 5, a
0014D1     ED79          out (bc), a
0014D3     78            ld a, b
0014D4     FE50          cp a, $50
0014D6     2801          jr z, $14D9
0014D8     CF            rst $0008
0014D9     79            ld a, c
0014DA     FE09          cp a, $09
0014DC     20FA          jr nz, $14D8
0014DE     CDC092        call $92C0
0014E1     00            nop 
0014E2     18A5          jr $1489
0014E4     AF            xor a, a
0014E5     CBE7          set 4, a
0014E7     ED79          out (bc), a
0014E9     78            ld a, b
0014EA     FE50          cp a, $50
0014EC     2801          jr z, $14EF
0014EE     CF            rst $0008
0014EF     79            ld a, c
0014F0     FE09          cp a, $09
0014F2     20FA          jr nz, $14EE
0014F4     CD7CF9        call $F97C
0014F7     00            nop 
0014F8     188F          jr $1489
0014FA     AF            xor a, a
0014FB     CBDF          set 3, a
0014FD     ED79          out (bc), a
0014FF     78            ld a, b
001500     FE50          cp a, $50
001502     2801          jr z, $1505
001504     CF            rst $0008
001505     79            ld a, c
001506     FE08          cp a, $08
001508     20FA          jr nz, $1504
00150A     CDD341        call $41D3
00150D     01C389        ld bc, $89C3
001510     14            inc d
001511     00            nop 
001512     AF            xor a, a
001513     CBD7          set 2, a
001515     ED79          out (bc), a
001517     78            ld a, b
001518     FE50          cp a, $50
00151A     2801          jr z, $151D
00151C     CF            rst $0008
00151D     79            ld a, c
00151E     FE09          cp a, $09
001520     20FA          jr nz, $151C
001522     C38914        jp $1489
001525     00            nop 
001526     3E10          ld a, $10
001528     ED79          out (bc), a
00152A     78            ld a, b
00152B     FE50          cp a, $50
00152D     2801          jr z, $1530
00152F     CF            rst $0008
001530     79            ld a, c
001531     FE08          cp a, $08
001533     20FA          jr nz, $152F
001535     2A5826        ld hl, ($2658)
001538     D0            ret nc
001539     2B            dec hl
00153A     225826        ld ($2658), hl
00153D     D0            ret nc
00153E     3A5126        ld a, ($2651)
001541     D0            ret nc
001542     3D            dec a
001543     FEFF          cp a, $FF
001545     CA8914        jp z, $1489
001548     00            nop 
001549     325126        ld ($2651), a
00154C     D0            ret nc
00154D     C38914        jp $1489
001550     00            nop 
001551     42            ld b, d
001552     4F            ld c, a
001553     4F            ld c, a
001554     54            ld d, h
001555     2043          jr nz, $159A
001557     6F            ld l, a
001558     64            ld h, h
001559     65            ld h, l
00155A     2000          jr nz, $155C
00155C     2057          jr nz, $15B5
00155E     61            ld h, c
00155F     69            ld l, c
001560     74            ld (hl), h
001561     69            ld l, c
001562     6E            ld l, (hl)
001563     67            ld h, a
001564     2E2E          ld l, $2E
001566     2E20          ld l, $20
001568     00            nop 
001569     2050          jr nz, $15BB
00156B     6C            ld l, h
00156C     65            ld h, l
00156D     61            ld h, c
00156E     73            ld (hl), e
00156F     65            ld h, l
001570     2069          jr nz, $15DB
001572     6E            ld l, (hl)
001573     73            ld (hl), e
001574     74            ld (hl), h
001575     61            ld h, c
001576     6C            ld l, h
001577     6C            ld l, h
001578     D620          sub a, $20
00157A     6F            ld l, a
00157B     70            ld (hl), b
00157C     65            ld h, l
00157D     72            ld (hl), d
00157E     61            ld h, c
00157F     74            ld (hl), h
001580     69            ld l, c
001581     6E            ld l, (hl)
001582     67            ld h, a
001583     D620          sub a, $20
001585     73            ld (hl), e
001586     79            ld a, c
001587     73            ld (hl), e
001588     74            ld (hl), h
001589     65            ld h, l
00158A     6D            ld l, l
00158B     206E          jr nz, $15FB
00158D     6F            ld l, a
00158E     77            ld (hl), a
00158F     2ED6          ld l, $D6
001591     D600          sub a, $00
001593     2050          jr nz, $15E5
001595     72            ld (hl), d
001596     65            ld h, l
001597     73            ld (hl), e
001598     73            ld (hl), e
001599     20C1          jr nz, $155C
00159B     63            ld h, e
00159C     6C            ld l, h
00159D     65            ld h, l
00159E     61            ld h, c
00159F     72            ld (hl), d
0015A0     5D            ld e, l
0015A1     2074          jr nz, $1617
0015A3     6F            ld l, a
0015A4     D600          sub a, $00
0015A6     2050          jr nz, $15F8
0015A8     72            ld (hl), d
0015A9     65            ld h, l
0015AA     73            ld (hl), e
0015AB     73            ld (hl), e
0015AC     20C1          jr nz, $156F
0015AE     61            ld h, c
0015AF     6E            ld l, (hl)
0015B0     6E            ld l, (hl)
0015B1     75            ld (hl), l
0015B2     6C            ld l, h
0015B3     5D            ld e, l
0015B4     2074          jr nz, $162A
0015B6     6F            ld l, a
0015B7     D600          sub a, $00
0015B9     2065          jr nz, $1620
0015BB     72            ld (hl), d
0015BC     61            ld h, c
0015BD     73            ld (hl), e
0015BE     65            ld h, l
0015BF     2061          jr nz, $1622
0015C1     6C            ld l, h
0015C2     6C            ld l, h
0015C3     2073          jr nz, $1638
0015C5     74            ld (hl), h
0015C6     6F            ld l, a
0015C7     72            ld (hl), d
0015C8     61            ld h, c
0015C9     67            ld h, a
0015CA     65            ld h, l
0015CB     2ED6          ld l, $D6
0015CD     00            nop 
0015CE     2045          jr nz, $1615
0015D0     5241          ld.sil b, c
0015D2     53            ld d, e
0015D3     494E          ld.lis c, (hl)
0015D5     47            ld b, a
0015D6     2053          jr nz, $162B
0015D8     54            ld d, h
0015D9     4F            ld c, a
0015DA     5241          ld.sil b, c
0015DC     47            ld b, a
0015DD     45            ld b, l
0015DE     00            nop 
0015DF     E60F          and a, $0F
0015E1     229505        ld ($0595), hl
0015E4     D0            ret nc
0015E5     24            inc h
0015E6     E5            push hl
0015E7     FE0A          cp a, $0A
0015E9     3802          jr c, $15ED
0015EB     C607          add a, $07
0015ED     C630          add a, $30
0015EF     CDBC54        call $54BC
0015F2     00            nop 
0015F3     E1            pop hl
0015F4     C9            ret 
0015F5     CDD306        call $06D3
0015F8     00            nop 
0015F9     2801          jr z, $15FC
0015FB     C7            rst $0000
0015FC     F3            di 
0015FD     317EA8        ld sp, $A87E
001600     D1            pop de
001601     010510        ld bc, $1005
001604     00            nop 
001605     3E04          ld a, $04
001607     ED79          out (bc), a
001609     78            ld a, b
00160A     FE10          cp a, $10
00160C     C20C14        jp nz, $140C
00160F     00            nop 
001610     3E03          ld a, $03
001612     ED3901        out0 ($01), a
001615     FE03          cp a, $03
001617     C20C14        jp nz, $140C
00161A     00            nop 
00161B     F5            push af
00161C     F3            di 
00161D     3E8C          ld a, $8C
00161F     ED3924        out0 ($24), a
001622     FE8C          cp a, $8C
001624     C26600        jp nz, $0066
001627     00            nop 
001628     ED3806        in0 a, ($06)
00162B     CBD7          set 2, a
00162D     ED3906        out0 ($06), a
001630     00            nop 
001631     00            nop 
001632     3E04          ld a, $04
001634     F3            di 
001635     1800          jr $1637
001637     F3            di 
001638     ED7E          rsmix 
00163A     ED56          im 1
00163C     ED3928        out0 ($28), a
00163F     ED3828        in0 a, ($28)
001642     CB57          bit 2, a
001644     C5            push bc
001645     D5            push de
001646     E5            push hl
001647     ED733F05      ld ($053F), sp
00164B     D0            ret nc
00164C     2A3F05        ld hl, ($053F)
00164F     D0            ret nc
001650     017E98        ld bc, $987E
001653     D1            pop de
001654     117EA8        ld de, $A87E
001657     D1            pop de
001658     B7            or a, a
001659     E5            push hl
00165A     ED42          sbc hl, bc
00165C     3807          jr c, $1665
00165E     E1            pop hl
00165F     E5            push hl
001660     D5            push de
001661     EB            ex de, hl
001662     ED52          sbc hl, de
001664     D1            pop de
001665     3F            ccf 
001666     E1            pop hl
001667     D26600        jp nc, $0066
00166A     00            nop 
00166B     E1            pop hl
00166C     D1            pop de
00166D     C1            pop bc
00166E     F1            pop af
00166F     CD2E0C        call $0C2E
001672     00            nop 
001673     F5            push af
001674     AF            xor a, a
001675     F3            di 
001676     1800          jr $1678
001678     F3            di 
001679     ED7E          rsmix 
00167B     ED56          im 1
00167D     ED3928        out0 ($28), a
001680     ED3828        in0 a, ($28)
001683     CB57          bit 2, a
001685     ED3806        in0 a, ($06)
001688     CB97          res 2, a
00168A     ED3906        out0 ($06), a
00168D     00            nop 
00168E     00            nop 
00168F     3E88          ld a, $88
001691     ED3924        out0 ($24), a
001694     FE88          cp a, $88
001696     C26600        jp nz, $0066
001699     00            nop 
00169A     F1            pop af
00169B     C30C14        jp $140C
00169E     00            nop 
00169F     229505        ld ($0595), hl
0016A2     D0            ret nc
0016A3     24            inc h
0016A4     CDBC54        call $54BC
0016A7     00            nop 
0016A8     C9            ret 
0016A9     CDE116        call $16E1
0016AC     00            nop 
0016AD     CDCC16        call $16CC
0016B0     00            nop 
0016B1     3AD72A        ld a, ($2AD7)
0016B4     D0            ret nc
0016B5     1F            rra 
0016B6     1F            rra 
0016B7     1F            rra 
0016B8     1F            rra 
0016B9     CDDF15        call $15DF
0016BC     00            nop 
0016BD     3AD72A        ld a, ($2AD7)
0016C0     D0            ret nc
0016C1     CDDF15        call $15DF
0016C4     00            nop 
0016C5     DD23          inc ix
0016C7     DD23          inc ix
0016C9     DD23          inc ix
0016CB     C9            ret 
0016CC     3AD82A        ld a, ($2AD8)
0016CF     D0            ret nc
0016D0     1F            rra 
0016D1     1F            rra 
0016D2     1F            rra 
0016D3     1F            rra 
0016D4     CDDF15        call $15DF
0016D7     00            nop 
0016D8     3AD82A        ld a, ($2AD8)
0016DB     D0            ret nc
0016DC     CDDF15        call $15DF
0016DF     00            nop 
0016E0     C9            ret 
0016E1     3AD92A        ld a, ($2AD9)
0016E4     D0            ret nc
0016E5     1F            rra 
0016E6     1F            rra 
0016E7     1F            rra 
0016E8     1F            rra 
0016E9     CDDF15        call $15DF
0016EC     00            nop 
0016ED     3AD92A        ld a, ($2AD9)
0016F0     D0            ret nc
0016F1     CDDF15        call $15DF
0016F4     00            nop 
0016F5     C9            ret 
0016F6     DDE5          push ix
0016F8     DD210000      ld ix, $0000
0016FC     00            nop 
0016FD     DD39          add ix, sp
0016FF     C5            push bc
001700     D5            push de
001701     E5            push hl
001702     DD0FFD        ld (ix-$03), bc
001705     CD1F17        call $171F
001708     00            nop 
001709     380D          jr c, $1718
00170B     EB            ex de, hl
00170C     210000        ld hl, $0000
00170F     3C            inc a
001710     B7            or a, a
001711     ED52          sbc hl, de
001713     DD17FD        ld de, (ix-$03)
001716     ED52          sbc hl, de
001718     E1            pop hl
001719     D1            pop de
00171A     DDF9          ld sp, ix
00171C     DDE1          pop ix
00171E     C9            ret 
00171F     C5            push bc
001720     210100        ld hl, $0001
001723     3B            dec sp
001724     11F0FF        ld de, $FFF0
001727     00            nop 
001728     CD5017        call $1750
00172B     00            nop 
00172C     C1            pop bc
00172D     C9            ret 
00172E     7E            ld a, (hl)
00172F     FEFF          cp a, $FF
001731     2812          jr z, $1745
001733     23            inc hl
001734     BA            cp a, d
001735     2008          jr nz, $173F
001737     7E            ld a, (hl)
001738     E6F0          and a, $F0
00173A     BB            cp a, e
00173B     2002          jr nz, $173F
00173D     2B            dec hl
00173E     C9            ret 
00173F     CD7817        call $1778
001742     00            nop 
001743     30E9          jr nc, $172E
001745     3EFF          ld a, $FF
001747     CB7F          bit 7, a
001749     C9            ret 
00174A     23            inc hl
00174B     CDA117        call $17A1
00174E     00            nop 
00174F     C9            ret 
001750     210100        ld hl, $0001
001753     3B            dec sp
001754     CD2E17        call $172E
001757     00            nop 
001758     C0            ret nz
001759     C5            push bc
00175A     E5            push hl
00175B     010000        ld bc, $0000
00175E     3C            inc a
00175F     B7            or a, a
001760     ED42          sbc hl, bc
001762     E1            pop hl
001763     C1            pop bc
001764     3002          jr nc, $1768
001766     AF            xor a, a
001767     C9            ret 
001768     97            sub a, a
001769     3D            dec a
00176A     37            scf 
00176B     C9            ret 
00176C     23            inc hl
00176D     CD7817        call $1778
001770     00            nop 
001771     D8            ret c
001772     CD2E17        call $172E
001775     00            nop 
001776     C9            ret 
001777     23            inc hl
001778     CDA117        call $17A1
00177B     00            nop 
00177C     D8            ret c
00177D     09            add hl, bc
00177E     C9            ret 
00177F     DDE5          push ix
001781     DD210000      ld ix, $0000
001785     00            nop 
001786     DD39          add ix, sp
001788     C5            push bc
001789     DD2FFD        ld (ix-$03), hl
00178C     CD7717        call $1777
00178F     00            nop 
001790     DD07FD        ld bc, (ix-$03)
001793     B7            or a, a
001794     ED42          sbc hl, bc
001796     E5            push hl
001797     C1            pop bc
001798     DD27FD        ld hl, (ix-$03)
00179B     DDF9          ld sp, ix
00179D     DDE1          pop ix
00179F     C9            ret 
0017A0     23            inc hl
0017A1     DDE5          push ix
0017A3     DD210000      ld ix, $0000
0017A7     00            nop 
0017A8     DD39          add ix, sp
0017AA     C5            push bc
0017AB     010000        ld bc, $0000
0017AE     00            nop 
0017AF     7E            ld a, (hl)
0017B0     23            inc hl
0017B1     E60F          and a, $0F
0017B3     FE0D          cp a, $0D
0017B5     2004          jr nz, $17BB
0017B7     4E            ld c, (hl)
0017B8     23            inc hl
0017B9     1825          jr $17E0
0017BB     FE0E          cp a, $0E
0017BD     2006          jr nz, $17C5
0017BF     46            ld b, (hl)
0017C0     23            inc hl
0017C1     4E            ld c, (hl)
0017C2     23            inc hl
0017C3     181B          jr $17E0
0017C5     FE0F          cp a, $0F
0017C7     2016          jr nz, $17DF
0017C9     7E            ld a, (hl)
0017CA     B7            or a, a
0017CB     2803          jr z, $17D0
0017CD     37            scf 
0017CE     1811          jr $17E1
0017D0     23            inc hl
0017D1     7E            ld a, (hl)
0017D2     DD77FF        ld (ix-$01), a
0017D5     DD07FD        ld bc, (ix-$03)
0017D8     23            inc hl
0017D9     46            ld b, (hl)
0017DA     23            inc hl
0017DB     4E            ld c, (hl)
0017DC     23            inc hl
0017DD     1801          jr $17E0
0017DF     4F            ld c, a
0017E0     B7            or a, a
0017E1     DDF9          ld sp, ix
0017E3     DDE1          pop ix
0017E5     C9            ret 
0017E6     113003        ld de, $0330
0017E9     00            nop 
0017EA     CD5017        call $1750
0017ED     00            nop 
0017EE     2014          jr nz, $1804
0017F0     CD4A17        call $174A
0017F3     00            nop 
0017F4     112004        ld de, $0420
0017F7     00            nop 
0017F8     CD2E17        call $172E
0017FB     00            nop 
0017FC     2006          jr nz, $1804
0017FE     CD4A17        call $174A
001801     00            nop 
001802     1803          jr $1807
001804     B7            or a, a
001805     ED62          sbc hl, hl
001807     C9            ret 
001808     113003        ld de, $0330
00180B     00            nop 
00180C     CD5017        call $1750
00180F     00            nop 
001810     2014          jr nz, $1826
001812     CD4A17        call $174A
001815     00            nop 
001816     110004        ld de, $0400
001819     00            nop 
00181A     CD2E17        call $172E
00181D     00            nop 
00181E     2006          jr nz, $1826
001820     CD4A17        call $174A
001823     00            nop 
001824     1803          jr $1829
001826     B7            or a, a
001827     ED62          sbc hl, hl
001829     C9            ret 
00182A     DDE5          push ix
00182C     DD214C18      ld ix, $184C
001830     00            nop 
001831     F5            push af
001832     3E04          ld a, $04
001834     F3            di 
001835     1800          jr $1837
001837     F3            di 
001838     ED7E          rsmix 
00183A     ED56          im 1
00183C     ED3928        out0 ($28), a
00183F     ED3828        in0 a, ($28)
001842     CB57          bit 2, a
001844     F1            pop af
001845     CD1B0B        call $0B1B
001848     00            nop 
001849     DDE1          pop ix
00184B     C9            ret 
00184C     2E00          ld l, $00
00184E     3A7E00        ld a, ($007E)
001851     00            nop 
001852     CB77          bit 6, a
001854     2812          jr z, $1868
001856     3EAA          ld a, $AA
001858     32AA0A        ld ($0AAA), a
00185B     00            nop 
00185C     3E55          ld a, $55
00185E     325505        ld ($0555), a
001861     00            nop 
001862     3EA0          ld a, $A0
001864     32AA0A        ld ($0AAA), a
001867     00            nop 
001868     7E            ld a, (hl)
001869     12            ld (de), a
00186A     C5            push bc
00186B     47            ld b, a
00186C     1A            ld a, (de)
00186D     B8            cp a, b
00186E     20FC          jr nz, $186C
001870     C1            pop bc
001871     13            inc de
001872     23            inc hl
001873     0B            dec bc
001874     78            ld a, b
001875     B1            or a, c
001876     20D6          jr nz, $184E
001878     C3530B        jp $0B53
00187B     00            nop 
00187C     DDE5          push ix
00187E     DD210000      ld ix, $0000
001882     00            nop 
001883     DD39          add ix, sp
001885     C5            push bc
001886     DD2706        ld hl, (ix+$06)
001889     CD7F17        call $177F
00188C     00            nop 
00188D     DD0FFD        ld (ix-$03), bc
001890     CDF616        call $16F6
001893     00            nop 
001894     380F          jr c, $18A5
001896     CD1F17        call $171F
001899     00            nop 
00189A     EB            ex de, hl
00189B     DD2706        ld hl, (ix+$06)
00189E     DD07FD        ld bc, (ix-$03)
0018A1     CD2A18        call $182A
0018A4     00            nop 
0018A5     DDF9          ld sp, ix
0018A7     DDE1          pop ix
0018A9     C9            ret 
0018AA     DDE5          push ix
0018AC     DD210000      ld ix, $0000
0018B0     00            nop 
0018B1     DD39          add ix, sp
0018B3     3B            dec sp
0018B4     DD77FF        ld (ix-$01), a
0018B7     010100        ld bc, $0001
0018BA     00            nop 
0018BB     ED22FF        lea hl, ix-$01
0018BE     CD2A18        call $182A
0018C1     00            nop 
0018C2     DDF9          ld sp, ix
0018C4     DDE1          pop ix
0018C6     C9            ret 
0018C7     DDE5          push ix
0018C9     DD210000      ld ix, $0000
0018CD     00            nop 
0018CE     DD39          add ix, sp
0018D0     C5            push bc
0018D1     210100        ld hl, $0001
0018D4     3B            dec sp
0018D5     1808          jr $18DF
0018D7     CD7717        call $1777
0018DA     00            nop 
0018DB     DA7919        jp c, $1979
0018DE     00            nop 
0018DF     7E            ld a, (hl)
0018E0     FEFF          cp a, $FF
0018E2     CA7919        jp z, $1979
0018E5     00            nop 
0018E6     B7            or a, a
0018E7     20EE          jr nz, $18D7
0018E9     3EFF          ld a, $FF
0018EB     210000        ld hl, $0000
0018EE     3F            ccf 
0018EF     010000        ld bc, $0000
0018F2     01EDA1        ld bc, $A1ED
0018F5     2006          jr nz, $18FD
0018F7     EAF318        jp pe, $18F3
0018FA     00            nop 
0018FB     1808          jr $1905
0018FD     210000        ld hl, $0000
001900     3F            ccf 
001901     CD8E0C        call $0C8E
001904     00            nop 
001905     3EEE          ld a, $EE
001907     110000        ld de, $0000
00190A     3F            ccf 
00190B     CDAA18        call $18AA
00190E     00            nop 
00190F     210100        ld hl, $0001
001912     3B            dec sp
001913     110100        ld de, $0001
001916     3F            ccf 
001917     7E            ld a, (hl)
001918     FEFF          cp a, $FF
00191A     2815          jr z, $1931
00191C     B7            or a, a
00191D     280A          jr z, $1929
00191F     CD7F17        call $177F
001922     00            nop 
001923     CD2A18        call $182A
001926     00            nop 
001927     18EE          jr $1917
001929     CD7717        call $1777
00192C     00            nop 
00192D     3842          jr c, $1971
00192F     18E6          jr $1917
001931     EB            ex de, hl
001932     110100        ld de, $0001
001935     3F            ccf 
001936     B7            or a, a
001937     ED52          sbc hl, de
001939     DD2FFD        ld (ix-$03), hl
00193C     3EEC          ld a, $EC
00193E     110000        ld de, $0000
001941     3F            ccf 
001942     CDAA18        call $18AA
001945     00            nop 
001946     210000        ld hl, $0000
001949     3B            dec sp
00194A     CD8E0C        call $0C8E
00194D     00            nop 
00194E     3EEE          ld a, $EE
001950     110000        ld de, $0000
001953     3B            dec sp
001954     CDAA18        call $18AA
001957     00            nop 
001958     DD07FD        ld bc, (ix-$03)
00195B     110100        ld de, $0001
00195E     3B            dec sp
00195F     210100        ld hl, $0001
001962     3F            ccf 
001963     CD2A18        call $182A
001966     00            nop 
001967     3EEC          ld a, $EC
001969     110000        ld de, $0000
00196C     3B            dec sp
00196D     CDAA18        call $18AA
001970     00            nop 
001971     210000        ld hl, $0000
001974     3F            ccf 
001975     CD8E0C        call $0C8E
001978     00            nop 
001979     DDF9          ld sp, ix
00197B     DDE1          pop ix
00197D     C9            ret 
00197E     DDE5          push ix
001980     DD210000      ld ix, $0000
001984     00            nop 
001985     DD39          add ix, sp
001987     C5            push bc
001988     C5            push bc
001989     C5            push bc
00198A     C5            push bc
00198B     C5            push bc
00198C     C5            push bc
00198D     3B            dec sp
00198E     DDCB86ED      res 0, (ix-$13)
001992     115003        ld de, $0350
001995     00            nop 
001996     CD5017        call $1750
001999     00            nop 
00199A     2007          jr nz, $19A3
00199C     DD2FFD        ld (ix-$03), hl
00199F     DDCBC6ED      set 0, (ix-$13)
0019A3     115D03        ld de, $035D
0019A6     00            nop 
0019A7     DD72EE        ld (ix-$12), d
0019AA     DD73EF        ld (ix-$11), e
0019AD     DD2709        ld hl, (ix+$09)
0019B0     010C00        ld bc, $000C
0019B3     00            nop 
0019B4     B7            or a, a
0019B5     ED42          sbc hl, bc
0019B7     2802          jr z, $19BB
0019B9     302E          jr nc, $19E9
0019BB     DD0709        ld bc, (ix+$09)
0019BE     DD71F0        ld (ix-$10), c
0019C1     DD2706        ld hl, (ix+$06)
0019C4     ED12F1        lea de, ix-$0F
0019C7     EDB0          ldir 
0019C9     ED65EE        pea ix-$12
0019CC     CD7C18        call $187C
0019CF     00            nop 
0019D0     C1            pop bc
0019D1     3814          jr c, $19E7
0019D3     DDCB46ED      bit 0, (ix-$13)
0019D7     280D          jr z, $19E6
0019D9     DD17FD        ld de, (ix-$03)
0019DC     3E00          ld a, $00
0019DE     CDAA18        call $18AA
0019E1     00            nop 
0019E2     CDC718        call $18C7
0019E5     00            nop 
0019E6     AF            xor a, a
0019E7     1803          jr $19EC
0019E9     37            scf 
0019EA     3EFF          ld a, $FF
0019EC     DDF9          ld sp, ix
0019EE     DDE1          pop ix
0019F0     C9            ret 
0019F1     115003        ld de, $0350
0019F4     00            nop 
0019F5     CD5017        call $1750
0019F8     00            nop 
0019F9     2005          jr nz, $1A00
0019FB     CD4A17        call $174A
0019FE     00            nop 
0019FF     AF            xor a, a
001A00     C9            ret 
001A01     CDF119        call $19F1
001A04     00            nop 
001A05     2812          jr z, $1A19
001A07     010000        ld bc, $0000
001A0A     00            nop 
001A0B     CD1D1A        call $1A1D
001A0E     00            nop 
001A0F     2802          jr z, $1A13
001A11     37            scf 
001A12     C9            ret 
001A13     CDF119        call $19F1
001A16     00            nop 
001A17     20F8          jr nz, $1A11
001A19     ED07          ld bc, (hl)
001A1B     AF            xor a, a
001A1C     C9            ret 
001A1D     21F805        ld hl, $05F8
001A20     D0            ret nc
001A21     ED0F          ld (hl), bc
001A23     010300        ld bc, $0003
001A26     00            nop 
001A27     C5            push bc
001A28     E5            push hl
001A29     CD7E19        call $197E
001A2C     00            nop 
001A2D     C1            pop bc
001A2E     C1            pop bc
001A2F     C9            ret 
001A30     CDA01A        call $1AA0
001A33     00            nop 
001A34     2805          jr z, $1A3B
001A36     210000        ld hl, $0000
001A39     00            nop 
001A3A     C9            ret 
001A3B     ED27          ld hl, (hl)
001A3D     C9            ret 
001A3E     DDE5          push ix
001A40     DD210000      ld ix, $0000
001A44     00            nop 
001A45     DD39          add ix, sp
001A47     DD2706        ld hl, (ix+$06)
001A4A     CD4A17        call $174A
001A4D     00            nop 
001A4E     111080        ld de, $8010
001A51     00            nop 
001A52     CD2E17        call $172E
001A55     00            nop 
001A56     2010          jr nz, $1A68
001A58     CD4A17        call $174A
001A5B     00            nop 
001A5C     ED27          ld hl, (hl)
001A5E     011300        ld bc, $0013
001A61     00            nop 
001A62     B7            or a, a
001A63     52ED42        sbc.sil hl, bc
001A66     2806          jr z, $1A6E
001A68     CD301A        call $1A30
001A6B     00            nop 
001A6C     181A          jr $1A88
001A6E     DD2706        ld hl, (ix+$06)
001A71     CD4A17        call $174A
001A74     00            nop 
001A75     11D080        ld de, $80D0
001A78     00            nop 
001A79     CD2E17        call $172E
001A7C     00            nop 
001A7D     2009          jr nz, $1A88
001A7F     CD4A17        call $174A
001A82     00            nop 
001A83     23            inc hl
001A84     23            inc hl
001A85     23            inc hl
001A86     ED27          ld hl, (hl)
001A88     DDE1          pop ix
001A8A     C9            ret 
001A8B     DDE5          push ix
001A8D     DD210000      ld ix, $0000
001A91     00            nop 
001A92     DD39          add ix, sp
001A94     DD2706        ld hl, (ix+$06)
001A97     E5            push hl
001A98     CDB01A        call $1AB0
001A9B     00            nop 
001A9C     C1            pop bc
001A9D     DDE1          pop ix
001A9F     C9            ret 
001AA0     117003        ld de, $0370
001AA3     00            nop 
001AA4     CD5017        call $1750
001AA7     00            nop 
001AA8     2005          jr nz, $1AAF
001AAA     CD4A17        call $174A
001AAD     00            nop 
001AAE     AF            xor a, a
001AAF     C9            ret 
001AB0     DDE5          push ix
001AB2     DD210000      ld ix, $0000
001AB6     00            nop 
001AB7     DD39          add ix, sp
001AB9     C5            push bc
001ABA     C5            push bc
001ABB     C5            push bc
001ABC     3B            dec sp
001ABD     DDCB86F6      res 0, (ix-$0A)
001AC1     117003        ld de, $0370
001AC4     00            nop 
001AC5     CD5017        call $1750
001AC8     00            nop 
001AC9     2007          jr nz, $1AD2
001ACB     DD2FFD        ld (ix-$03), hl
001ACE     DDCBC6F6      set 0, (ix-$0A)
001AD2     117303        ld de, $0373
001AD5     00            nop 
001AD6     DD72F7        ld (ix-$09), d
001AD9     DD73F8        ld (ix-$08), e
001ADC     DD2706        ld hl, (ix+$06)
001ADF     DD2FF9        ld (ix-$07), hl
001AE2     ED65F7        pea ix-$09
001AE5     CD7C18        call $187C
001AE8     00            nop 
001AE9     C1            pop bc
001AEA     3814          jr c, $1B00
001AEC     DDCB46F6      bit 0, (ix-$0A)
001AF0     280D          jr z, $1AFF
001AF2     DD17FD        ld de, (ix-$03)
001AF5     3E00          ld a, $00
001AF7     CDAA18        call $18AA
001AFA     00            nop 
001AFB     CDC718        call $18C7
001AFE     00            nop 
001AFF     AF            xor a, a
001B00     DDF9          ld sp, ix
001B02     DDE1          pop ix
001B04     C9            ret 
001B05     F5            push af
001B06     FDE5          push iy
001B08     C5            push bc
001B09     FDE1          pop iy
001B0B     E5            push hl
001B0C     C1            pop bc
001B0D     FD2700        ld hl, (iy)
001B10     B7            or a, a
001B11     ED42          sbc hl, bc
001B13     2815          jr z, $1B2A
001B15     ED3306        lea iy, iy+$06
001B18     1B            dec de
001B19     D5            push de
001B1A     EB            ex de, hl
001B1B     110000        ld de, $0000
001B1E     00            nop 
001B1F     B7            or a, a
001B20     ED52          sbc hl, de
001B22     D1            pop de
001B23     20E8          jr nz, $1B0D
001B25     FD2700        ld hl, (iy)
001B28     1803          jr $1B2D
001B2A     FD2703        ld hl, (iy+$03)
001B2D     FDE1          pop iy
001B2F     F1            pop af
001B30     C9            ret 
001B31     FDE3          ex (sp), iy
001B33     F5            push af
001B34     C5            push bc
001B35     D5            push de
001B36     ED3302        lea iy, iy+$02
001B39     FD17FE        ld de, (iy-$02)
001B3C     010000        ld bc, $0000
001B3F     00            nop 
001B40     FD4E00        ld c, (iy)
001B43     FD4601        ld b, (iy+$01)
001B46     ED3302        lea iy, iy+$02
001B49     E5            push hl
001B4A     B7            or a, a
001B4B     ED42          sbc hl, bc
001B4D     E1            pop hl
001B4E     2811          jr z, $1B61
001B50     521B          dec.sil de
001B52     0600          ld b, $00
001B54     0E00          ld c, $00
001B56     EB            ex de, hl
001B57     B7            or a, a
001B58     52ED42        sbc.sil hl, bc
001B5B     EB            ex de, hl
001B5C     ED3303        lea iy, iy+$03
001B5F     20DB          jr nz, $1B3C
001B61     FD2700        ld hl, (iy)
001B64     D1            pop de
001B65     C1            pop bc
001B66     F1            pop af
001B67     FDE3          ex (sp), iy
001B69     E3            ex (sp), hl
001B6A     C9            ret 
001B6B     FDE3          ex (sp), iy
001B6D     FDE5          push iy
001B6F     F5            push af
001B70     C5            push bc
001B71     D5            push de
001B72     ED3303        lea iy, iy+$03
001B75     FD17FE        ld de, (iy-$02)
001B78     010000        ld bc, $0000
001B7B     00            nop 
001B7C     FD4E00        ld c, (iy)
001B7F     FD4601        ld b, (iy+$01)
001B82     ED3302        lea iy, iy+$02
001B85     E5            push hl
001B86     B7            or a, a
001B87     ED42          sbc hl, bc
001B89     E1            pop hl
001B8A     2811          jr z, $1B9D
001B8C     521B          dec.sil de
001B8E     0600          ld b, $00
001B90     0E00          ld c, $00
001B92     EB            ex de, hl
001B93     B7            or a, a
001B94     52ED42        sbc.sil hl, bc
001B97     EB            ex de, hl
001B98     ED3303        lea iy, iy+$03
001B9B     20DB          jr nz, $1B78
001B9D     FD2700        ld hl, (iy)
001BA0     D1            pop de
001BA1     C1            pop bc
001BA2     F1            pop af
001BA3     FDE1          pop iy
001BA5     FDE3          ex (sp), iy
001BA7     C9            ret 
001BA8     FDE3          ex (sp), iy
001BAA     F5            push af
001BAB     C5            push bc
001BAC     D5            push de
001BAD     ED3302        lea iy, iy+$02
001BB0     FD17FE        ld de, (iy-$02)
001BB3     FD0700        ld bc, (iy)
001BB6     ED3303        lea iy, iy+$03
001BB9     E5            push hl
001BBA     B7            or a, a
001BBB     ED42          sbc hl, bc
001BBD     E1            pop hl
001BBE     2811          jr z, $1BD1
001BC0     521B          dec.sil de
001BC2     0600          ld b, $00
001BC4     0E00          ld c, $00
001BC6     EB            ex de, hl
001BC7     B7            or a, a
001BC8     52ED42        sbc.sil hl, bc
001BCB     EB            ex de, hl
001BCC     ED3303        lea iy, iy+$03
001BCF     20E2          jr nz, $1BB3
001BD1     FD2700        ld hl, (iy)
001BD4     D1            pop de
001BD5     C1            pop bc
001BD6     F1            pop af
001BD7     FDE3          ex (sp), iy
001BD9     E3            ex (sp), hl
001BDA     C9            ret 
001BDB     FDE3          ex (sp), iy
001BDD     FDE5          push iy
001BDF     F5            push af
001BE0     C5            push bc
001BE1     D5            push de
001BE2     ED3303        lea iy, iy+$03
001BE5     FD17FE        ld de, (iy-$02)
001BE8     FD0700        ld bc, (iy)
001BEB     ED3303        lea iy, iy+$03
001BEE     E5            push hl
001BEF     B7            or a, a
001BF0     ED42          sbc hl, bc
001BF2     E1            pop hl
001BF3     2811          jr z, $1C06
001BF5     521B          dec.sil de
001BF7     0600          ld b, $00
001BF9     0E00          ld c, $00
001BFB     EB            ex de, hl
001BFC     B7            or a, a
001BFD     52ED42        sbc.sil hl, bc
001C00     EB            ex de, hl
001C01     ED3303        lea iy, iy+$03
001C04     20E2          jr nz, $1BE8
001C06     FD2700        ld hl, (iy)
001C09     D1            pop de
001C0A     C1            pop bc
001C0B     F1            pop af
001C0C     FDE1          pop iy
001C0E     FDE3          ex (sp), iy
001C10     C9            ret 
001C11     FDE3          ex (sp), iy
001C13     F5            push af
001C14     C5            push bc
001C15     D5            push de
001C16     ED3302        lea iy, iy+$02
001C19     FD17FE        ld de, (iy-$02)
001C1C     010000        ld bc, $0000
001C1F     00            nop 
001C20     FD4E00        ld c, (iy)
001C23     FD23          inc iy
001C25     E5            push hl
001C26     B7            or a, a
001C27     ED42          sbc hl, bc
001C29     E1            pop hl
001C2A     2811          jr z, $1C3D
001C2C     521B          dec.sil de
001C2E     0600          ld b, $00
001C30     0E00          ld c, $00
001C32     EB            ex de, hl
001C33     B7            or a, a
001C34     52ED42        sbc.sil hl, bc
001C37     EB            ex de, hl
001C38     ED3303        lea iy, iy+$03
001C3B     20DF          jr nz, $1C1C
001C3D     FD2700        ld hl, (iy)
001C40     D1            pop de
001C41     C1            pop bc
001C42     F1            pop af
001C43     FDE3          ex (sp), iy
001C45     E3            ex (sp), hl
001C46     C9            ret 
001C47     FDE3          ex (sp), iy
001C49     FDE5          push iy
001C4B     F5            push af
001C4C     C5            push bc
001C4D     D5            push de
001C4E     ED3303        lea iy, iy+$03
001C51     FD17FE        ld de, (iy-$02)
001C54     010000        ld bc, $0000
001C57     00            nop 
001C58     FD4E00        ld c, (iy)
001C5B     FD23          inc iy
001C5D     E5            push hl
001C5E     B7            or a, a
001C5F     ED42          sbc hl, bc
001C61     E1            pop hl
001C62     2811          jr z, $1C75
001C64     521B          dec.sil de
001C66     0600          ld b, $00
001C68     0E00          ld c, $00
001C6A     EB            ex de, hl
001C6B     B7            or a, a
001C6C     52ED42        sbc.sil hl, bc
001C6F     EB            ex de, hl
001C70     ED3303        lea iy, iy+$03
001C73     20DF          jr nz, $1C54
001C75     FD2700        ld hl, (iy)
001C78     D1            pop de
001C79     C1            pop bc
001C7A     F1            pop af
001C7B     FDE1          pop iy
001C7D     FDE3          ex (sp), iy
001C7F     C9            ret 
001C80     DDE3          ex (sp), ix
001C82     ED2200        lea hl, ix
001C85     DD210000      ld ix, $0000
001C89     00            nop 
001C8A     DD39          add ix, sp
001C8C     E9            jp (hl)
001C8D     DDE3          ex (sp), ix
001C8F     ED1200        lea de, ix
001C92     DD210000      ld ix, $0000
001C96     00            nop 
001C97     DD39          add ix, sp
001C99     39            add hl, sp
001C9A     F9            ld sp, hl
001C9B     EB            ex de, hl
001C9C     E9            jp (hl)
001C9D     F5            push af
001C9E     C5            push bc
001C9F     E5            push hl
001CA0     210200        ld hl, $0002
001CA3     00            nop 
001CA4     39            add hl, sp
001CA5     7E            ld a, (hl)
001CA6     23            inc hl
001CA7     23            inc hl
001CA8     23            inc hl
001CA9     A6            and a, (hl)
001CAA     2B            dec hl
001CAB     2B            dec hl
001CAC     2B            dec hl
001CAD     77            ld (hl), a
001CAE     E1            pop hl
001CAF     C1            pop bc
001CB0     7C            ld a, h
001CB1     A0            and a, b
001CB2     67            ld h, a
001CB3     7D            ld a, l
001CB4     A1            and a, c
001CB5     6F            ld l, a
001CB6     F1            pop af
001CB7     C9            ret 
001CB8     E5            push hl
001CB9     D5            push de
001CBA     110000        ld de, $0000
001CBD     00            nop 
001CBE     B7            or a, a
001CBF     ED52          sbc hl, de
001CC1     D1            pop de
001CC2     E1            pop hl
001CC3     C9            ret 
001CC4     F5            push af
001CC5     D5            push de
001CC6     C5            push bc
001CC7     E5            push hl
001CC8     EB            ex de, hl
001CC9     B7            or a, a
001CCA     ED62          sbc hl, hl
001CCC     ED52          sbc hl, de
001CCE     FAD31C        jp m, $1CD3
001CD1     00            nop 
001CD2     EB            ex de, hl
001CD3     B7            or a, a
001CD4     ED62          sbc hl, hl
001CD6     ED42          sbc hl, bc
001CD8     FADE1C        jp m, $1CDE
001CDB     00            nop 
001CDC     E5            push hl
001CDD     C1            pop bc
001CDE     EB            ex de, hl
001CDF     CDFD1C        call $1CFD
001CE2     00            nop 
001CE3     EB            ex de, hl
001CE4     210200        ld hl, $0002
001CE7     00            nop 
001CE8     39            add hl, sp
001CE9     7E            ld a, (hl)
001CEA     23            inc hl
001CEB     F9            ld sp, hl
001CEC     23            inc hl
001CED     23            inc hl
001CEE     AE            xor a, (hl)
001CEF     F2F81C        jp p, $1CF8
001CF2     00            nop 
001CF3     ED62          sbc hl, hl
001CF5     ED52          sbc hl, de
001CF7     EB            ex de, hl
001CF8     EB            ex de, hl
001CF9     C1            pop bc
001CFA     D1            pop de
001CFB     F1            pop af
001CFC     C9            ret 
001CFD     F5            push af
001CFE     D5            push de
001CFF     CD071D        call $1D07
001D02     00            nop 
001D03     EB            ex de, hl
001D04     D1            pop de
001D05     F1            pop af
001D06     C9            ret 
001D07     EB            ex de, hl
001D08     3E18          ld a, $18
001D0A     B7            or a, a
001D0B     ED62          sbc hl, hl
001D0D     EB            ex de, hl
001D0E     29            add hl, hl
001D0F     EB            ex de, hl
001D10     ED6A          adc hl, hl
001D12     ED42          sbc hl, bc
001D14     3003          jr nc, $1D19
001D16     09            add hl, bc
001D17     1801          jr $1D1A
001D19     1C            inc e
001D1A     3D            dec a
001D1B     20F0          jr nz, $1D0D
001D1D     C9            ret 
001D1E     DDE5          push ix
001D20     F5            push af
001D21     DD09          add ix, bc
001D23     F1            pop af
001D24     DD2700        ld hl, (ix)
001D27     DDE1          pop ix
001D29     C9            ret 
001D2A     FDE5          push iy
001D2C     F5            push af
001D2D     FD09          add iy, bc
001D2F     F1            pop af
001D30     FD2700        ld hl, (iy)
001D33     FDE1          pop iy
001D35     C9            ret 
001D36     C5            push bc
001D37     010000        ld bc, $0000
001D3A     00            nop 
001D3B     4F            ld c, a
001D3C     CD421D        call $1D42
001D3F     00            nop 
001D40     C1            pop bc
001D41     C9            ret 
001D42     F5            push af
001D43     D5            push de
001D44     C5            push bc
001D45     E5            push hl
001D46     EB            ex de, hl
001D47     210200        ld hl, $0002
001D4A     00            nop 
001D4B     39            add hl, sp
001D4C     46            ld b, (hl)
001D4D     ED4C          mlt bc
001D4F     23            inc hl
001D50     23            inc hl
001D51     23            inc hl
001D52     7A            ld a, d
001D53     56            ld d, (hl)
001D54     ED5C          mlt de
001D56     2B            dec hl
001D57     6E            ld l, (hl)
001D58     67            ld h, a
001D59     ED6C          mlt hl
001D5B     7D            ld a, l
001D5C     83            add a, e
001D5D     81            add a, c
001D5E     D1            pop de
001D5F     C1            pop bc
001D60     C5            push bc
001D61     B7            or a, a
001D62     ED62          sbc hl, hl
001D64     5219          add.sil hl, de
001D66     EB            ex de, hl
001D67     60            ld h, b
001D68     ED6C          mlt hl
001D6A     42            ld b, d
001D6B     ED4C          mlt bc
001D6D     09            add hl, bc
001D6E     84            add a, h
001D6F     67            ld h, a
001D70     C1            pop bc
001D71     51            ld d, c
001D72     ED5C          mlt de
001D74     E5            push hl
001D75     3B            dec sp
001D76     E1            pop hl
001D77     33            inc sp
001D78     2E00          ld l, $00
001D7A     19            add hl, de
001D7B     D1            pop de
001D7C     F1            pop af
001D7D     C9            ret 
001D7E     FDE9          jp (iy)
001D80     D5            push de
001D81     EB            ex de, hl
001D82     B7            or a, a
001D83     ED62          sbc hl, hl
001D85     ED52          sbc hl, de
001D87     D1            pop de
001D88     C9            ret 
001D89     D5            push de
001D8A     EB            ex de, hl
001D8B     37            scf 
001D8C     ED62          sbc hl, hl
001D8E     B7            or a, a
001D8F     ED52          sbc hl, de
001D91     D1            pop de
001D92     C9            ret 
001D93     F5            push af
001D94     C5            push bc
001D95     E5            push hl
001D96     210200        ld hl, $0002
001D99     00            nop 
001D9A     39            add hl, sp
001D9B     7E            ld a, (hl)
001D9C     23            inc hl
001D9D     23            inc hl
001D9E     23            inc hl
001D9F     B6            or a, (hl)
001DA0     2B            dec hl
001DA1     2B            dec hl
001DA2     2B            dec hl
001DA3     77            ld (hl), a
001DA4     E1            pop hl
001DA5     C1            pop bc
001DA6     7C            ld a, h
001DA7     B0            or a, b
001DA8     67            ld h, a
001DA9     7D            ld a, l
001DAA     B1            or a, c
001DAB     6F            ld l, a
001DAC     F1            pop af
001DAD     C9            ret 
001DAE     F5            push af
001DAF     D5            push de
001DB0     C5            push bc
001DB1     E5            push hl
001DB2     EB            ex de, hl
001DB3     B7            or a, a
001DB4     ED62          sbc hl, hl
001DB6     ED52          sbc hl, de
001DB8     FABD1D        jp m, $1DBD
001DBB     00            nop 
001DBC     EB            ex de, hl
001DBD     B7            or a, a
001DBE     ED62          sbc hl, hl
001DC0     ED42          sbc hl, bc
001DC2     FAC81D        jp m, $1DC8
001DC5     00            nop 
001DC6     E5            push hl
001DC7     C1            pop bc
001DC8     EB            ex de, hl
001DC9     CDE61D        call $1DE6
001DCC     00            nop 
001DCD     EB            ex de, hl
001DCE     210200        ld hl, $0002
001DD1     00            nop 
001DD2     39            add hl, sp
001DD3     7E            ld a, (hl)
001DD4     23            inc hl
001DD5     F9            ld sp, hl
001DD6     F600          or a, $00
001DD8     F2E11D        jp p, $1DE1
001DDB     00            nop 
001DDC     ED62          sbc hl, hl
001DDE     ED52          sbc hl, de
001DE0     EB            ex de, hl
001DE1     EB            ex de, hl
001DE2     C1            pop bc
001DE3     D1            pop de
001DE4     F1            pop af
001DE5     C9            ret 
001DE6     F5            push af
001DE7     D5            push de
001DE8     CD071D        call $1D07
001DEB     00            nop 
001DEC     D1            pop de
001DED     F1            pop af
001DEE     C9            ret 
001DEF     C5            push bc
001DF0     4F            ld c, a
001DF1     CDF71D        call $1DF7
001DF4     00            nop 
001DF5     C1            pop bc
001DF6     C9            ret 
001DF7     C5            push bc
001DF8     41            ld b, c
001DF9     04            inc b
001DFA     1801          jr $1DFD
001DFC     29            add hl, hl
001DFD     10FD          djnz $1DFC
001DFF     C1            pop bc
001E00     C9            ret 
001E01     C5            push bc
001E02     4F            ld c, a
001E03     CD091E        call $1E09
001E06     00            nop 
001E07     C1            pop bc
001E08     C9            ret 
001E09     F5            push af
001E0A     C5            push bc
001E0B     3B            dec sp
001E0C     E5            push hl
001E0D     33            inc sp
001E0E     F1            pop af
001E0F     41            ld b, c
001E10     04            inc b
001E11     1806          jr $1E19
001E13     CB2F          sra a
001E15     CB1C          rr h
001E17     CB1D          rr l
001E19     10F8          djnz $1E13
001E1B     E5            push hl
001E1C     210200        ld hl, $0002
001E1F     00            nop 
001E20     39            add hl, sp
001E21     77            ld (hl), a
001E22     E1            pop hl
001E23     C1            pop bc
001E24     F1            pop af
001E25     C9            ret 
001E26     C5            push bc
001E27     4F            ld c, a
001E28     CD2E1E        call $1E2E
001E2B     00            nop 
001E2C     C1            pop bc
001E2D     C9            ret 
001E2E     F5            push af
001E2F     C5            push bc
001E30     3B            dec sp
001E31     E5            push hl
001E32     33            inc sp
001E33     F1            pop af
001E34     41            ld b, c
001E35     04            inc b
001E36     1806          jr $1E3E
001E38     CB3F          srl a
001E3A     CB1C          rr h
001E3C     CB1D          rr l
001E3E     10F8          djnz $1E38
001E40     E5            push hl
001E41     210200        ld hl, $0002
001E44     00            nop 
001E45     39            add hl, sp
001E46     77            ld (hl), a
001E47     E1            pop hl
001E48     C1            pop bc
001E49     F1            pop af
001E4A     C9            ret 
001E4B     DDE5          push ix
001E4D     F5            push af
001E4E     DD09          add ix, bc
001E50     F1            pop af
001E51     DD2F00        ld (ix), hl
001E54     DDE1          pop ix
001E56     C9            ret 
001E57     FDE5          push iy
001E59     F5            push af
001E5A     FD09          add iy, bc
001E5C     F1            pop af
001E5D     FD2F00        ld (iy), hl
001E60     FDE1          pop iy
001E62     C9            ret 
001E63     3B            dec sp
001E64     C5            push bc
001E65     33            inc sp
001E66     F1            pop af
001E67     17            rla 
001E68     9F            sbc a, a
001E69     C9            ret 
001E6A     F5            push af
001E6B     C5            push bc
001E6C     E5            push hl
001E6D     210200        ld hl, $0002
001E70     00            nop 
001E71     39            add hl, sp
001E72     7E            ld a, (hl)
001E73     23            inc hl
001E74     23            inc hl
001E75     23            inc hl
001E76     AE            xor a, (hl)
001E77     2B            dec hl
001E78     2B            dec hl
001E79     2B            dec hl
001E7A     77            ld (hl), a
001E7B     E1            pop hl
001E7C     C1            pop bc
001E7D     7C            ld a, h
001E7E     A8            xor a, b
001E7F     67            ld h, a
001E80     7D            ld a, l
001E81     A9            xor a, c
001E82     6F            ld l, a
001E83     F1            pop af
001E84     C9            ret 
001E85     C5            push bc
001E86     010000        ld bc, $0000
001E89     00            nop 
001E8A     4F            ld c, a
001E8B     3E00          ld a, $00
001E8D     CD941E        call $1E94
001E90     00            nop 
001E91     79            ld a, c
001E92     C1            pop bc
001E93     C9            ret 
001E94     F5            push af
001E95     09            add hl, bc
001E96     8B            adc a, e
001E97     5F            ld e, a
001E98     F1            pop af
001E99     C9            ret 
001E9A     CD9D1C        call $1C9D
001E9D     00            nop 
001E9E     F5            push af
001E9F     A3            and a, e
001EA0     5F            ld e, a
001EA1     F1            pop af
001EA2     C9            ret 
001EA3     E5            push hl
001EA4     B7            or a, a
001EA5     ED42          sbc hl, bc
001EA7     67            ld h, a
001EA8     7B            ld a, e
001EA9     2004          jr nz, $1EAF
001EAB     9C            sbc a, h
001EAC     7C            ld a, h
001EAD     1808          jr $1EB7
001EAF     9C            sbc a, h
001EB0     7C            ld a, h
001EB1     F5            push af
001EB2     E1            pop hl
001EB3     CBB5          res 6, l
001EB5     E5            push hl
001EB6     F1            pop af
001EB7     E1            pop hl
001EB8     C9            ret 
001EB9     FDE5          push iy
001EBB     C5            push bc
001EBC     FD67          ld iyh, a
001EBE     AF            xor a, a
001EBF     010000        ld bc, $0000
001EC2     00            nop 
001EC3     CDA31E        call $1EA3
001EC6     00            nop 
001EC7     FD7C          ld a, iyh
001EC9     C1            pop bc
001ECA     FDE1          pop iy
001ECC     C9            ret 
001ECD     C5            push bc
001ECE     F5            push af
001ECF     D5            push de
001ED0     CB7F          bit 7, a
001ED2     280D          jr z, $1EE1
001ED4     E5            push hl
001ED5     B7            or a, a
001ED6     ED62          sbc hl, hl
001ED8     ED42          sbc hl, bc
001EDA     CE00          adc a, $00
001EDC     ED44          neg 
001EDE     E5            push hl
001EDF     C1            pop bc
001EE0     E1            pop hl
001EE1     CB7B          bit 7, e
001EE3     2804          jr z, $1EE9
001EE5     CDBD1F        call $1FBD
001EE8     00            nop 
001EE9     CDFC1E        call $1EFC
001EEC     00            nop 
001EED     C1            pop bc
001EEE     F1            pop af
001EEF     47            ld b, a
001EF0     A9            xor a, c
001EF1     F2F91E        jp p, $1EF9
001EF4     00            nop 
001EF5     CDBD1F        call $1FBD
001EF8     00            nop 
001EF9     78            ld a, b
001EFA     C1            pop bc
001EFB     C9            ret 
001EFC     DDE5          push ix
001EFE     FDE5          push iy
001F00     CD0E1F        call $1F0E
001F03     00            nop 
001F04     FD7C          ld a, iyh
001F06     DDE5          push ix
001F08     E1            pop hl
001F09     FDE1          pop iy
001F0B     DDE1          pop ix
001F0D     C9            ret 
001F0E     E5            push hl
001F0F     DDE1          pop ix
001F11     FD67          ld iyh, a
001F13     FD2E20        ld iyl, $20
001F16     AF            xor a, a
001F17     ED62          sbc hl, hl
001F19     DD29          add ix, ix
001F1B     CB13          rl e
001F1D     ED6A          adc hl, hl
001F1F     17            rla 
001F20     ED42          sbc hl, bc
001F22     FD9C          sbc a, iyh
001F24     3005          jr nc, $1F2B
001F26     09            add hl, bc
001F27     FD8C          adc a, iyh
001F29     1802          jr $1F2D
001F2B     DD23          inc ix
001F2D     FD2D          dec iyl
001F2F     20E8          jr nz, $1F19
001F31     C9            ret 
001F32     DDE5          push ix
001F34     F5            push af
001F35     DD09          add ix, bc
001F37     F1            pop af
001F38     DD2700        ld hl, (ix)
001F3B     DD5E03        ld e, (ix+$03)
001F3E     DDE1          pop ix
001F40     C9            ret 
001F41     FDE5          push iy
001F43     F5            push af
001F44     FD09          add iy, bc
001F46     F1            pop af
001F47     FD2700        ld hl, (iy)
001F4A     FD5E03        ld e, (iy+$03)
001F4D     FDE1          pop iy
001F4F     C9            ret 
001F50     F5            push af
001F51     D5            push de
001F52     C5            push bc
001F53     E5            push hl
001F54     65            ld h, l
001F55     6F            ld l, a
001F56     ED6C          mlt hl
001F58     7D            ld a, l
001F59     63            ld h, e
001F5A     69            ld l, c
001F5B     ED6C          mlt hl
001F5D     85            add a, l
001F5E     210100        ld hl, $0001
001F61     00            nop 
001F62     39            add hl, sp
001F63     56            ld d, (hl)
001F64     23            inc hl
001F65     46            ld b, (hl)
001F66     23            inc hl
001F67     23            inc hl
001F68     4E            ld c, (hl)
001F69     23            inc hl
001F6A     5E            ld e, (hl)
001F6B     ED4C          mlt bc
001F6D     81            add a, c
001F6E     ED5C          mlt de
001F70     83            add a, e
001F71     EB            ex de, hl
001F72     E1            pop hl
001F73     E5            push hl
001F74     EB            ex de, hl
001F75     4E            ld c, (hl)
001F76     43            ld b, e
001F77     ED4C          mlt bc
001F79     2B            dec hl
001F7A     5E            ld e, (hl)
001F7B     ED5C          mlt de
001F7D     EB            ex de, hl
001F7E     09            add hl, bc
001F7F     EB            ex de, hl
001F80     2B            dec hl
001F81     4E            ld c, (hl)
001F82     2B            dec hl
001F83     46            ld b, (hl)
001F84     ED4C          mlt bc
001F86     EB            ex de, hl
001F87     09            add hl, bc
001F88     EB            ex de, hl
001F89     D5            push de
001F8A     23            inc hl
001F8B     ED07          ld bc, (hl)
001F8D     2B            dec hl
001F8E     2B            dec hl
001F8F     56            ld d, (hl)
001F90     59            ld e, c
001F91     ED5C          mlt de
001F93     2B            dec hl
001F94     48            ld c, b
001F95     46            ld b, (hl)
001F96     ED4C          mlt bc
001F98     EB            ex de, hl
001F99     09            add hl, bc
001F9A     EB            ex de, hl
001F9B     46            ld b, (hl)
001F9C     23            inc hl
001F9D     23            inc hl
001F9E     23            inc hl
001F9F     4E            ld c, (hl)
001FA0     ED4C          mlt bc
001FA2     B7            or a, a
001FA3     ED62          sbc hl, hl
001FA5     68            ld l, b
001FA6     19            add hl, de
001FA7     45            ld b, l
001FA8     3B            dec sp
001FA9     E5            push hl
001FAA     33            inc sp
001FAB     E1            pop hl
001FAC     D1            pop de
001FAD     19            add hl, de
001FAE     84            add a, h
001FAF     E5            push hl
001FB0     3B            dec sp
001FB1     3B            dec sp
001FB2     E1            pop hl
001FB3     33            inc sp
001FB4     33            inc sp
001FB5     60            ld h, b
001FB6     69            ld l, c
001FB7     C1            pop bc
001FB8     C1            pop bc
001FB9     D1            pop de
001FBA     5F            ld e, a
001FBB     F1            pop af
001FBC     C9            ret 
001FBD     F5            push af
001FBE     D5            push de
001FBF     EB            ex de, hl
001FC0     AF            xor a, a
001FC1     ED62          sbc hl, hl
001FC3     ED52          sbc hl, de
001FC5     D1            pop de
001FC6     9B            sbc a, e
001FC7     5F            ld e, a
001FC8     F1            pop af
001FC9     C9            ret 
001FCA     CD891D        call $1D89
001FCD     00            nop 
001FCE     F5            push af
001FCF     7B            ld a, e
001FD0     2F            cpl 
001FD1     5F            ld e, a
001FD2     F1            pop af
001FD3     C9            ret 
001FD4     CD931D        call $1D93
001FD7     00            nop 
001FD8     F5            push af
001FD9     B3            or a, e
001FDA     5F            ld e, a
001FDB     F1            pop af
001FDC     C9            ret 
001FDD     F5            push af
001FDE     C5            push bc
001FDF     D5            push de
001FE0     CB7F          bit 7, a
001FE2     280C          jr z, $1FF0
001FE4     E5            push hl
001FE5     ED62          sbc hl, hl
001FE7     ED42          sbc hl, bc
001FE9     CE00          adc a, $00
001FEB     ED44          neg 
001FED     E5            push hl
001FEE     C1            pop bc
001FEF     E1            pop hl
001FF0     CB7B          bit 7, e
001FF2     2804          jr z, $1FF8
001FF4     CDBD1F        call $1FBD
001FF7     00            nop 
001FF8     CD0820        call $2008
001FFB     00            nop 
001FFC     C1            pop bc
001FFD     CB79          bit 7, c
001FFF     2804          jr z, $2005
002001     CDBD1F        call $1FBD
002004     00            nop 
002005     C1            pop bc
002006     F1            pop af
002007     C9            ret 
002008     DDE5          push ix
00200A     FDE5          push iy
00200C     CD0E1F        call $1F0E
00200F     00            nop 
002010     5F            ld e, a
002011     FD7C          ld a, iyh
002013     FDE1          pop iy
002015     DDE1          pop ix
002017     C9            ret 
002018     E5            push hl
002019     C5            push bc
00201A     45            ld b, l
00201B     E1            pop hl
00201C     04            inc b
00201D     1802          jr $2021
00201F     29            add hl, hl
002020     17            rla 
002021     10FC          djnz $201F
002023     E5            push hl
002024     C1            pop bc
002025     E1            pop hl
002026     C9            ret 
002027     E5            push hl
002028     F5            push af
002029     3B            dec sp
00202A     C5            push bc
00202B     33            inc sp
00202C     F1            pop af
00202D     60            ld h, b
00202E     45            ld b, l
00202F     69            ld l, c
002030     4F            ld c, a
002031     F1            pop af
002032     04            inc b
002033     1808          jr $203D
002035     CB2F          sra a
002037     CB19          rr c
002039     CB1C          rr h
00203B     CB1D          rr l
00203D     10F6          djnz $2035
00203F     E5            push hl
002040     210200        ld hl, $0002
002043     00            nop 
002044     39            add hl, sp
002045     71            ld (hl), c
002046     C1            pop bc
002047     E1            pop hl
002048     C9            ret 
002049     E5            push hl
00204A     F5            push af
00204B     3B            dec sp
00204C     C5            push bc
00204D     33            inc sp
00204E     F1            pop af
00204F     60            ld h, b
002050     45            ld b, l
002051     69            ld l, c
002052     4F            ld c, a
002053     F1            pop af
002054     04            inc b
002055     1808          jr $205F
002057     CB3F          srl a
002059     CB19          rr c
00205B     CB1C          rr h
00205D     CB1D          rr l
00205F     10F6          djnz $2057
002061     E5            push hl
002062     210200        ld hl, $0002
002065     00            nop 
002066     39            add hl, sp
002067     71            ld (hl), c
002068     C1            pop bc
002069     E1            pop hl
00206A     C9            ret 
00206B     C5            push bc
00206C     04            inc b
00206D     1802          jr $2071
00206F     CB3F          srl a
002071     10FC          djnz $206F
002073     C1            pop bc
002074     C9            ret 
002075     C5            push bc
002076     04            inc b
002077     1801          jr $207A
002079     87            add a, a
00207A     10FD          djnz $2079
00207C     C1            pop bc
00207D     C9            ret 
00207E     FDE5          push iy
002080     F5            push af
002081     FD09          add iy, bc
002083     F1            pop af
002084     FD7E00        ld a, (iy)
002087     FDE1          pop iy
002089     C9            ret 
00208A     FDE5          push iy
00208C     F5            push af
00208D     FD09          add iy, bc
00208F     F1            pop af
002090     FD7700        ld (iy), a
002093     FDE1          pop iy
002095     C9            ret 
002096     DDE5          push ix
002098     F5            push af
002099     DD09          add ix, bc
00209B     F1            pop af
00209C     DD7700        ld (ix), a
00209F     DDE1          pop ix
0020A1     C9            ret 
0020A2     DDE5          push ix
0020A4     F5            push af
0020A5     DD09          add ix, bc
0020A7     F1            pop af
0020A8     DD2F00        ld (ix), hl
0020AB     DD7303        ld (ix+$03), e
0020AE     DDE1          pop ix
0020B0     C9            ret 
0020B1     FDE5          push iy
0020B3     F5            push af
0020B4     FD09          add iy, bc
0020B6     F1            pop af
0020B7     FD2F00        ld (iy), hl
0020BA     FD7303        ld (iy+$03), e
0020BD     FDE1          pop iy
0020BF     C9            ret 
0020C0     B7            or a, a
0020C1     ED42          sbc hl, bc
0020C3     C5            push bc
0020C4     4F            ld c, a
0020C5     7B            ld a, e
0020C6     59            ld e, c
0020C7     9B            sbc a, e
0020C8     5F            ld e, a
0020C9     79            ld a, c
0020CA     C1            pop bc
0020CB     C9            ret 
0020CC     CD6A1E        call $1E6A
0020CF     00            nop 
0020D0     F5            push af
0020D1     AB            xor a, e
0020D2     5F            ld e, a
0020D3     F1            pop af
0020D4     C9            ret 
0020D5     F5            push af
0020D6     7D            ld a, l
0020D7     A1            and a, c
0020D8     6F            ld l, a
0020D9     7C            ld a, h
0020DA     A0            and a, b
0020DB     67            ld h, a
0020DC     F1            pop af
0020DD     C9            ret 
0020DE     E5            push hl
0020DF     D5            push de
0020E0     1600          ld d, $00
0020E2     1E00          ld e, $00
0020E4     B7            or a, a
0020E5     52ED52        sbc.sil hl, de
0020E8     D1            pop de
0020E9     E1            pop hl
0020EA     C9            ret 
0020EB     F5            push af
0020EC     C5            push bc
0020ED     E5            push hl
0020EE     CB24          sla h
0020F0     9F            sbc a, a
0020F1     210200        ld hl, $0002
0020F4     00            nop 
0020F5     39            add hl, sp
0020F6     77            ld (hl), a
0020F7     23            inc hl
0020F8     23            inc hl
0020F9     23            inc hl
0020FA     CB20          sla b
0020FC     9F            sbc a, a
0020FD     77            ld (hl), a
0020FE     E1            pop hl
0020FF     C1            pop bc
002100     F1            pop af
002101     C3C41C        jp $1CC4
002104     00            nop 
002105     C5            push bc
002106     E5            push hl
002107     210200        ld hl, $0002
00210A     00            nop 
00210B     39            add hl, sp
00210C     3600          ld (hl), $00
00210E     23            inc hl
00210F     23            inc hl
002110     23            inc hl
002111     3600          ld (hl), $00
002113     E1            pop hl
002114     C1            pop bc
002115     C3FD1C        jp $1CFD
002118     00            nop 
002119     FDE3          ex (sp), iy
00211B     F5            push af
00211C     C5            push bc
00211D     D5            push de
00211E     ED3305        lea iy, iy+$05
002121     110000        ld de, $0000
002124     00            nop 
002125     FD07FB        ld bc, (iy-$05)
002128     59            ld e, c
002129     50            ld d, b
00212A     FD07FD        ld bc, (iy-$03)
00212D     B7            or a, a
00212E     ED42          sbc hl, bc
002130     FA3D21        jp m, $213D
002133     00            nop 
002134     E5            push hl
002135     B7            or a, a
002136     ED52          sbc hl, de
002138     E1            pop hl
002139     FA3F21        jp m, $213F
00213C     00            nop 
00213D     D5            push de
00213E     E1            pop hl
00213F     E5            push hl
002140     C1            pop bc
002141     29            add hl, hl
002142     09            add hl, bc
002143     E5            push hl
002144     C1            pop bc
002145     FD09          add iy, bc
002147     FD2700        ld hl, (iy)
00214A     D1            pop de
00214B     C1            pop bc
00214C     F1            pop af
00214D     FDE3          ex (sp), iy
00214F     E3            ex (sp), hl
002150     C9            ret 
002151     FDE3          ex (sp), iy
002153     FDE5          push iy
002155     F5            push af
002156     C5            push bc
002157     D5            push de
002158     ED3306        lea iy, iy+$06
00215B     110000        ld de, $0000
00215E     00            nop 
00215F     FD07FB        ld bc, (iy-$05)
002162     59            ld e, c
002163     50            ld d, b
002164     FD07FD        ld bc, (iy-$03)
002167     B7            or a, a
002168     ED42          sbc hl, bc
00216A     FA7721        jp m, $2177
00216D     00            nop 
00216E     E5            push hl
00216F     B7            or a, a
002170     ED52          sbc hl, de
002172     E1            pop hl
002173     FA7921        jp m, $2179
002176     00            nop 
002177     D5            push de
002178     E1            pop hl
002179     E5            push hl
00217A     C1            pop bc
00217B     29            add hl, hl
00217C     09            add hl, bc
00217D     E5            push hl
00217E     C1            pop bc
00217F     FD09          add iy, bc
002181     FD2700        ld hl, (iy)
002184     D1            pop de
002185     C1            pop bc
002186     F1            pop af
002187     FDE1          pop iy
002189     FDE3          ex (sp), iy
00218B     C9            ret 
00218C     C5            push bc
00218D     F5            push af
00218E     C1            pop bc
00218F     CB51          bit 2, c
002191     2804          jr z, $2197
002193     79            ld a, c
002194     EE80          xor a, $80
002196     4F            ld c, a
002197     C5            push bc
002198     F1            pop af
002199     C1            pop bc
00219A     C9            ret 
00219B     DDE5          push ix
00219D     F5            push af
00219E     DD09          add ix, bc
0021A0     F1            pop af
0021A1     DD2700        ld hl, (ix)
0021A4     DDE1          pop ix
0021A6     C9            ret 
0021A7     FDE5          push iy
0021A9     F5            push af
0021AA     FD09          add iy, bc
0021AC     F1            pop af
0021AD     FD2700        ld hl, (iy)
0021B0     FDE1          pop iy
0021B2     C9            ret 
0021B3     F5            push af
0021B4     C5            push bc
0021B5     D5            push de
0021B6     50            ld d, b
0021B7     5D            ld e, l
0021B8     44            ld b, h
0021B9     61            ld h, c
0021BA     ED4C          mlt bc
0021BC     ED5C          mlt de
0021BE     ED6C          mlt hl
0021C0     7C            ld a, h
0021C1     81            add a, c
0021C2     83            add a, e
0021C3     67            ld h, a
0021C4     D1            pop de
0021C5     C1            pop bc
0021C6     F1            pop af
0021C7     C9            ret 
0021C8     F5            push af
0021C9     7D            ld a, l
0021CA     B1            or a, c
0021CB     6F            ld l, a
0021CC     7C            ld a, h
0021CD     B0            or a, b
0021CE     67            ld h, a
0021CF     F1            pop af
0021D0     C9            ret 
0021D1     F5            push af
0021D2     C5            push bc
0021D3     E5            push hl
0021D4     CB24          sla h
0021D6     9F            sbc a, a
0021D7     210200        ld hl, $0002
0021DA     00            nop 
0021DB     39            add hl, sp
0021DC     77            ld (hl), a
0021DD     23            inc hl
0021DE     23            inc hl
0021DF     23            inc hl
0021E0     CB20          sla b
0021E2     9F            sbc a, a
0021E3     77            ld (hl), a
0021E4     E1            pop hl
0021E5     C1            pop bc
0021E6     F1            pop af
0021E7     C3AE1D        jp $1DAE
0021EA     00            nop 
0021EB     C5            push bc
0021EC     E5            push hl
0021ED     210200        ld hl, $0002
0021F0     00            nop 
0021F1     39            add hl, sp
0021F2     3600          ld (hl), $00
0021F4     23            inc hl
0021F5     23            inc hl
0021F6     23            inc hl
0021F7     3600          ld (hl), $00
0021F9     E1            pop hl
0021FA     C1            pop bc
0021FB     C3E61D        jp $1DE6
0021FE     00            nop 
0021FF     C5            push bc
002200     4F            ld c, a
002201     CD0722        call $2207
002204     00            nop 
002205     C1            pop bc
002206     C9            ret 
002207     C5            push bc
002208     41            ld b, c
002209     04            inc b
00220A     1801          jr $220D
00220C     29            add hl, hl
00220D     10FD          djnz $220C
00220F     C1            pop bc
002210     C9            ret 
002211     C5            push bc
002212     4F            ld c, a
002213     CD1922        call $2219
002216     00            nop 
002217     C1            pop bc
002218     C9            ret 
002219     C5            push bc
00221A     41            ld b, c
00221B     04            inc b
00221C     1804          jr $2222
00221E     CB2C          sra h
002220     CB1D          rr l
002222     10FA          djnz $221E
002224     C1            pop bc
002225     C9            ret 
002226     C5            push bc
002227     4F            ld c, a
002228     CD2E22        call $222E
00222B     00            nop 
00222C     C1            pop bc
00222D     C9            ret 
00222E     C5            push bc
00222F     41            ld b, c
002230     04            inc b
002231     1804          jr $2237
002233     CB3C          srl h
002235     CB1D          rr l
002237     10FA          djnz $2233
002239     C1            pop bc
00223A     C9            ret 
00223B     DDE5          push ix
00223D     F5            push af
00223E     DD09          add ix, bc
002240     F1            pop af
002241     DD7500        ld (ix), l
002244     DD7401        ld (ix+$01), h
002247     DDE1          pop ix
002249     C9            ret 
00224A     FDE5          push iy
00224C     F5            push af
00224D     FD09          add iy, bc
00224F     F1            pop af
002250     FD7500        ld (iy), l
002253     FD7401        ld (iy+$01), h
002256     FDE1          pop iy
002258     C9            ret 
002259     60            ld h, b
00225A     CB24          sla h
00225C     ED62          sbc hl, hl
00225E     69            ld l, c
00225F     60            ld h, b
002260     C9            ret 
002261     B7            or a, a
002262     ED62          sbc hl, hl
002264     69            ld l, c
002265     60            ld h, b
002266     C9            ret 
002267     F5            push af
002268     7D            ld a, l
002269     A9            xor a, c
00226A     6F            ld l, a
00226B     7C            ld a, h
00226C     A8            xor a, b
00226D     67            ld h, a
00226E     F1            pop af
00226F     C9            ret 
002270     CDD306        call $06D3
002273     00            nop 
002274     2813          jr z, $2289
002276     01FEFF        ld bc, $FFFE
002279     00            nop 
00227A     ED79          out (bc), a
00227C     78            ld a, b
00227D     FEFF          cp a, $FF
00227F     2801          jr z, $2282
002281     CF            rst $0008
002282     79            ld a, c
002283     FEFE          cp a, $FE
002285     20FA          jr nz, $2281
002287     18FE          jr $2287
002289     C9            ret 
00228A     FDE5          push iy
00228C     FD210300      ld iy, $0003
002290     00            nop 
002291     FD39          add iy, sp
002293     FD0709        ld bc, (iy+$09)
002296     ED62          sbc hl, hl
002298     ED42          sbc hl, bc
00229A     280E          jr z, $22AA
00229C     FD2703        ld hl, (iy+$03)
00229F     FD7E06        ld a, (iy+$06)
0022A2     EDB1          cpir 
0022A4     2B            dec hl
0022A5     2803          jr z, $22AA
0022A7     B7            or a, a
0022A8     ED62          sbc hl, hl
0022AA     FDE1          pop iy
0022AC     C9            ret 
0022AD     FDE5          push iy
0022AF     FD210300      ld iy, $0003
0022B3     00            nop 
0022B4     FD39          add iy, sp
0022B6     FD0709        ld bc, (iy+$09)
0022B9     ED62          sbc hl, hl
0022BB     ED42          sbc hl, bc
0022BD     281C          jr z, $22DB
0022BF     FD1703        ld de, (iy+$03)
0022C2     FD2706        ld hl, (iy+$06)
0022C5     1A            ld a, (de)
0022C6     EDA1          cpi 
0022C8     200A          jr nz, $22D4
0022CA     13            inc de
0022CB     EAC522        jp pe, $22C5
0022CE     00            nop 
0022CF     B7            or a, a
0022D0     ED62          sbc hl, hl
0022D2     1807          jr $22DB
0022D4     2B            dec hl
0022D5     BE            cp a, (hl)
0022D6     ED62          sbc hl, hl
0022D8     3801          jr c, $22DB
0022DA     23            inc hl
0022DB     FDE1          pop iy
0022DD     C9            ret 
0022DE     FDE5          push iy
0022E0     FD210300      ld iy, $0003
0022E4     00            nop 
0022E5     FD39          add iy, sp
0022E7     FD0709        ld bc, (iy+$09)
0022EA     ED62          sbc hl, hl
0022EC     ED42          sbc hl, bc
0022EE     2808          jr z, $22F8
0022F0     FD1703        ld de, (iy+$03)
0022F3     FD2706        ld hl, (iy+$06)
0022F6     EDB0          ldir 
0022F8     FD2703        ld hl, (iy+$03)
0022FB     FDE1          pop iy
0022FD     C9            ret 
0022FE     FDE5          push iy
002300     FD210300      ld iy, $0003
002304     00            nop 
002305     FD39          add iy, sp
002307     FD0709        ld bc, (iy+$09)
00230A     ED62          sbc hl, hl
00230C     ED42          sbc hl, bc
00230E     281A          jr z, $232A
002310     FD2706        ld hl, (iy+$06)
002313     FD1703        ld de, (iy+$03)
002316     B7            or a, a
002317     ED52          sbc hl, de
002319     FD2706        ld hl, (iy+$06)
00231C     3804          jr c, $2322
00231E     EDB0          ldir 
002320     1808          jr $232A
002322     09            add hl, bc
002323     2B            dec hl
002324     EB            ex de, hl
002325     09            add hl, bc
002326     2B            dec hl
002327     EB            ex de, hl
002328     EDB8          lddr 
00232A     FD2703        ld hl, (iy+$03)
00232D     FDE1          pop iy
00232F     C9            ret 
002330     FDE5          push iy
002332     FD210300      ld iy, $0003
002336     00            nop 
002337     FD39          add iy, sp
002339     FD1703        ld de, (iy+$03)
00233C     FD2709        ld hl, (iy+$09)
00233F     FD7E06        ld a, (iy+$06)
002342     010000        ld bc, $0000
002345     00            nop 
002346     1803          jr $234B
002348     12            ld (de), a
002349     13            inc de
00234A     2B            dec hl
00234B     ED42          sbc hl, bc
00234D     20F9          jr nz, $2348
00234F     FD2703        ld hl, (iy+$03)
002352     FDE1          pop iy
002354     C9            ret 
002355     FDE5          push iy
002357     FD210300      ld iy, $0003
00235B     00            nop 
00235C     FD39          add iy, sp
00235E     FD2706        ld hl, (iy+$06)
002361     010000        ld bc, $0000
002364     00            nop 
002365     ED42          sbc hl, bc
002367     2814          jr z, $237D
002369     FD1703        ld de, (iy+$03)
00236C     AF            xor a, a
00236D     12            ld (de), a
00236E     2B            dec hl
00236F     ED42          sbc hl, bc
002371     280A          jr z, $237D
002373     FD0706        ld bc, (iy+$06)
002376     0B            dec bc
002377     13            inc de
002378     FD2703        ld hl, (iy+$03)
00237B     EDB0          ldir 
00237D     FDE1          pop iy
00237F     C9            ret 
002380     DDE5          push ix
002382     DD210000      ld ix, $0000
002386     00            nop 
002387     DD39          add ix, sp
002389     ED4B0501      ld bc, ($0105)
00238D     D0            ret nc
00238E     DD7E06        ld a, (ix+$06)
002391     02            ld (bc), a
002392     03            inc bc
002393     ED430501      ld ($0105), bc
002397     D0            ret nc
002398     DDE1          pop ix
00239A     C9            ret 
00239B     DDE5          push ix
00239D     DD210000      ld ix, $0000
0023A1     00            nop 
0023A2     DD39          add ix, sp
0023A4     FDE5          push iy
0023A6     01C723        ld bc, $23C7
0023A9     00            nop 
0023AA     ED430801      ld ($0108), bc
0023AE     D0            ret nc
0023AF     ED6509        pea ix+$09
0023B2     DD0706        ld bc, (ix+$06)
0023B5     C5            push bc
0023B6     010000        ld bc, $0000
0023B9     00            nop 
0023BA     C5            push bc
0023BB     CDE326        call $26E3
0023BE     00            nop 
0023BF     C1            pop bc
0023C0     C1            pop bc
0023C1     C1            pop bc
0023C2     FDE1          pop iy
0023C4     DDE1          pop ix
0023C6     C9            ret 
0023C7     C9            ret 
0023C8     FDE5          push iy
0023CA     FD210300      ld iy, $0003
0023CE     00            nop 
0023CF     FD39          add iy, sp
0023D1     FDE5          push iy
0023D3     E1            pop hl
0023D4     FD3703        ld iy, (iy+$03)
0023D7     FD3E03        ld (iy+$03), ix
0023DA     FD2F06        ld (iy+$06), hl
0023DD     ED27          ld hl, (hl)
0023DF     FD2F00        ld (iy), hl
0023E2     210000        ld hl, $0000
0023E5     00            nop 
0023E6     FDE1          pop iy
0023E8     C9            ret 
0023E9     ED1300        lea de, iy
0023EC     FD210000      ld iy, $0000
0023F0     00            nop 
0023F1     FD39          add iy, sp
0023F3     FD2706        ld hl, (iy+$06)
0023F6     010000        ld bc, $0000
0023F9     00            nop 
0023FA     B7            or a, a
0023FB     ED42          sbc hl, bc
0023FD     2002          jr nz, $2401
0023FF     2E01          ld l, $01
002401     FD3703        ld iy, (iy+$03)
002404     FD3103        ld ix, (iy+$03)
002407     FD0700        ld bc, (iy)
00240A     FD3706        ld iy, (iy+$06)
00240D     FDF9          ld sp, iy
00240F     FD0F00        ld (iy), bc
002412     D5            push de
002413     FDE1          pop iy
002415     C9            ret 
002416     DDE5          push ix
002418     DD210000      ld ix, $0000
00241C     00            nop 
00241D     DD39          add ix, sp
00241F     FDE5          push iy
002421     018023        ld bc, $2380
002424     00            nop 
002425     ED430801      ld ($0108), bc
002429     D0            ret nc
00242A     ED650C        pea ix+$0C
00242D     DD0709        ld bc, (ix+$09)
002430     C5            push bc
002431     DD0706        ld bc, (ix+$06)
002434     C5            push bc
002435     CDE326        call $26E3
002438     00            nop 
002439     C1            pop bc
00243A     C1            pop bc
00243B     C1            pop bc
00243C     FDE1          pop iy
00243E     DDE1          pop ix
002440     C9            ret 
002441     210300        ld hl, $0003
002444     00            nop 
002445     39            add hl, sp
002446     ED07          ld bc, (hl)
002448     C5            push bc
002449     23            inc hl
00244A     23            inc hl
00244B     23            inc hl
00244C     ED17          ld de, (hl)
00244E     1A            ld a, (de)
00244F     B7            or a, a
002450     2812          jr z, $2464
002452     C5            push bc
002453     E1            pop hl
002454     AF            xor a, a
002455     EDA1          cpi 
002457     20FC          jr nz, $2455
002459     2B            dec hl
00245A     EB            ex de, hl
00245B     AF            xor a, a
00245C     BE            cp a, (hl)
00245D     2804          jr z, $2463
00245F     EDA0          ldi 
002461     18F9          jr $245C
002463     12            ld (de), a
002464     E1            pop hl
002465     C9            ret 
002466     210300        ld hl, $0003
002469     00            nop 
00246A     39            add hl, sp
00246B     ED07          ld bc, (hl)
00246D     23            inc hl
00246E     23            inc hl
00246F     23            inc hl
002470     5E            ld e, (hl)
002471     C5            push bc
002472     CDDF24        call $24DF
002475     00            nop 
002476     E5            push hl
002477     C1            pop bc
002478     03            inc bc
002479     E1            pop hl
00247A     7B            ld a, e
00247B     EDB1          cpir 
00247D     2B            dec hl
00247E     C8            ret z
00247F     B7            or a, a
002480     ED62          sbc hl, hl
002482     C9            ret 
002483     210300        ld hl, $0003
002486     00            nop 
002487     39            add hl, sp
002488     ED17          ld de, (hl)
00248A     23            inc hl
00248B     23            inc hl
00248C     23            inc hl
00248D     ED27          ld hl, (hl)
00248F     1A            ld a, (de)
002490     B7            or a, a
002491     2806          jr z, $2499
002493     EDA1          cpi 
002495     13            inc de
002496     28F7          jr z, $248F
002498     2B            dec hl
002499     96            sub a, (hl)
00249A     ED62          sbc hl, hl
00249C     6F            ld l, a
00249D     C9            ret 
00249E     210600        ld hl, $0006
0024A1     00            nop 
0024A2     39            add hl, sp
0024A3     ED07          ld bc, (hl)
0024A5     2B            dec hl
0024A6     2B            dec hl
0024A7     2B            dec hl
0024A8     ED17          ld de, (hl)
0024AA     D5            push de
0024AB     C5            push bc
0024AC     CDDF24        call $24DF
0024AF     00            nop 
0024B0     E5            push hl
0024B1     C1            pop bc
0024B2     03            inc bc
0024B3     E1            pop hl
0024B4     EDB0          ldir 
0024B6     E1            pop hl
0024B7     C9            ret 
0024B8     210600        ld hl, $0006
0024BB     00            nop 
0024BC     39            add hl, sp
0024BD     ED17          ld de, (hl)
0024BF     2B            dec hl
0024C0     2B            dec hl
0024C1     2B            dec hl
0024C2     ED27          ld hl, (hl)
0024C4     E5            push hl
0024C5     1A            ld a, (de)
0024C6     B7            or a, a
0024C7     2811          jr z, $24DA
0024C9     EDA1          cpi 
0024CB     280D          jr z, $24DA
0024CD     AF            xor a, a
0024CE     BE            cp a, (hl)
0024CF     20F4          jr nz, $24C5
0024D1     13            inc de
0024D2     1A            ld a, (de)
0024D3     B7            or a, a
0024D4     2803          jr z, $24D9
0024D6     E1            pop hl
0024D7     18EB          jr $24C4
0024D9     23            inc hl
0024DA     D1            pop de
0024DB     37            scf 
0024DC     ED52          sbc hl, de
0024DE     C9            ret 
0024DF     210300        ld hl, $0003
0024E2     00            nop 
0024E3     39            add hl, sp
0024E4     ED27          ld hl, (hl)
0024E6     AF            xor a, a
0024E7     010000        ld bc, $0000
0024EA     00            nop 
0024EB     EDB1          cpir 
0024ED     B7            or a, a
0024EE     ED62          sbc hl, hl
0024F0     37            scf 
0024F1     ED42          sbc hl, bc
0024F3     C9            ret 
0024F4     FDE5          push iy
0024F6     FD210300      ld iy, $0003
0024FA     00            nop 
0024FB     FD39          add iy, sp
0024FD     FD2703        ld hl, (iy+$03)
002500     AF            xor a, a
002501     EDA1          cpi 
002503     20FC          jr nz, $2501
002505     2B            dec hl
002506     FD0709        ld bc, (iy+$09)
002509     FD7E0B        ld a, (iy+$0B)
00250C     B1            or a, c
00250D     B0            or a, b
00250E     280F          jr z, $251F
002510     FD1706        ld de, (iy+$06)
002513     EB            ex de, hl
002514     AF            xor a, a
002515     BE            cp a, (hl)
002516     2806          jr z, $251E
002518     EDA0          ldi 
00251A     EA1525        jp pe, $2515
00251D     00            nop 
00251E     12            ld (de), a
00251F     FD2703        ld hl, (iy+$03)
002522     FDE1          pop iy
002524     C9            ret 
002525     FDE5          push iy
002527     FD210300      ld iy, $0003
00252B     00            nop 
00252C     FD39          add iy, sp
00252E     FD0709        ld bc, (iy+$09)
002531     FD7E0B        ld a, (iy+$0B)
002534     B1            or a, c
002535     B0            or a, b
002536     281C          jr z, $2554
002538     FD2706        ld hl, (iy+$06)
00253B     FD1703        ld de, (iy+$03)
00253E     1A            ld a, (de)
00253F     EDA1          cpi 
002541     200A          jr nz, $254D
002543     E25425        jp po, $2554
002546     00            nop 
002547     B7            or a, a
002548     280A          jr z, $2554
00254A     13            inc de
00254B     18F1          jr $253E
00254D     2B            dec hl
00254E     96            sub a, (hl)
00254F     ED62          sbc hl, hl
002551     6F            ld l, a
002552     1803          jr $2557
002554     B7            or a, a
002555     ED62          sbc hl, hl
002557     FDE1          pop iy
002559     C9            ret 
00255A     FDE5          push iy
00255C     FD210300      ld iy, $0003
002560     00            nop 
002561     FD39          add iy, sp
002563     ED62          sbc hl, hl
002565     FD1709        ld de, (iy+$09)
002568     ED5A          adc hl, de
00256A     282F          jr z, $259B
00256C     FD0706        ld bc, (iy+$06)
00256F     C5            push bc
002570     CDDF24        call $24DF
002573     00            nop 
002574     B7            or a, a
002575     ED52          sbc hl, de
002577     300E          jr nc, $2587
002579     ED5A          adc hl, de
00257B     E5            push hl
00257C     C1            pop bc
00257D     EB            ex de, hl
00257E     AF            xor a, a
00257F     ED52          sbc hl, de
002581     2807          jr z, $258A
002583     E3            ex (sp), hl
002584     37            scf 
002585     1804          jr $258B
002587     FD0709        ld bc, (iy+$09)
00258A     E1            pop hl
00258B     FD1703        ld de, (iy+$03)
00258E     EDB0          ldir 
002590     3009          jr nc, $259B
002592     EB            ex de, hl
002593     C1            pop bc
002594     77            ld (hl), a
002595     EDA1          cpi 
002597     EA9425        jp pe, $2594
00259A     00            nop 
00259B     FD2703        ld hl, (iy+$03)
00259E     FDE1          pop iy
0025A0     C9            ret 
0025A1     FDE5          push iy
0025A3     FD210000      ld iy, $0000
0025A7     00            nop 
0025A8     FD39          add iy, sp
0025AA     FD0709        ld bc, (iy+$09)
0025AD     C5            push bc
0025AE     CDDF24        call $24DF
0025B1     00            nop 
0025B2     E3            ex (sp), hl
0025B3     FD1706        ld de, (iy+$06)
0025B6     1A            ld a, (de)
0025B7     B7            or a, a
0025B8     280F          jr z, $25C9
0025BA     FD2709        ld hl, (iy+$09)
0025BD     FD07FD        ld bc, (iy-$03)
0025C0     EDB1          cpir 
0025C2     13            inc de
0025C3     20F1          jr nz, $25B6
0025C5     EB            ex de, hl
0025C6     2B            dec hl
0025C7     1804          jr $25CD
0025C9     210000        ld hl, $0000
0025CC     00            nop 
0025CD     FDF9          ld sp, iy
0025CF     FDE1          pop iy
0025D1     C9            ret 
0025D2     FDE5          push iy
0025D4     FD210300      ld iy, $0003
0025D8     00            nop 
0025D9     FD39          add iy, sp
0025DB     FD0703        ld bc, (iy+$03)
0025DE     C5            push bc
0025DF     CDDF24        call $24DF
0025E2     00            nop 
0025E3     E3            ex (sp), hl
0025E4     C1            pop bc
0025E5     09            add hl, bc
0025E6     FD7E06        ld a, (iy+$06)
0025E9     EDB9          cpdr 
0025EB     23            inc hl
0025EC     2804          jr z, $25F2
0025EE     210000        ld hl, $0000
0025F1     00            nop 
0025F2     FDE1          pop iy
0025F4     C9            ret 
0025F5     FDE5          push iy
0025F7     FD210000      ld iy, $0000
0025FB     00            nop 
0025FC     FD39          add iy, sp
0025FE     FD0709        ld bc, (iy+$09)
002601     C5            push bc
002602     CDDF24        call $24DF
002605     00            nop 
002606     E3            ex (sp), hl
002607     FD1706        ld de, (iy+$06)
00260A     1A            ld a, (de)
00260B     B7            or a, a
00260C     280C          jr z, $261A
00260E     FD2709        ld hl, (iy+$09)
002611     FD07FD        ld bc, (iy-$03)
002614     EDB1          cpir 
002616     13            inc de
002617     28F1          jr z, $260A
002619     37            scf 
00261A     FD2706        ld hl, (iy+$06)
00261D     EB            ex de, hl
00261E     ED52          sbc hl, de
002620     FDF9          ld sp, iy
002622     FDE1          pop iy
002624     C9            ret 
002625     210600        ld hl, $0006
002628     00            nop 
002629     39            add hl, sp
00262A     FDE5          push iy
00262C     ED31          ld iy, (hl)
00262E     2B            dec hl
00262F     2B            dec hl
002630     2B            dec hl
002631     ED17          ld de, (hl)
002633     AF            xor a, a
002634     ED62          sbc hl, hl
002636     19            add hl, de
002637     BE            cp a, (hl)
002638     2813          jr z, $264D
00263A     FDE5          push iy
00263C     C1            pop bc
00263D     13            inc de
00263E     0A            ld a, (bc)
00263F     B7            or a, a
002640     2807          jr z, $2649
002642     BE            cp a, (hl)
002643     23            inc hl
002644     03            inc bc
002645     28F7          jr z, $263E
002647     18EA          jr $2633
002649     EB            ex de, hl
00264A     2B            dec hl
00264B     1802          jr $264F
00264D     ED62          sbc hl, hl
00264F     FDE1          pop iy
002651     C9            ret 
002652     DDE5          push ix
002654     DD210000      ld ix, $0000
002658     00            nop 
002659     DD39          add ix, sp
00265B     C5            push bc
00265C     C5            push bc
00265D     DD2706        ld hl, (ix+$06)
002660     CDB81C        call $1CB8
002663     00            nop 
002664     2804          jr z, $266A
002666     22FF00        ld ($00FF), hl
002669     D0            ret nc
00266A     DD0709        ld bc, (ix+$09)
00266D     C5            push bc
00266E     ED4BFF00      ld bc, ($00FF)
002672     D0            ret nc
002673     C5            push bc
002674     CDF525        call $25F5
002677     00            nop 
002678     C1            pop bc
002679     C1            pop bc
00267A     DD2FFA        ld (ix-$06), hl
00267D     CDB81C        call $1CB8
002680     00            nop 
002681     200C          jr nz, $268F
002683     2AFF00        ld hl, ($00FF)
002686     D0            ret nc
002687     7E            ld a, (hl)
002688     B7            or a, a
002689     2004          jr nz, $268F
00268B     ED62          sbc hl, hl
00268D     184F          jr $26DE
00268F     DD07FA        ld bc, (ix-$06)
002692     2AFF00        ld hl, ($00FF)
002695     D0            ret nc
002696     09            add hl, bc
002697     22FF00        ld ($00FF), hl
00269A     D0            ret nc
00269B     DD2F06        ld (ix+$06), hl
00269E     DD0709        ld bc, (ix+$09)
0026A1     C5            push bc
0026A2     ED4BFF00      ld bc, ($00FF)
0026A6     D0            ret nc
0026A7     C5            push bc
0026A8     CDA125        call $25A1
0026AB     00            nop 
0026AC     C1            pop bc
0026AD     C1            pop bc
0026AE     DD2FFD        ld (ix-$03), hl
0026B1     CDB81C        call $1CB8
0026B4     00            nop 
0026B5     201A          jr nz, $26D1
0026B7     ED4BFF00      ld bc, ($00FF)
0026BB     D0            ret nc
0026BC     C5            push bc
0026BD     CDDF24        call $24DF
0026C0     00            nop 
0026C1     C1            pop bc
0026C2     09            add hl, bc
0026C3     22FF00        ld ($00FF), hl
0026C6     D0            ret nc
0026C7     DD0706        ld bc, (ix+$06)
0026CA     B7            or a, a
0026CB     ED42          sbc hl, bc
0026CD     280F          jr z, $26DE
0026CF     180A          jr $26DB
0026D1     DD27FD        ld hl, (ix-$03)
0026D4     3600          ld (hl), $00
0026D6     23            inc hl
0026D7     22FF00        ld ($00FF), hl
0026DA     D0            ret nc
0026DB     DD2706        ld hl, (ix+$06)
0026DE     DDF9          ld sp, ix
0026E0     DDE1          pop ix
0026E2     C9            ret 
0026E3     DDE5          push ix
0026E5     DD210000      ld ix, $0000
0026E9     00            nop 
0026EA     DD39          add ix, sp
0026EC     C5            push bc
0026ED     210000        ld hl, $0000
0026F0     00            nop 
0026F1     220201        ld ($0102), hl
0026F4     D0            ret nc
0026F5     DD2706        ld hl, (ix+$06)
0026F8     220501        ld ($0105), hl
0026FB     D0            ret nc
0026FC     C3ED27        jp $27ED
0026FF     00            nop 
002700     23            inc hl
002701     DD2F09        ld (ix+$09), hl
002704     4F            ld c, a
002705     C5            push bc
002706     CD0B28        call $280B
002709     00            nop 
00270A     C1            pop bc
00270B     2A0201        ld hl, ($0102)
00270E     D0            ret nc
00270F     23            inc hl
002710     220201        ld ($0102), hl
002713     D0            ret nc
002714     DD2709        ld hl, (ix+$09)
002717     7E            ld a, (hl)
002718     B7            or a, a
002719     CAF627        jp z, $27F6
00271C     00            nop 
00271D     FE25          cp a, $25
00271F     20DF          jr nz, $2700
002721     ED650C        pea ix+$0C
002724     010B01        ld bc, $010B
002727     D0            ret nc
002728     C5            push bc
002729     DD0709        ld bc, (ix+$09)
00272C     DD0FFD        ld (ix-$03), bc
00272F     C5            push bc
002730     CD3C2D        call $2D3C
002733     00            nop 
002734     DD2F09        ld (ix+$09), hl
002737     C1            pop bc
002738     C1            pop bc
002739     C1            pop bc
00273A     FD210B01      ld iy, $010B
00273E     D0            ret nc
00273F     FD7E00        ld a, (iy)
002742     FE01          cp a, $01
002744     202C          jr nz, $2772
002746     1817          jr $275F
002748     DD27FD        ld hl, (ix-$03)
00274B     4E            ld c, (hl)
00274C     23            inc hl
00274D     DD2FFD        ld (ix-$03), hl
002750     C5            push bc
002751     CD0B28        call $280B
002754     00            nop 
002755     C1            pop bc
002756     2A0201        ld hl, ($0102)
002759     D0            ret nc
00275A     23            inc hl
00275B     220201        ld ($0102), hl
00275E     D0            ret nc
00275F     DD27FD        ld hl, (ix-$03)
002762     DD1709        ld de, (ix+$09)
002765     B7            or a, a
002766     ED52          sbc hl, de
002768     38DE          jr c, $2748
00276A     21FFFF        ld hl, $FFFF
00276D     FF            rst $0038
00276E     C30628        jp $2806
002771     00            nop 
002772     FE02          cp a, $02
002774     2014          jr nz, $278A
002776     FD4E03        ld c, (iy+$03)
002779     C5            push bc
00277A     CD0B28        call $280B
00277D     00            nop 
00277E     C1            pop bc
00277F     2A0201        ld hl, ($0102)
002782     D0            ret nc
002783     23            inc hl
002784     220201        ld ($0102), hl
002787     D0            ret nc
002788     1863          jr $27ED
00278A     DD270C        ld hl, (ix+$0C)
00278D     ED17          ld de, (hl)
00278F     23            inc hl
002790     23            inc hl
002791     23            inc hl
002792     DD2F0C        ld (ix+$0C), hl
002795     FD7E04        ld a, (iy+$04)
002798     FE64          cp a, $64
00279A     2804          jr z, $27A0
00279C     FE69          cp a, $69
00279E     2008          jr nz, $27A8
0027A0     D5            push de
0027A1     CD8F2A        call $2A8F
0027A4     00            nop 
0027A5     D1            pop de
0027A6     1845          jr $27ED
0027A8     FE78          cp a, $78
0027AA     2810          jr z, $27BC
0027AC     FE58          cp a, $58
0027AE     280C          jr z, $27BC
0027B0     FE75          cp a, $75
0027B2     2808          jr z, $27BC
0027B4     FE6F          cp a, $6F
0027B6     2804          jr z, $27BC
0027B8     FE70          cp a, $70
0027BA     2008          jr nz, $27C4
0027BC     D5            push de
0027BD     CDFE2B        call $2BFE
0027C0     00            nop 
0027C1     D1            pop de
0027C2     1829          jr $27ED
0027C4     FE63          cp a, $63
0027C6     200E          jr nz, $27D6
0027C8     211201        ld hl, $0112
0027CB     D0            ret nc
0027CC     73            ld (hl), e
0027CD     23            inc hl
0027CE     3600          ld (hl), $00
0027D0     CD2528        call $2825
0027D3     00            nop 
0027D4     1817          jr $27ED
0027D6     FE73          cp a, $73
0027D8     2008          jr nz, $27E2
0027DA     D5            push de
0027DB     CD6E29        call $296E
0027DE     00            nop 
0027DF     D1            pop de
0027E0     180B          jr $27ED
0027E2     FE6E          cp a, $6E
0027E4     2007          jr nz, $27ED
0027E6     2A0201        ld hl, ($0102)
0027E9     D0            ret nc
0027EA     EB            ex de, hl
0027EB     ED1F          ld (hl), de
0027ED     DD2709        ld hl, (ix+$09)
0027F0     7E            ld a, (hl)
0027F1     B7            or a, a
0027F2     C21D27        jp nz, $271D
0027F5     00            nop 
0027F6     2A0501        ld hl, ($0105)
0027F9     D0            ret nc
0027FA     CDB81C        call $1CB8
0027FD     00            nop 
0027FE     2802          jr z, $2802
002800     97            sub a, a
002801     77            ld (hl), a
002802     2A0201        ld hl, ($0102)
002805     D0            ret nc
002806     DDF9          ld sp, ix
002808     DDE1          pop ix
00280A     C9            ret 
00280B     DDE5          push ix
00280D     DD210000      ld ix, $0000
002811     00            nop 
002812     DD39          add ix, sp
002814     DD4E06        ld c, (ix+$06)
002817     C5            push bc
002818     FD2A0801      ld iy, ($0108)
00281C     D0            ret nc
00281D     CD7E1D        call $1D7E
002820     00            nop 
002821     C1            pop bc
002822     DDE1          pop ix
002824     C9            ret 
002825     DDE5          push ix
002827     DD210000      ld ix, $0000
00282B     00            nop 
00282C     DD39          add ix, sp
00282E     C5            push bc
00282F     C5            push bc
002830     C5            push bc
002831     C5            push bc
002832     3B            dec sp
002833     3B            dec sp
002834     210000        ld hl, $0000
002837     00            nop 
002838     DD2FFA        ld (ix-$06), hl
00283B     DD36F920      ld (ix-$07), $20
00283F     DDCB86F5      res 0, (ix-$0B)
002843     FD210B01      ld iy, $010B
002847     D0            ret nc
002848     FDCB4601      bit 0, (iy+$01)
00284C     2008          jr nz, $2856
00284E     FD7E05        ld a, (iy+$05)
002851     B7            or a, a
002852     F25A28        jp p, $285A
002855     00            nop 
002856     DDCBC6F5      set 0, (ix-$0B)
00285A     3A2001        ld a, ($0120)
00285D     D0            ret nc
00285E     B7            or a, a
00285F     281C          jr z, $287D
002861     4F            ld c, a
002862     C5            push bc
002863     CD0B28        call $280B
002866     00            nop 
002867     C1            pop bc
002868     2A0201        ld hl, ($0102)
00286B     D0            ret nc
00286C     23            inc hl
00286D     220201        ld ($0102), hl
002870     D0            ret nc
002871     97            sub a, a
002872     322001        ld ($0120), a
002875     D0            ret nc
002876     210100        ld hl, $0001
002879     00            nop 
00287A     DD2FFA        ld (ix-$06), hl
00287D     FD210B01      ld iy, $010B
002881     D0            ret nc
002882     FD7E05        ld a, (iy+$05)
002885     B7            or a, a
002886     285D          jr z, $28E5
002888     DDCB46F5      bit 0, (ix-$0B)
00288C     2057          jr nz, $28E5
00288E     FDCB7601      bit 6, (iy+$01)
002892     2804          jr z, $2898
002894     DD36F930      ld (ix-$07), $30
002898     FD7E05        ld a, (iy+$05)
00289B     B7            or a, a
00289C     F2A228        jp p, $28A2
00289F     00            nop 
0028A0     ED44          neg 
0028A2     210000        ld hl, $0000
0028A5     00            nop 
0028A6     6F            ld l, a
0028A7     DD2FF2        ld (ix-$0E), hl
0028AA     E5            push hl
0028AB     011201        ld bc, $0112
0028AE     D0            ret nc
0028AF     C5            push bc
0028B0     CDDF24        call $24DF
0028B3     00            nop 
0028B4     C1            pop bc
0028B5     EB            ex de, hl
0028B6     E1            pop hl
0028B7     B7            or a, a
0028B8     ED52          sbc hl, de
0028BA     DD17FA        ld de, (ix-$06)
0028BD     B7            or a, a
0028BE     ED52          sbc hl, de
0028C0     1816          jr $28D8
0028C2     2A0201        ld hl, ($0102)
0028C5     D0            ret nc
0028C6     23            inc hl
0028C7     220201        ld ($0102), hl
0028CA     D0            ret nc
0028CB     DD4EF9        ld c, (ix-$07)
0028CE     C5            push bc
0028CF     CD0B28        call $280B
0028D2     00            nop 
0028D3     C1            pop bc
0028D4     DD27FD        ld hl, (ix-$03)
0028D7     2B            dec hl
0028D8     DD2FFD        ld (ix-$03), hl
0028DB     CDB81C        call $1CB8
0028DE     00            nop 
0028DF     2804          jr z, $28E5
0028E1     F2C228        jp p, $28C2
0028E4     00            nop 
0028E5     211201        ld hl, $0112
0028E8     D0            ret nc
0028E9     180B          jr $28F6
0028EB     4F            ld c, a
0028EC     C5            push bc
0028ED     CD0B28        call $280B
0028F0     00            nop 
0028F1     C1            pop bc
0028F2     DD27F6        ld hl, (ix-$0A)
0028F5     23            inc hl
0028F6     DD2FF6        ld (ix-$0A), hl
0028F9     7E            ld a, (hl)
0028FA     B7            or a, a
0028FB     20EE          jr nz, $28EB
0028FD     111201        ld de, $0112
002900     D0            ret nc
002901     B7            or a, a
002902     ED52          sbc hl, de
002904     ED5B0201      ld de, ($0102)
002908     D0            ret nc
002909     19            add hl, de
00290A     220201        ld ($0102), hl
00290D     D0            ret nc
00290E     DDCB46F5      bit 0, (ix-$0B)
002912     2844          jr z, $2958
002914     DD27F2        ld hl, (ix-$0E)
002917     DD17F6        ld de, (ix-$0A)
00291A     B7            or a, a
00291B     ED52          sbc hl, de
00291D     111201        ld de, $0112
002920     D0            ret nc
002921     19            add hl, de
002922     DD2FFD        ld (ix-$03), hl
002925     CDB81C        call $1CB8
002928     00            nop 
002929     FA5829        jp m, $2958
00292C     00            nop 
00292D     2829          jr z, $2958
00292F     ED5B0201      ld de, ($0102)
002933     D0            ret nc
002934     19            add hl, de
002935     220201        ld ($0102), hl
002938     D0            ret nc
002939     DD27FD        ld hl, (ix-$03)
00293C     1810          jr $294E
00293E     DD4EF9        ld c, (ix-$07)
002941     C5            push bc
002942     CD0B28        call $280B
002945     00            nop 
002946     C1            pop bc
002947     DD27FD        ld hl, (ix-$03)
00294A     2B            dec hl
00294B     DD2FFD        ld (ix-$03), hl
00294E     CDB81C        call $1CB8
002951     00            nop 
002952     2804          jr z, $2958
002954     F23E29        jp p, $293E
002957     00            nop 
002958     97            sub a, a
002959     320F01        ld ($010F), a
00295C     D0            ret nc
00295D     321001        ld ($0110), a
002960     D0            ret nc
002961     321101        ld ($0111), a
002964     D0            ret nc
002965     320C01        ld ($010C), a
002968     D0            ret nc
002969     DDF9          ld sp, ix
00296B     DDE1          pop ix
00296D     C9            ret 
00296E     DDE5          push ix
002970     DD210000      ld ix, $0000
002974     00            nop 
002975     DD39          add ix, sp
002977     C5            push bc
002978     C5            push bc
002979     3B            dec sp
00297A     3B            dec sp
00297B     DD36FF00      ld (ix-$01), $00
00297F     DD2706        ld hl, (ix+$06)
002982     DD2FFA        ld (ix-$06), hl
002985     DDCB86F9      res 0, (ix-$07)
002989     FD210B01      ld iy, $010B
00298D     D0            ret nc
00298E     FD7E05        ld a, (iy+$05)
002991     B7            or a, a
002992     2866          jr z, $29FA
002994     DDCB86F9      res 0, (ix-$07)
002998     FAA229        jp m, $29A2
00299B     00            nop 
00299C     FDCB4601      bit 0, (iy+$01)
0029A0     2804          jr z, $29A6
0029A2     DDCBC6F9      set 0, (ix-$07)
0029A6     DDCB46F9      bit 0, (ix-$07)
0029AA     204E          jr nz, $29FA
0029AC     DD07FA        ld bc, (ix-$06)
0029AF     C5            push bc
0029B0     CDDF24        call $24DF
0029B3     00            nop 
0029B4     C1            pop bc
0029B5     DD75F8        ld (ix-$08), l
0029B8     FD210B01      ld iy, $010B
0029BC     D0            ret nc
0029BD     FDCB6601      bit 4, (iy+$01)
0029C1     2810          jr z, $29D3
0029C3     7D            ld a, l
0029C4     FDBE06        cp a, (iy+$06)
0029C7     FAD329        jp m, $29D3
0029CA     00            nop 
0029CB     2806          jr z, $29D3
0029CD     FD7E06        ld a, (iy+$06)
0029D0     DD77F8        ld (ix-$08), a
0029D3     FD7E05        ld a, (iy+$05)
0029D6     DD96F8        sub a, (ix-$08)
0029D9     DD77F8        ld (ix-$08), a
0029DC     1815          jr $29F3
0029DE     0E20          ld c, $20
0029E0     C5            push bc
0029E1     CD0B28        call $280B
0029E4     00            nop 
0029E5     C1            pop bc
0029E6     DD27FF        ld hl, (ix-$01)
0029E9     23            inc hl
0029EA     DD2FFF        ld (ix-$01), hl
0029ED     DD35F8        dec (ix-$08)
0029F0     DD7EF8        ld a, (ix-$08)
0029F3     B7            or a, a
0029F4     2804          jr z, $29FA
0029F6     F2DE29        jp p, $29DE
0029F9     00            nop 
0029FA     FD210B01      ld iy, $010B
0029FE     D0            ret nc
0029FF     FDCB6601      bit 4, (iy+$01)
002A03     2004          jr nz, $2A09
002A05     3EFF          ld a, $FF
002A07     1803          jr $2A0C
002A09     FD7E06        ld a, (iy+$06)
002A0C     DD77FD        ld (ix-$03), a
002A0F     DD36FE00      ld (ix-$02), $00
002A13     1811          jr $2A26
002A15     4F            ld c, a
002A16     C5            push bc
002A17     CD0B28        call $280B
002A1A     00            nop 
002A1B     C1            pop bc
002A1C     DD27FA        ld hl, (ix-$06)
002A1F     23            inc hl
002A20     DD2FFA        ld (ix-$06), hl
002A23     DD34FE        inc (ix-$02)
002A26     DD7EFE        ld a, (ix-$02)
002A29     DDBEFD        cp a, (ix-$03)
002A2C     3007          jr nc, $2A35
002A2E     DD27FA        ld hl, (ix-$06)
002A31     7E            ld a, (hl)
002A32     B7            or a, a
002A33     20E0          jr nz, $2A15
002A35     DD7EFF        ld a, (ix-$01)
002A38     DD86FE        add a, (ix-$02)
002A3B     DD77FF        ld (ix-$01), a
002A3E     DDCB46F9      bit 0, (ix-$07)
002A42     2829          jr z, $2A6D
002A44     3A1001        ld a, ($0110)
002A47     D0            ret nc
002A48     B7            or a, a
002A49     F2532A        jp p, $2A53
002A4C     00            nop 
002A4D     ED44          neg 
002A4F     321001        ld ($0110), a
002A52     D0            ret nc
002A53     180B          jr $2A60
002A55     0E20          ld c, $20
002A57     C5            push bc
002A58     CD0B28        call $280B
002A5B     00            nop 
002A5C     C1            pop bc
002A5D     DD34FF        inc (ix-$01)
002A60     3A1001        ld a, ($0110)
002A63     D0            ret nc
002A64     47            ld b, a
002A65     DD7EFF        ld a, (ix-$01)
002A68     B8            cp a, b
002A69     FA552A        jp m, $2A55
002A6C     00            nop 
002A6D     110000        ld de, $0000
002A70     00            nop 
002A71     DD5EFF        ld e, (ix-$01)
002A74     2A0201        ld hl, ($0102)
002A77     D0            ret nc
002A78     19            add hl, de
002A79     220201        ld ($0102), hl
002A7C     D0            ret nc
002A7D     97            sub a, a
002A7E     321001        ld ($0110), a
002A81     D0            ret nc
002A82     321101        ld ($0111), a
002A85     D0            ret nc
002A86     320C01        ld ($010C), a
002A89     D0            ret nc
002A8A     DDF9          ld sp, ix
002A8C     DDE1          pop ix
002A8E     C9            ret 
002A8F     DDE5          push ix
002A91     DD210000      ld ix, $0000
002A95     00            nop 
002A96     DD39          add ix, sp
002A98     C5            push bc
002A99     C5            push bc
002A9A     C5            push bc
002A9B     211201        ld hl, $0112
002A9E     D0            ret nc
002A9F     DD2FFB        ld (ix-$05), hl
002AA2     DDCB86FE      res 0, (ix-$02)
002AA6     DD2706        ld hl, (ix+$06)
002AA9     CDB81C        call $1CB8
002AAC     00            nop 
002AAD     F2BB2A        jp p, $2ABB
002AB0     00            nop 
002AB1     DDCBC6FE      set 0, (ix-$02)
002AB5     EB            ex de, hl
002AB6     B7            or a, a
002AB7     ED62          sbc hl, hl
002AB9     ED52          sbc hl, de
002ABB     DD2FF8        ld (ix-$08), hl
002ABE     DDCBCEFE      set 1, (ix-$02)
002AC2     CDB81C        call $1CB8
002AC5     00            nop 
002AC6     2004          jr nz, $2ACC
002AC8     DDCB8EFE      res 1, (ix-$02)
002ACC     FD210B01      ld iy, $010B
002AD0     D0            ret nc
002AD1     FD7E06        ld a, (iy+$06)
002AD4     B7            or a, a
002AD5     F2DD2A        jp p, $2ADD
002AD8     00            nop 
002AD9     FD360601      ld (iy+$06), $01
002ADD     FD7E05        ld a, (iy+$05)
002AE0     B7            or a, a
002AE1     F2EE2A        jp p, $2AEE
002AE4     00            nop 
002AE5     FDCBC601      set 0, (iy+$01)
002AE9     ED44          neg 
002AEB     FD7705        ld (iy+$05), a
002AEE     DD36FF41      ld (ix-$01), $41
002AF2     FD7E04        ld a, (iy+$04)
002AF5     FE64          cp a, $64
002AF7     282E          jr z, $2B27
002AF9     FE69          cp a, $69
002AFB     282A          jr z, $2B27
002AFD     FE75          cp a, $75
002AFF     2826          jr z, $2B27
002B01     FE6F          cp a, $6F
002B03     2006          jr nz, $2B0B
002B05     DD36F708      ld (ix-$09), $08
002B09     1820          jr $2B2B
002B0B     FE78          cp a, $78
002B0D     2804          jr z, $2B13
002B0F     FE70          cp a, $70
002B11     200A          jr nz, $2B1D
002B13     FDCB6E01      bit 5, (iy+$01)
002B17     2804          jr z, $2B1D
002B19     DD36FF61      ld (ix-$01), $61
002B1D     FE58          cp a, $58
002B1F     2006          jr nz, $2B27
002B21     DD36F710      ld (ix-$09), $10
002B25     1804          jr $2B2B
002B27     DD36F70A      ld (ix-$09), $0A
002B2B     DD27F8        ld hl, (ix-$08)
002B2E     010000        ld bc, $0000
002B31     00            nop 
002B32     DD4EF7        ld c, (ix-$09)
002B35     CD071D        call $1D07
002B38     00            nop 
002B39     DD1FF8        ld (ix-$08), de
002B3C     7D            ld a, l
002B3D     FE0A          cp a, $0A
002B3F     3807          jr c, $2B48
002B41     D60A          sub a, $0A
002B43     DD86FF        add a, (ix-$01)
002B46     1802          jr $2B4A
002B48     C630          add a, $30
002B4A     DD27FB        ld hl, (ix-$05)
002B4D     77            ld (hl), a
002B4E     23            inc hl
002B4F     DD2FFB        ld (ix-$05), hl
002B52     DD27F8        ld hl, (ix-$08)
002B55     CDB81C        call $1CB8
002B58     00            nop 
002B59     20D0          jr nz, $2B2B
002B5B     FD210B01      ld iy, $010B
002B5F     D0            ret nc
002B60     DD27FB        ld hl, (ix-$05)
002B63     111201        ld de, $0112
002B66     D0            ret nc
002B67     B7            or a, a
002B68     ED52          sbc hl, de
002B6A     7D            ld a, l
002B6B     FD9606        sub a, (iy+$06)
002B6E     DD27FB        ld hl, (ix-$05)
002B71     F2812B        jp p, $2B81
002B74     00            nop 
002B75     ED44          neg 
002B77     47            ld b, a
002B78     3E30          ld a, $30
002B7A     77            ld (hl), a
002B7B     23            inc hl
002B7C     10FC          djnz $2B7A
002B7E     DD2FFB        ld (ix-$05), hl
002B81     FDCB5E01      bit 3, (iy+$01)
002B85     281D          jr z, $2BA4
002B87     DDCB4EFE      bit 1, (ix-$02)
002B8B     2817          jr z, $2BA4
002B8D     DD7EF7        ld a, (ix-$09)
002B90     FE10          cp a, $10
002B92     2009          jr nz, $2B9D
002B94     3E17          ld a, $17
002B96     DD86FF        add a, (ix-$01)
002B99     77            ld (hl), a
002B9A     23            inc hl
002B9B     1804          jr $2BA1
002B9D     FE08          cp a, $08
002B9F     2002          jr nz, $2BA3
002BA1     3630          ld (hl), $30
002BA3     23            inc hl
002BA4     DDCB46FE      bit 0, (ix-$02)
002BA8     2806          jr z, $2BB0
002BAA     DD36FF2D      ld (ix-$01), $2D
002BAE     181C          jr $2BCC
002BB0     FDCB4E01      bit 1, (iy+$01)
002BB4     2806          jr z, $2BBC
002BB6     DD36FF2B      ld (ix-$01), $2B
002BBA     1810          jr $2BCC
002BBC     FDCB5601      bit 2, (iy+$01)
002BC0     2806          jr z, $2BC8
002BC2     DD36FF20      ld (ix-$01), $20
002BC6     1804          jr $2BCC
002BC8     DD36FF00      ld (ix-$01), $00
002BCC     FD7E06        ld a, (iy+$06)
002BCF     B7            or a, a
002BD0     2804          jr z, $2BD6
002BD2     FDCBB601      res 6, (iy+$01)
002BD6     DD7EFF        ld a, (ix-$01)
002BD9     FDCB7601      bit 6, (iy+$01)
002BDD     2006          jr nz, $2BE5
002BDF     B7            or a, a
002BE0     2803          jr z, $2BE5
002BE2     77            ld (hl), a
002BE3     23            inc hl
002BE4     97            sub a, a
002BE5     322001        ld ($0120), a
002BE8     D0            ret nc
002BE9     3600          ld (hl), $00
002BEB     011201        ld bc, $0112
002BEE     D0            ret nc
002BEF     C5            push bc
002BF0     CDFD2C        call $2CFD
002BF3     00            nop 
002BF4     C1            pop bc
002BF5     CD2528        call $2825
002BF8     00            nop 
002BF9     DDF9          ld sp, ix
002BFB     DDE1          pop ix
002BFD     C9            ret 
002BFE     DDE5          push ix
002C00     DD210000      ld ix, $0000
002C04     00            nop 
002C05     DD39          add ix, sp
002C07     C5            push bc
002C08     C5            push bc
002C09     211201        ld hl, $0112
002C0C     D0            ret nc
002C0D     DD2FFC        ld (ix-$04), hl
002C10     DDCBC6FB      set 0, (ix-$05)
002C14     DD2706        ld hl, (ix+$06)
002C17     CDB81C        call $1CB8
002C1A     00            nop 
002C1B     2004          jr nz, $2C21
002C1D     DDCB86FB      res 0, (ix-$05)
002C21     DD36FF41      ld (ix-$01), $41
002C25     FD210B01      ld iy, $010B
002C29     D0            ret nc
002C2A     FD7E04        ld a, (iy+$04)
002C2D     FE64          cp a, $64
002C2F     2830          jr z, $2C61
002C31     FE69          cp a, $69
002C33     282C          jr z, $2C61
002C35     FE75          cp a, $75
002C37     2828          jr z, $2C61
002C39     FE6F          cp a, $6F
002C3B     2006          jr nz, $2C43
002C3D     DD36FA08      ld (ix-$06), $08
002C41     1822          jr $2C65
002C43     FE78          cp a, $78
002C45     2804          jr z, $2C4B
002C47     FE70          cp a, $70
002C49     200C          jr nz, $2C57
002C4B     FDCB6E01      bit 5, (iy+$01)
002C4F     200A          jr nz, $2C5B
002C51     DD36FF61      ld (ix-$01), $61
002C55     1804          jr $2C5B
002C57     FE58          cp a, $58
002C59     2006          jr nz, $2C61
002C5B     DD36FA10      ld (ix-$06), $10
002C5F     1804          jr $2C65
002C61     DD36FA0A      ld (ix-$06), $0A
002C65     DD2706        ld hl, (ix+$06)
002C68     010000        ld bc, $0000
002C6B     00            nop 
002C6C     DD4EFA        ld c, (ix-$06)
002C6F     CD071D        call $1D07
002C72     00            nop 
002C73     DD1F06        ld (ix+$06), de
002C76     7D            ld a, l
002C77     FE0A          cp a, $0A
002C79     3807          jr c, $2C82
002C7B     D60A          sub a, $0A
002C7D     DD86FF        add a, (ix-$01)
002C80     1802          jr $2C84
002C82     C630          add a, $30
002C84     DD27FC        ld hl, (ix-$04)
002C87     77            ld (hl), a
002C88     23            inc hl
002C89     DD2FFC        ld (ix-$04), hl
002C8C     DD2706        ld hl, (ix+$06)
002C8F     CDB81C        call $1CB8
002C92     00            nop 
002C93     20D0          jr nz, $2C65
002C95     FD210B01      ld iy, $010B
002C99     D0            ret nc
002C9A     DD27FC        ld hl, (ix-$04)
002C9D     111201        ld de, $0112
002CA0     D0            ret nc
002CA1     B7            or a, a
002CA2     ED52          sbc hl, de
002CA4     7D            ld a, l
002CA5     FD9606        sub a, (iy+$06)
002CA8     DD27FC        ld hl, (ix-$04)
002CAB     F2BB2C        jp p, $2CBB
002CAE     00            nop 
002CAF     ED44          neg 
002CB1     47            ld b, a
002CB2     3E30          ld a, $30
002CB4     77            ld (hl), a
002CB5     23            inc hl
002CB6     10FC          djnz $2CB4
002CB8     DD2FFC        ld (ix-$04), hl
002CBB     FDCB5E01      bit 3, (iy+$01)
002CBF     281D          jr z, $2CDE
002CC1     DDCB46FB      bit 0, (ix-$05)
002CC5     2817          jr z, $2CDE
002CC7     DD7EFA        ld a, (ix-$06)
002CCA     FE10          cp a, $10
002CCC     2009          jr nz, $2CD7
002CCE     3E17          ld a, $17
002CD0     DD86FF        add a, (ix-$01)
002CD3     77            ld (hl), a
002CD4     23            inc hl
002CD5     1804          jr $2CDB
002CD7     FE08          cp a, $08
002CD9     2002          jr nz, $2CDD
002CDB     3630          ld (hl), $30
002CDD     23            inc hl
002CDE     FD7E06        ld a, (iy+$06)
002CE1     B7            or a, a
002CE2     2804          jr z, $2CE8
002CE4     FDCBB601      res 6, (iy+$01)
002CE8     3600          ld (hl), $00
002CEA     011201        ld bc, $0112
002CED     D0            ret nc
002CEE     C5            push bc
002CEF     CDFD2C        call $2CFD
002CF2     00            nop 
002CF3     C1            pop bc
002CF4     CD2528        call $2825
002CF7     00            nop 
002CF8     DDF9          ld sp, ix
002CFA     DDE1          pop ix
002CFC     C9            ret 
002CFD     DDE5          push ix
002CFF     DD210000      ld ix, $0000
002D03     00            nop 
002D04     DD39          add ix, sp
002D06     3B            dec sp
002D07     DD2706        ld hl, (ix+$06)
002D0A     E5            push hl
002D0B     CDDF24        call $24DF
002D0E     00            nop 
002D0F     C1            pop bc
002D10     E5            push hl
002D11     C1            pop bc
002D12     DD2706        ld hl, (ix+$06)
002D15     09            add hl, bc
002D16     2B            dec hl
002D17     EB            ex de, hl
002D18     1814          jr $2D2E
002D1A     1A            ld a, (de)
002D1B     DD77FF        ld (ix-$01), a
002D1E     DD2706        ld hl, (ix+$06)
002D21     7E            ld a, (hl)
002D22     12            ld (de), a
002D23     1B            dec de
002D24     DD7EFF        ld a, (ix-$01)
002D27     77            ld (hl), a
002D28     23            inc hl
002D29     DD2F06        ld (ix+$06), hl
002D2C     0B            dec bc
002D2D     0B            dec bc
002D2E     210100        ld hl, $0001
002D31     00            nop 
002D32     B7            or a, a
002D33     ED42          sbc hl, bc
002D35     38E3          jr c, $2D1A
002D37     DDF9          ld sp, ix
002D39     DDE1          pop ix
002D3B     C9            ret 
002D3C     DDE5          push ix
002D3E     DD210000      ld ix, $0000
002D42     00            nop 
002D43     DD39          add ix, sp
002D45     C5            push bc
002D46     C5            push bc
002D47     C5            push bc
002D48     3B            dec sp
002D49     3B            dec sp
002D4A     210000        ld hl, $0000
002D4D     00            nop 
002D4E     DD2FFA        ld (ix-$06), hl
002D51     DD2FF7        ld (ix-$09), hl
002D54     DDCB86F5      res 0, (ix-$0B)
002D58     DD3109        ld iy, (ix+$09)
002D5B     FD7501        ld (iy+$01), l
002D5E     FD7505        ld (iy+$05), l
002D61     FD7506        ld (iy+$06), l
002D64     FD7502        ld (iy+$02), l
002D67     FD7504        ld (iy+$04), l
002D6A     DD2706        ld hl, (ix+$06)
002D6D     7E            ld a, (hl)
002D6E     DD77F6        ld (ix-$0A), a
002D71     23            inc hl
002D72     DD2F06        ld (ix+$06), hl
002D75     FE2D          cp a, $2D
002D77     280C          jr z, $2D85
002D79     FE2B          cp a, $2B
002D7B     2808          jr z, $2D85
002D7D     FE20          cp a, $20
002D7F     2804          jr z, $2D85
002D81     FE23          cp a, $23
002D83     2006          jr nz, $2D8B
002D85     DD36F700      ld (ix-$09), $00
002D89     185E          jr $2DE9
002D8B     FE30          cp a, $30
002D8D     380A          jr c, $2D99
002D8F     FE3A          cp a, $3A
002D91     3006          jr nc, $2D99
002D93     DD36F701      ld (ix-$09), $01
002D97     1850          jr $2DE9
002D99     FE2E          cp a, $2E
002D9B     2006          jr nz, $2DA3
002D9D     DD36F703      ld (ix-$09), $03
002DA1     1846          jr $2DE9
002DA3     FE2A          cp a, $2A
002DA5     2006          jr nz, $2DAD
002DA7     DD36F706      ld (ix-$09), $06
002DAB     183C          jr $2DE9
002DAD     FE64          cp a, $64
002DAF     2824          jr z, $2DD5
002DB1     FE69          cp a, $69
002DB3     2820          jr z, $2DD5
002DB5     FE6F          cp a, $6F
002DB7     281C          jr z, $2DD5
002DB9     FE75          cp a, $75
002DBB     2818          jr z, $2DD5
002DBD     FE78          cp a, $78
002DBF     2814          jr z, $2DD5
002DC1     FE58          cp a, $58
002DC3     2810          jr z, $2DD5
002DC5     FE63          cp a, $63
002DC7     280C          jr z, $2DD5
002DC9     FE73          cp a, $73
002DCB     2808          jr z, $2DD5
002DCD     FE70          cp a, $70
002DCF     2804          jr z, $2DD5
002DD1     FE6E          cp a, $6E
002DD3     2006          jr nz, $2DDB
002DD5     DD36F704      ld (ix-$09), $04
002DD9     180E          jr $2DE9
002DDB     FE25          cp a, $25
002DDD     2006          jr nz, $2DE5
002DDF     DD36F705      ld (ix-$09), $05
002DE3     1804          jr $2DE9
002DE5     DD36F707      ld (ix-$09), $07
002DE9     DD27FA        ld hl, (ix-$06)
002DEC     DD2FFD        ld (ix-$03), hl
002DEF     29            add hl, hl
002DF0     29            add hl, hl
002DF1     29            add hl, hl
002DF2     01552F        ld bc, $2F55
002DF5     00            nop 
002DF6     09            add hl, bc
002DF7     DD07F7        ld bc, (ix-$09)
002DFA     09            add hl, bc
002DFB     7E            ld a, (hl)
002DFC     DD77FA        ld (ix-$06), a
002DFF     FEFF          cp a, $FF
002E01     2006          jr nz, $2E09
002E03     FD360000      ld (iy), $00
002E07     1808          jr $2E11
002E09     FEFE          cp a, $FE
002E0B     200C          jr nz, $2E19
002E0D     FD360001      ld (iy), $01
002E11     DD2706        ld hl, (ix+$06)
002E14     2B            dec hl
002E15     C3502F        jp $2F50
002E18     00            nop 
002E19     FE02          cp a, $02
002E1B     2035          jr nz, $2E52
002E1D     DD7EF6        ld a, (ix-$0A)
002E20     FE2D          cp a, $2D
002E22     2008          jr nz, $2E2C
002E24     FDCBC601      set 0, (iy+$01)
002E28     C36A2D        jp $2D6A
002E2B     00            nop 
002E2C     FE2B          cp a, $2B
002E2E     2008          jr nz, $2E38
002E30     FDCBCE01      set 1, (iy+$01)
002E34     C36A2D        jp $2D6A
002E37     00            nop 
002E38     FE20          cp a, $20
002E3A     2008          jr nz, $2E44
002E3C     FDCBD601      set 2, (iy+$01)
002E40     C36A2D        jp $2D6A
002E43     00            nop 
002E44     FE23          cp a, $23
002E46     C26A2D        jp nz, $2D6A
002E49     00            nop 
002E4A     FDCBDE01      set 3, (iy+$01)
002E4E     C36A2D        jp $2D6A
002E51     00            nop 
002E52     FE03          cp a, $03
002E54     2043          jr nz, $2E99
002E56     DD7EF6        ld a, (ix-$0A)
002E59     FE2A          cp a, $2A
002E5B     2017          jr nz, $2E74
002E5D     DD270C        ld hl, (ix+$0C)
002E60     ED31          ld iy, (hl)
002E62     FD7E00        ld a, (iy)
002E65     ED0303        lea bc, iy+$03
002E68     ED0F          ld (hl), bc
002E6A     DD3109        ld iy, (ix+$09)
002E6D     FD7705        ld (iy+$05), a
002E70     C36A2D        jp $2D6A
002E73     00            nop 
002E74     DD7EF6        ld a, (ix-$0A)
002E77     D630          sub a, $30
002E79     200F          jr nz, $2E8A
002E7B     DD07FD        ld bc, (ix-$03)
002E7E     DD27FA        ld hl, (ix-$06)
002E81     B7            or a, a
002E82     ED42          sbc hl, bc
002E84     2804          jr z, $2E8A
002E86     FDCBF601      set 6, (iy+$01)
002E8A     FD4605        ld b, (iy+$05)
002E8D     0E0A          ld c, $0A
002E8F     ED4C          mlt bc
002E91     81            add a, c
002E92     FD7705        ld (iy+$05), a
002E95     C36A2D        jp $2D6A
002E98     00            nop 
002E99     FE04          cp a, $04
002E9B     2008          jr nz, $2EA5
002E9D     DDCBC6F5      set 0, (ix-$0B)
002EA1     C36A2D        jp $2D6A
002EA4     00            nop 
002EA5     FE05          cp a, $05
002EA7     2032          jr nz, $2EDB
002EA9     DD7EF6        ld a, (ix-$0A)
002EAC     FE2A          cp a, $2A
002EAE     2017          jr nz, $2EC7
002EB0     DD270C        ld hl, (ix+$0C)
002EB3     ED31          ld iy, (hl)
002EB5     FD7E00        ld a, (iy)
002EB8     ED0303        lea bc, iy+$03
002EBB     ED0F          ld (hl), bc
002EBD     DD3109        ld iy, (ix+$09)
002EC0     FD7706        ld (iy+$06), a
002EC3     C36A2D        jp $2D6A
002EC6     00            nop 
002EC7     FD4606        ld b, (iy+$06)
002ECA     0E0A          ld c, $0A
002ECC     ED4C          mlt bc
002ECE     DD7EF6        ld a, (ix-$0A)
002ED1     D630          sub a, $30
002ED3     81            add a, c
002ED4     FD7706        ld (iy+$06), a
002ED7     C36A2D        jp $2D6A
002EDA     00            nop 
002EDB     FE06          cp a, $06
002EDD     200A          jr nz, $2EE9
002EDF     DD7EF6        ld a, (ix-$0A)
002EE2     FD7702        ld (iy+$02), a
002EE5     C36A2D        jp $2D6A
002EE8     00            nop 
002EE9     FE07          cp a, $07
002EEB     2050          jr nz, $2F3D
002EED     DD7EF6        ld a, (ix-$0A)
002EF0     FE41          cp a, $41
002EF2     380A          jr c, $2EFE
002EF4     FE5B          cp a, $5B
002EF6     3006          jr nc, $2EFE
002EF8     C620          add a, $20
002EFA     FDCBEE01      set 5, (iy+$01)
002EFE     FD7704        ld (iy+$04), a
002F01     FD7E05        ld a, (iy+$05)
002F04     B7            or a, a
002F05     F2122F        jp p, $2F12
002F08     00            nop 
002F09     FDCBC601      set 0, (iy+$01)
002F0D     ED44          neg 
002F0F     FD7705        ld (iy+$05), a
002F12     DDCB46F5      bit 0, (ix-$0B)
002F16     2808          jr z, $2F20
002F18     FD7E06        ld a, (iy+$06)
002F1B     B7            or a, a
002F1C     F2242F        jp p, $2F24
002F1F     00            nop 
002F20     FD360600      ld (iy+$06), $00
002F24     DD7EF6        ld a, (ix-$0A)
002F27     FE73          cp a, $73
002F29     C26A2D        jp nz, $2D6A
002F2C     00            nop 
002F2D     DDCB46F5      bit 0, (ix-$0B)
002F31     CA6A2D        jp z, $2D6A
002F34     00            nop 
002F35     FDCBE601      set 4, (iy+$01)
002F39     C36A2D        jp $2D6A
002F3C     00            nop 
002F3D     FE08          cp a, $08
002F3F     C26A2D        jp nz, $2D6A
002F42     00            nop 
002F43     FD360002      ld (iy), $02
002F47     DD7EF6        ld a, (ix-$0A)
002F4A     FD7703        ld (iy+$03), a
002F4D     DD2706        ld hl, (ix+$06)
002F50     DDF9          ld sp, ix
002F52     DDE1          pop ix
002F54     C9            ret 
002F55     FEFE          cp a, $FE
002F57     FEFE          cp a, $FE
002F59     FE01          cp a, $01
002F5B     FEFE          cp a, $FE
002F5D     02            ld (bc), a
002F5E     03            inc bc
002F5F     0604          ld b, $04
002F61     07            rlca 
002F62     08            ex af, af'
002F63     03            inc bc
002F64     FE02          cp a, $02
002F66     03            inc bc
002F67     0604          ld b, $04
002F69     07            rlca 
002F6A     FE03          cp a, $03
002F6C     FEFE          cp a, $FE
002F6E     03            inc bc
002F6F     0604          ld b, $04
002F71     07            rlca 
002F72     FE03          cp a, $03
002F74     FEFE          cp a, $FE
002F76     05            dec b
002F77     FEFE          cp a, $FE
002F79     07            rlca 
002F7A     FE05          cp a, $05
002F7C     FEFE          cp a, $FE
002F7E     05            dec b
002F7F     06FE          ld b, $FE
002F81     07            rlca 
002F82     FE05          cp a, $05
002F84     FEFE          cp a, $FE
002F86     FEFE          cp a, $FE
002F88     FE07          cp a, $07
002F8A     FEFE          cp a, $FE
002F8C     FEFF          cp a, $FF
002F8E     FF            rst $0038
002F8F     FF            rst $0038
002F90     FF            rst $0038
002F91     FF            rst $0038
002F92     FF            rst $0038
002F93     FF            rst $0038
002F94     FF            rst $0038
002F95     FF            rst $0038
002F96     FF            rst $0038
002F97     FF            rst $0038
002F98     FF            rst $0038
002F99     FF            rst $0038
002F9A     FF            rst $0038
002F9B     FF            rst $0038
002F9C     FF            rst $0038
002F9D     DDE5          push ix
002F9F     DD210000      ld ix, $0000
002FA3     00            nop 
002FA4     DD39          add ix, sp
002FA6     C5            push bc
002FA7     DDCB06FF      rlc (ix-$01)
002FAB     37            scf 
002FAC     DDCB1EFF      rr (ix-$01)
002FB0     C1            pop bc
002FB1     CB17          rl a
002FB3     1600          ld d, $00
002FB5     2005          jr nz, $2FBC
002FB7     010000        ld bc, $0000
002FBA     00            nop 
002FBB     B7            or a, a
002FBC     CB12          rl d
002FBE     B7            or a, a
002FBF     DDE1          pop ix
002FC1     C9            ret 
002FC2     DDE5          push ix
002FC4     DD210000      ld ix, $0000
002FC8     00            nop 
002FC9     DD39          add ix, sp
002FCB     E5            push hl
002FCC     29            add hl, hl
002FCD     DDCBFEFF      set 7, (ix-$01)
002FD1     E1            pop hl
002FD2     CB13          rl e
002FD4     1600          ld d, $00
002FD6     F5            push af
002FD7     2005          jr nz, $2FDE
002FD9     210000        ld hl, $0000
002FDC     00            nop 
002FDD     B7            or a, a
002FDE     CB12          rl d
002FE0     F1            pop af
002FE1     DDE1          pop ix
002FE3     C9            ret 
002FE4     E5            push hl
002FE5     D5            push de
002FE6     CB1A          rr d
002FE8     F5            push af
002FE9     1600          ld d, $00
002FEB     B7            or a, a
002FEC     210000        ld hl, $0000
002FEF     00            nop 
002FF0     ED4A          adc hl, bc
002FF2     200D          jr nz, $3001
002FF4     FE01          cp a, $01
002FF6     3009          jr nc, $3001
002FF8     3F            ccf 
002FF9     9F            sbc a, a
002FFA     ED62          sbc hl, hl
002FFC     1E00          ld e, $00
002FFE     F1            pop af
002FFF     1854          jr $3055
003001     B7            or a, a
003002     F21430        jp p, $3014
003005     00            nop 
003006     F1            pop af
003007     3F            ccf 
003008     F5            push af
003009     B7            or a, a
00300A     210000        ld hl, $0000
00300D     00            nop 
00300E     ED42          sbc hl, bc
003010     4F            ld c, a
003011     3E00          ld a, $00
003013     99            sbc a, c
003014     280D          jr z, $3023
003016     F5            push af
003017     33            inc sp
003018     E5            push hl
003019     7D            ld a, l
00301A     210800        ld hl, $0008
00301D     00            nop 
00301E     19            add hl, de
00301F     EB            ex de, hl
003020     33            inc sp
003021     E1            pop hl
003022     33            inc sp
003023     B7            or a, a
003024     010000        ld bc, $0000
003027     00            nop 
003028     ED4A          adc hl, bc
00302A     FA3D30        jp m, $303D
00302D     00            nop 
00302E     03            inc bc
00302F     EB            ex de, hl
003030     52ED42        sbc.sil hl, bc
003033     EB            ex de, hl
003034     38C2          jr c, $2FF8
003036     87            add a, a
003037     ED6A          adc hl, hl
003039     F22F30        jp p, $302F
00303C     00            nop 
00303D     87            add a, a
00303E     010000        ld bc, $0000
003041     80            add a, b
003042     ED4A          adc hl, bc
003044     F24A30        jp p, $304A
003047     00            nop 
003048     13            inc de
003049     09            add hl, bc
00304A     7A            ld a, d
00304B     FE01          cp a, $01
00304D     30A9          jr nc, $2FF8
00304F     F1            pop af
003050     CB1B          rr e
003052     3001          jr nc, $3055
003054     09            add hl, bc
003055     7B            ld a, e
003056     E5            push hl
003057     C1            pop bc
003058     D1            pop de
003059     E1            pop hl
00305A     C9            ret 
00305B     FF            rst $0038
00305C     FF            rst $0038
00305D     7F            ld a, a
00305E     7F            ld a, a
00305F     E5            push hl
003060     D5            push de
003061     CD9D2F        call $2F9D
003064     00            nop 
003065     CB1A          rr d
003067     F5            push af
003068     CDC22F        call $2FC2
00306B     00            nop 
00306C     F1            pop af
00306D     CB12          rl d
00306F     CB0A          rrc d
003071     BB            cp a, e
003072     3809          jr c, $307D
003074     CB02          rlc d
003076     E5            push hl
003077     C5            push bc
003078     47            ld b, a
003079     7B            ld a, e
00307A     58            ld e, b
00307B     E1            pop hl
00307C     C1            pop bc
00307D     93            sub a, e
00307E     2826          jr z, $30A6
003080     FEE8          cp a, $E8
003082     3F            ccf 
003083     302D          jr nc, $30B2
003085     DDE5          push ix
003087     D5            push de
003088     C5            push bc
003089     DD210000      ld ix, $0000
00308D     00            nop 
00308E     DD39          add ix, sp
003090     DD5602        ld d, (ix+$02)
003093     CB3A          srl d
003095     CB18          rr b
003097     CB19          rr c
003099     3C            inc a
00309A     20F7          jr nz, $3093
00309C     DD0F00        ld (ix), bc
00309F     DD7202        ld (ix+$02), d
0030A2     C1            pop bc
0030A3     D1            pop de
0030A4     DDE1          pop ix
0030A6     7A            ld a, d
0030A7     A7            and a, a
0030A8     EAB130        jp pe, $30B1
0030AB     00            nop 
0030AC     ED42          sbc hl, bc
0030AE     9F            sbc a, a
0030AF     1804          jr $30B5
0030B1     09            add hl, bc
0030B2     3E00          ld a, $00
0030B4     8F            adc a, a
0030B5     E5            push hl
0030B6     C1            pop bc
0030B7     CDE42F        call $2FE4
0030BA     00            nop 
0030BB     D1            pop de
0030BC     E1            pop hl
0030BD     C9            ret 
0030BE     CDA31E        call $1EA3
0030C1     00            nop 
0030C2     2816          jr z, $30DA
0030C4     C5            push bc
0030C5     F5            push af
0030C6     C1            pop bc
0030C7     78            ld a, b
0030C8     A3            and a, e
0030C9     79            ld a, c
0030CA     F2D030        jp p, $30D0
0030CD     00            nop 
0030CE     EE80          xor a, $80
0030D0     CB57          bit 2, a
0030D2     2802          jr z, $30D6
0030D4     EE80          xor a, $80
0030D6     4F            ld c, a
0030D7     C5            push bc
0030D8     F1            pop af
0030D9     C1            pop bc
0030DA     C9            ret 
0030DB     DDE5          push ix
0030DD     FDE5          push iy
0030DF     E5            push hl
0030E0     D5            push de
0030E1     CD9D2F        call $2F9D
0030E4     00            nop 
0030E5     2867          jr z, $314E
0030E7     C5            push bc
0030E8     4F            ld c, a
0030E9     7A            ld a, d
0030EA     CDC22F        call $2FC2
0030ED     00            nop 
0030EE     E5            push hl
0030EF     F5            push af
0030F0     AA            xor a, d
0030F1     0600          ld b, $00
0030F3     1600          ld d, $00
0030F5     219600        ld hl, $0096
0030F8     00            nop 
0030F9     09            add hl, bc
0030FA     ED52          sbc hl, de
0030FC     E5            push hl
0030FD     DDE1          pop ix
0030FF     57            ld d, a
003100     F1            pop af
003101     C1            pop bc
003102     E1            pop hl
003103     283A          jr z, $313F
003105     FD210000      ld iy, $0000
003109     00            nop 
00310A     B7            or a, a
00310B     17            rla 
00310C     FD29          add iy, iy
00310E     3812          jr c, $3122
003110     ED42          sbc hl, bc
003112     3007          jr nc, $311B
003114     CB2F          sra a
003116     3803          jr c, $311B
003118     09            add hl, bc
003119     1802          jr $311D
00311B     FD23          inc iy
00311D     DD2B          dec ix
00311F     29            add hl, hl
003120     18E9          jr $310B
003122     1E00          ld e, $00
003124     CB2F          sra a
003126     3805          jr c, $312D
003128     B7            or a, a
003129     ED42          sbc hl, bc
00312B     3808          jr c, $3135
00312D     010100        ld bc, $0001
003130     00            nop 
003131     FD09          add iy, bc
003133     CB13          rl e
003135     1C            inc e
003136     DD7C          ld a, ixh
003138     B7            or a, a
003139     280D          jr z, $3148
00313B     FA4031        jp m, $3140
00313E     00            nop 
00313F     37            scf 
003140     ED62          sbc hl, hl
003142     5C            ld e, h
003143     3E00          ld a, $00
003145     E5            push hl
003146     1805          jr $314D
003148     7B            ld a, e
003149     DD5D          ld e, ixl
00314B     FDE5          push iy
00314D     C1            pop bc
00314E     CDE42F        call $2FE4
003151     00            nop 
003152     D1            pop de
003153     E1            pop hl
003154     FDE1          pop iy
003156     DDE1          pop ix
003158     C9            ret 
003159     DDE5          push ix
00315B     DD210000      ld ix, $0000
00315F     00            nop 
003160     DD39          add ix, sp
003162     FDE5          push iy
003164     ED55F6        lea iy, ix-$0A
003167     FDF9          ld sp, iy
003169     D5            push de
00316A     E5            push hl
00316B     110000        ld de, $0000
00316E     00            nop 
00316F     FD7201        ld (iy+$01), d
003172     FD7205        ld (iy+$05), d
003175     FD1F02        ld (iy+$02), de
003178     CD9D2F        call $2F9D
00317B     00            nop 
00317C     2872          jr z, $31F0
00317E     FE7F          cp a, $7F
003180     FACA31        jp m, $31CA
003183     00            nop 
003184     D67E          sub a, $7E
003186     FD7700        ld (iy), a
003189     FE20          cp a, $20
00318B     F2E431        jp p, $31E4
00318E     00            nop 
00318F     AF            xor a, a
003190     CB42          bit 0, d
003192     2804          jr z, $3198
003194     FD360501      ld (iy+$05), $01
003198     FD0F01        ld (iy+$01), bc
00319B     FD7704        ld (iy+$04), a
00319E     FD7E00        ld a, (iy)
0031A1     FE18          cp a, $18
0031A3     FD7E04        ld a, (iy+$04)
0031A6     2848          jr z, $31F0
0031A8     F2BB31        jp p, $31BB
0031AB     00            nop 
0031AC     3E18          ld a, $18
0031AE     FD9600        sub a, (iy)
0031B1     6F            ld l, a
0031B2     FD7E04        ld a, (iy+$04)
0031B5     CD2720        call $2027
0031B8     00            nop 
0031B9     1816          jr $31D1
0031BB     FD7E00        ld a, (iy)
0031BE     D618          sub a, $18
0031C0     6F            ld l, a
0031C1     FD7E04        ld a, (iy+$04)
0031C4     CD1820        call $2018
0031C7     00            nop 
0031C8     1807          jr $31D1
0031CA     AF            xor a, a
0031CB     010000        ld bc, $0000
0031CE     00            nop 
0031CF     181F          jr $31F0
0031D1     FDCB4605      bit 0, (iy+$05)
0031D5     2819          jr z, $31F0
0031D7     210000        ld hl, $0000
0031DA     00            nop 
0031DB     5F            ld e, a
0031DC     AF            xor a, a
0031DD     ED42          sbc hl, bc
0031DF     9B            sbc a, e
0031E0     E5            push hl
0031E1     C1            pop bc
0031E2     180C          jr $31F0
0031E4     01FFFF        ld bc, $FFFF
0031E7     FF            rst $0038
0031E8     3EFF          ld a, $FF
0031EA     CB42          bit 0, d
0031EC     2002          jr nz, $31F0
0031EE     3E7F          ld a, $7F
0031F0     E1            pop hl
0031F1     D1            pop de
0031F2     DD31FD        ld iy, (ix-$03)
0031F5     DDF9          ld sp, ix
0031F7     DDE1          pop ix
0031F9     C9            ret 
0031FA     D5            push de
0031FB     119600        ld de, $0096
0031FE     00            nop 
0031FF     B7            or a, a
003200     F21B32        jp p, $321B
003203     00            nop 
003204     E5            push hl
003205     210000        ld hl, $0000
003208     00            nop 
003209     ED42          sbc hl, bc
00320B     E5            push hl
00320C     C1            pop bc
00320D     E1            pop hl
00320E     57            ld d, a
00320F     3E00          ld a, $00
003211     9A            sbc a, d
003212     F21932        jp p, $3219
003215     00            nop 
003216     CB3F          srl a
003218     1C            inc e
003219     1601          ld d, $01
00321B     CDE42F        call $2FE4
00321E     00            nop 
00321F     D1            pop de
003220     C9            ret 