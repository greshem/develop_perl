#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__

There are 27 section headers, starting at offset 0x12f2e4:

Section Headers:
  [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            00000000 000000 000000 00      0   0  0
  [ 1] .interp           PROGBITS        08048134 000134 000013 00   A  0   0  1
  [ 2] .note.ABI-tag     NOTE            08048148 000148 000020 00   A  0   0  4
  [ 3] .gnu.hash         GNU_HASH        08048168 000168 0000e0 04   A  4   0  4
  [ 4] .dynsym           DYNSYM          08048248 000248 001380 10   A  5   1  4
  [ 5] .dynstr           STRTAB          080495c8 0015c8 0011d2 00   A  0   0  1
  [ 6] .gnu.version      VERSYM          0804a79a 00279a 000270 02   A  4   0  2
  [ 7] .gnu.version_r    VERNEED         0804aa0c 002a0c 000120 00   A  5   4  4
  [ 8] .rel.dyn          REL             0804ab2c 002b2c 000088 08   A  4   0  4
  [ 9] .rel.plt          REL             0804abb4 002bb4 0008f0 08   A  4  11  4
  [10] .init             PROGBITS        0804b4a4 0034a4 000017 00  AX  0   0  4
  [11] .plt              PROGBITS        0804b4bc 0034bc 0011f0 04  AX  0   0  4
  [12] .text             PROGBITS        0804c6b0 0046b0 0de758 00  AX  0   0 16
  [13] .fini             PROGBITS        0812ae08 0e2e08 00001c 00  AX  0   0  4
  [14] .rodata           PROGBITS        0812ae40 0e2e40 01ba20 00   A  0   0 32
  [15] .eh_frame_hdr     PROGBITS        08146860 0fe860 0048bc 00   A  0   0  4
  [16] .gcc_except_table PROGBITS        0814b11c 10311c 00a6b4 00   A  0   0  4
  [17] .eh_frame         PROGBITS        081567d0 10d7d0 0144e8 00  WA  0   0  4
  [18] .ctors            PROGBITS        0816acb8 121cb8 000124 00  WA  0   0  4
  [19] .dtors            PROGBITS        0816addc 121ddc 000008 00  WA  0   0  4
  [20] .jcr              PROGBITS        0816ade4 121de4 000004 00  WA  0   0  4
  [21] .dynamic          DYNAMIC         0816ade8 121de8 000180 08  WA  5   0  4
  [22] .got              PROGBITS        0816af68 121f68 000010 04  WA  0   0  4
  [23] .got.plt          PROGBITS        0816af78 121f78 000484 04  WA  0   0  4
  [24] .data             PROGBITS        0816b400 122400 00ce00 00  WA  0   0 32
  [25] .bss              NOBITS          08178200 12f200 01ac90 00  WA  0   0 32
  [26] .shstrtab         STRTAB          00000000 12f200 0000e2 00      0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings)
  I (info), L (link order), G (group), x (unknown)
  O (extra OS processing required) o (OS specific), p (processor specific)
