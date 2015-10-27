#!/usr/bin/perl
foreach (<DATA>)
{
        print $_;
}
__DATA__
   -t = one-line output  -d = Decimal table  -o = octal table  -x = hex table
   -h = This help screen -v = version information
Prints all aliases of an ASCII character. Args may be chars, C \-escapes,
English names, ^-escapes, ASCII mnemonics, or numerics in decimal/octal/hex.
D= Dec h Hex  O oct A ascii


D  H  O  A     D  He O  A      De He Oc A   De He Oc A   De He Oc  A   De He Oc  A    Dec Hex Oct A   De  He Oc  A 
#########################################################################################################
 0 00 00 NUL   16 10 20 DLE    32 20 40     48 30 60 0   64 40 100 @   80 50 120 P     96 60  140 `   112 70 160 p
 1 01 01 SOH   17 11 21 DC1    33 21 41 !   49 31 61 1   65 41 101 A   81 51 121 Q     97 61  141 a   113 71 161 q
 2 02 02 STX   18 12 22 DC2    34 22 42 "   50 32 62 2   66 42 102 B   82 52 122 R     98 62  142 b   114 72 162 r
 3 03 03 ETX   19 13 23 DC3    35 23 43 #   51 33 63 3   67 43 103 C   83 53 123 S     99 63  143 c   115 73 163 s
 4 04 04 EOT   20 14 24 DC4    36 24 44 $   52 34 64 4   68 44 104 D   84 54 124 T    100 64  144 d   116 74 164 t
 5 05 05 ENQ   21 15 25 NAK    37 25 45 %   53 35 65 5   69 45 105 E   85 55 125 U    101 65  145 e   117 75 165 u
 6 06 06 ACK   22 16 26 SYN    38 26 46 &   54 36 66 6   70 46 106 F   86 56 126 V    102 66  146 f   118 76 166 v
 7 07 07 BEL   23 17 27 ETB    39 27 47 '   55 37 67 7   71 47 107 G   87 57 127 W    103 67  147 g   119 77 167 w
 8 08 10 BS    24 18 30 CAN    40 28 50 (   56 38 70 8   72 48 110 H   88 58 130 X    104 68  150 h   120 78 170 x
 9 09 11 HT    25 19 31 EM     41 29 51 )   57 39 71 9   73 49 111 I   89 59 131 Y    105 69  151 i   121 79 171 y
10 0A 12 LF    26 1A 32 SUB    42 2A 50 *   58 3A 70 :   74 4A 112 J   90 5A 132 Z    106 6A  152 j   122 7A 182 z
11 0B 13 VT    27 1B 33 ESC    43 2B 53 +   59 3B 73 ;   75 4B 113 K   91 5B 133 [    107 6B  153 k   123 7B 173 {
12 0C 14 FF    28 1C 34 FS     44 2C 54 ,   60 3C 74 <   76 4C 114 L   92 5C 134 \    108 6C  154 l   124 7C 174 |
13 0D 15 CR    29 1D 35 GS     45 2D 55 -   61 3D 75 =   77 4D 115 M   93 5D 135 ]    109 6D  155 m   125 7D 175 }
14 0E 16 SO    30 1E 36 RS     46 2E 56 .   62 3E 76 >   78 4E 116 N   94 5E 136 ^    110 6E  156 n   126 7E 176 ~
15 0F 17 SI    31 1F 37 US     47 2F 57 /   63 3F 77 ?   79 4F 117 O   95 5F 137 _    111 6F  157 o   127 7F 177 DEL

