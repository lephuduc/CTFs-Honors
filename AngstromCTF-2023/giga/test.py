# inp = [0]*0x1ac
# buf2= [inp[0],inp[0]+inp[1],inp[0]+inp[1]+inp[2],...]
#how to get sus: [get_bytes(0x55F234BA0040 + i*428*4 + i*4,4) for i in range(0x1ac)]
sus = [b'A\x00\x00\x00', b'\xa4\x00\x00\x00', b'\x07\x01\x00\x00', b'v\x01\x00\x00', b'\xe8\x01\x00\x00', b'L\x02\x00\x00', b'\xb5\x02\x00\x00', b'#\x03\x00\x00', b'\x8a\x03\x00\x00', b'\xaa\x03\x00\x00', b'\x1e\x04\x00\x00', b'\x8d\x04\x00\x00', b'\xad\x04\x00\x00', b'\x0e\x05\x00\x00', b'z\x05\x00\x00', b'\xe6\x05\x00\x00', b'\x06\x06\x00\x00', b'q\x06\x00\x00', b'\xdf\x06\x00\x00', b'N\x07\x00\x00', b'\xc5\x07\x00\x00', b'3\x08\x00\x00', b'S\x08\x00\x00', b'\xbf\x08\x00\x00', b' \t\x00\x00', b'\x97\t\x00\x00', b'\n\n\x00\x00', b'\x14\n\x00\x00', b'\x83\n\x00\x00', b'\xe9\n\x00\x00', b'\t\x0b\x00\x00', b'j\x0b\x00\x00', b'\xe0\x0b\x00\x00', b'I\x0c\x00\x00', b'\xaa\x0c\x00\x00', b'\x1e\r\x00\x00', b'\x87\r\x00\x00', b'\xf6\r\x00\x00', b'd\x0e\x00\x00', b'\x90\x0e\x00\x00', b'\x9a\x0e\x00\x00', b'\x0e\x0f\x00\x00', b'v\x0f\x00\x00', b'\xdb\x0f\x00\x00', b'M\x10\x00\x00', b'\xb2\x10\x00\x00', b'\xd2\x10\x00\x00', b';\x11\x00\x00', b'\xae\x11\x00\x00', b'\xce\x11\x00\x00', b'<\x12\x00\x00', b'\xab\x12\x00\x00', b'\xcb\x12\x00\x00', b'B\x13\x00\x00', b'\xa3\x13\x00\x00', b'\x1c\x14\x00\x00', b'<\x14\x00\x00', b'\x9d\x14\x00\x00', b'\xbd\x14\x00\x00', b'\x1f\x15\x00\x00', b'\x84\x15\x00\x00', b'\xe9\x15\x00\x00', b'\xf3\x15\x00\x00', b'f\x16\x00\x00', b'\xce\x16\x00\x00', b'=\x17\x00\x00', b'\xb2\x17\x00\x00', b'\x1e\x18\x00\x00', b'\x82\x18\x00\x00', b'\xa2\x18\x00\x00', b'\x04\x19\x00\x00', b'i\x19\x00\x00', b'\x89\x19\x00\x00', b'\xea\x19\x00\x00', b'L\x1a\x00\x00', b'\xb8\x1a\x00\x00', b'\x1d\x1b\x00\x00', b'=\x1b\x00\x00', b'\xb1\x1b\x00\x00', b' \x1c\x00\x00', b'@\x1c\x00\x00', b'\xa6\x1c\x00\x00', b'\x12\x1d\x00\x00', b'\x8b\x1d\x00\x00', b'\xb9\x1d\x00\x00', b'\xc3\x1d\x00\x00', b'\x0c\x1e\x00\x00', b'\x80\x1e\x00\x00', b'\xf3\x1e\x00\x00', b'\x13\x1f\x00\x00', b'\x8a\x1f\x00\x00', b'\xf3\x1f\x00\x00', b'a \x00\x00', b'\xc8 \x00\x00', b';!\x00\x00', b'[!\x00\x00', b'\xbc!\x00\x00', b'."\x00\x00', b'\x93"\x00\x00', b'\xb3"\x00\x00', b"'#\x00\x00", b'\x96#\x00\x00', b'\x05$\x00\x00', b'%$\x00\x00', b'\x98$\x00\x00', b'\x05%\x00\x00', b'f%\x00\x00', b'\xd2%\x00\x00', b'>&\x00\x00', b'^&\x00\x00', b'\xd2&\x00\x00', b"A'\x00\x00", b"a'\x00\x00", b"\xc8'\x00\x00", b'-(\x00\x00', b'\xa1(\x00\x00', b'\xab(\x00\x00', b'\x14)\x00\x00', b'\x88)\x00\x00', b'\xfb)\x00\x00', b'\x1b*\x00\x00', b'\x81*\x00\x00', b'\xe2*\x00\x00', b'V+\x00\x00', b'v+\x00\x00', b'\xe2+\x00\x00', b'K,\x00\x00', b'\xbf,\x00\x00', b'3-\x00\x00', b'\x9f-\x00\x00', b'\x04.\x00\x00', b'$.\x00\x00', b'\x86.\x00\x00', b'\xf5.\x00\x00', b'Y/\x00\x00', b'\xd2/\x00\x00', b'\xf2/\x00\x00', b'a0\x00\x00', b'\xc70\x00\x00', b'-1\x00\x00', b'M1\x00\x00', b'\xc11\x00\x00', b')2\x00\x00', b'\x8e2\x00\x00', b'\xae2\x00\x00', b'\x153\x00\x00', b'\x873\x00\x00', b'\xf63\x00\x00', b'k4\x00\x00', b'\xd94\x00\x00', b'=5\x00\x00', b'k5\x00\x00', b'u5\x00\x00', b'\xc95\x00\x00', b'16\x00\x00', b'\x966\x00\x00', b'\xb66\x00\x00', b'\x187\x00\x00', b'}7\x00\x00', b'\xe27\x00\x00', b'\x0e8\x00\x00', b'.8\x00\x00', b'\x9d8\x00\x00', b'\x039\x00\x00', b'#9\x00\x00', b'\x869\x00\x00', b'\xf59\x00\x00', b'j:\x00\x00', b'\xdc:\x00\x00', b'O;\x00\x00', b'\xb4;\x00\x00', b'\xe0;\x00\x00', b'\x00<\x00\x00', b'f<\x00\x00', b'\xd2<\x00\x00', b';=\x00\x00', b'\xa0=\x00\x00', b'\x13>\x00\x00', b'3>\x00\x00', b'\x94>\x00\x00', b'\x02?\x00\x00', b'{?\x00\x00', b'\xf2?\x00\x00', b'S@\x00\x00', b'\xcc@\x00\x00', b'\xd6@\x00\x00', b'8A\x00\x00', b'\x9dA\x00\x00', b'\x00B\x00\x00', b'aB\x00\x00', b'\xd6B\x00\x00', b'IC\x00\x00', b'\xaeC\x00\x00', b'\xceC\x00\x00', b'0D\x00\x00', b'\x95D\x00\x00', b'\xfaD\x00\x00', b'mE\x00\x00', b'\x8dE\x00\x00', b'\xf1E\x00\x00', b'`F\x00\x00', b'\xceF\x00\x00', b'\xf5F\x00\x00', b'iG\x00\x00', b'\x89G\x00\x00', b'\xecG\x00\x00', b'MH\x00\x00', b'\xbfH\x00\x00', b'$I\x00\x00', b'.I\x00\x00', b'\xa5I\x00\x00', b'\rJ\x00\x00', b'nJ\x00\x00', b'\xe2J\x00\x00', b'\x02K\x00\x00', b'jK\x00\x00', b'\xdfK\x00\x00', b'LL\x00\x00', b'\xadL\x00\x00', b'\x1bM\x00\x00', b'\x8eM\x00\x00', b'\xaeM\x00\x00', b'"N\x00\x00', b'\x8aN\x00\x00', b'\xf3N\x00\x00', b'aO\x00\x00', b'\xccO\x00\x00', b'\xecO\x00\x00', b'UP\x00\x00', b'\xc8P\x00\x00', b'\xe8P\x00\x00', b'QQ\x00\x00', b'\xbeQ\x00\x00', b'.R\x00\x00', b'\x9dR\x00\x00', b'\x10S\x00\x00', b'\x83S\x00\x00', b'\xecS\x00\x00', b'NT\x00\x00', b'\xbaT\x00\x00', b'\x1fU\x00\x00', b'MU\x00\x00', b'WU\x00\x00', b'\xb0U\x00\x00', b'\x15V\x00\x00', b'\x81V\x00\x00', b'\xedV\x00\x00', b'\\W\x00\x00', b'\xd3W\x00\x00', b'\xffW\x00\x00', b'\x1fX\x00\x00', b'\x81X\x00\x00', b'\xedX\x00\x00', b'NY\x00\x00', b'\xb1Y\x00\x00', b'\x1cZ\x00\x00', b'JZ\x00\x00', b'jZ\x00\x00', b'\xc3Z\x00\x00', b'([\x00\x00', b'\x94[\x00\x00', b'\x00\\\x00\x00', b'o\\\x00\x00', b'\xe6\\\x00\x00', b'\x12]\x00\x00', b'2]\x00\x00', b'\x94]\x00\x00', b'\x00^\x00\x00', b'a^\x00\x00', b'\xc4^\x00\x00', b'/_\x00\x00', b']_\x00\x00', b'g_\x00\x00', b'\xc0_\x00\x00', b'%`\x00\x00', b'\x91`\x00\x00', b'\xfd`\x00\x00', b'la\x00\x00', b'\xe3a\x00\x00', b'\x0fb\x00\x00', b'/b\x00\x00', b'\x91b\x00\x00', b'\xfdb\x00\x00', b'^c\x00\x00', b'\xc1c\x00\x00', b',d\x00\x00', b'Zd\x00\x00', b'zd\x00\x00', b'\xd3d\x00\x00', b'8e\x00\x00', b'\xa4e\x00\x00', b'\x10f\x00\x00', b'\x7ff\x00\x00', b'\xf6f\x00\x00', b'"g\x00\x00', b'Bg\x00\x00', b'\xa4g\x00\x00', b'\x10h\x00\x00', b'qh\x00\x00', b'\xd4h\x00\x00', b'?i\x00\x00', b'mi\x00\x00', b'wi\x00\x00', b'\xc6i\x00\x00', b'5j\x00\x00', b'\x9dj\x00\x00', b'\xc9j\x00\x00', b'\xe9j\x00\x00', b'Kk\x00\x00', b'\xb7k\x00\x00', b'\x18l\x00\x00', b'{l\x00\x00', b'\xe6l\x00\x00', b'\x06m\x00\x00', b'gm\x00\x00', b'\xd5m\x00\x00', b'9n\x00\x00', b'Yn\x00\x00', b'\xd2n\x00\x00', b'7o\x00\x00', b'\xa3o\x00\x00', b'\x0fp\x00\x00', b'~p\x00\x00', b'\xf5p\x00\x00', b'\x16q\x00\x00', b' q\x00\x00', b'lq\x00\x00', b'\xd1q\x00\x00', b'Er\x00\x00', b'lr\x00\x00', b'\xdfr\x00\x00', b'\xffr\x00\x00', b'rs\x00\x00', b'\xdas\x00\x00', b';t\x00\x00', b'\xa6t\x00\x00', b'\x0bu\x00\x00', b'+u\x00\x00', b'\x94u\x00\x00', b'\x08v\x00\x00', b'(v\x00\x00', b'\x9dv\x00\x00', b'\rw\x00\x00', b'-w\x00\x00', b'\x8ew\x00\x00', b'\xaew\x00\x00', b'\x1ax\x00\x00', b'\x83x\x00\x00', b'\xf7x\x00\x00', b'ky\x00\x00', b'\xd7y\x00\x00', b'<z\x00\x00', b'jz\x00\x00', b'tz\x00\x00', b'\xd5z\x00\x00', b'8{\x00\x00', b'\xac{\x00\x00', b'\x12|\x00\x00', b'\x8d|\x00\x00', b'\xfa|\x00\x00', b'[}\x00\x00', b'\xc6}\x00\x00', b'/~\x00\x00', b'\x9d~\x00\x00', b'\x04\x7f\x00\x00', b'c\x7f\x00\x00', b'\xcc\x7f\x00\x00', b'@\x80\x00\x00', b'\x9f\x80\x00\x00', b'\x13\x81\x00\x00', b'\x82\x81\x00\x00', b'\xe1\x81\x00\x00', b'U\x82\x00\x00', b'\xbd\x82\x00\x00', b'"\x83\x00\x00', b'\x81\x83\x00\x00', b'\xf5\x83\x00\x00', b'd\x84\x00\x00', b'\xd4\x84\x00\x00', b'3\x85\x00\x00', b'\x9c\x85\x00\x00', b'\x0f\x86\x00\x00', b'n\x86\x00\x00', b'\xd9\x86\x00\x00', b'B\x87\x00\x00', b'\xb0\x87\x00\x00', b'\x14\x88\x00\x00', b'u\x88\x00\x00', b'\xd4\x88\x00\x00', b'9\x89\x00\x00', b'\xb1\x89\x00\x00', b'\x19\x8a\x00\x00', b'z\x8a\x00\x00', b'\xef\x8a\x00\x00', b'b\x8b\x00\x00', b'\xd6\x8b\x00\x00', b'?\x8c\x00\x00', b'\xad\x8c\x00\x00', b'\x14\x8d\x00\x00', b's\x8d\x00\x00', b'\xdb\x8d\x00\x00', b'P\x8e\x00\x00', b'\xb8\x8e\x00\x00', b'\x17\x8f\x00\x00', b'c\x8f\x00\x00', b'\xb0\x8f\x00\x00', b'\x04\x90\x00\x00', b'G\x90\x00\x00', b'\x89\x90\x00\x00', b'\xff\x90\x00\x00', b'i\x91\x00\x00', b'\xdf\x91\x00\x00', b'+\x92\x00\x00', b'~\x92\x00\x00', b'\xf6\x92\x00\x00', b'-\x93\x00\x00', b'^\x93\x00\x00', b'\xa4\x93\x00\x00', b'\x19\x94\x00\x00', b'\x89\x94\x00\x00', b'\xdf\x94\x00\x00', b'\x14\x95\x00\x00', b'b\x95\x00\x00', b'\xa5\x95\x00\x00', b'\x1a\x96\x00\x00', b'p\x96\x00\x00', b'\xc2\x96\x00\x00', b'?\x97\x00\x00']
sus = sus[::-1]
las = int.from_bytes(sus[0],'little')
x =""
for i in range(1,len(sus)):
     n = int.from_bytes(sus[i],'little')
     x += chr(las - n)
     las = n
print(x[::-1])