#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

��ࣺ
GAS��
as -o program.o program.s

NASM��
name -f elf -o program.o program.asm

����: �������ֻ����ͨ��:
ld -o program program.o

��ʹ���ⲿ C ��ʱ�����ӷ���: 
ld --dynamic-linker /lib/ld-linux.so.2 -lc -o program program.o
