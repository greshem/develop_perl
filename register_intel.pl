#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
EAX, eax: 累计运算(operand)以及保持结果数据
EBX, ebx: 指向数据段的数据
ECX, ecx: 字符串以及循环的计数器
EDX, edx: I/O指针
ESI, esi:  指向DS数据段的数据；字符串操作中指向原地址
EDI, edi: 指向ES寄存器所指的数据段的数据地址;字符串操作中指向目标地址
ESP, esp: 指向堆栈指针
EBP, ebp: 指向堆栈段中的数据
DS,ES,FS,GS,ds,es,fs,gs:是四个指向数据段的寄存器。
	四个数据段可以被加载，
	一个是当前模块的数据结构 
	一个是当前模块的上一层的数据结构
	第三个是动态地创建数据结构
	最后一个是其他的程序的数据结构
8位寄存器有：AH、AL、BH、BL、CH、CL、DH和DL等；
16位寄存器有：AX、BX、CX、DX、SI、DI、SP、BP和段寄存器等；
32位寄存器有：EAX、EBX、ECX、EDX、ESI、EDI、ESP和EBP等
