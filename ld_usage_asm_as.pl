#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
###
ar ���÷�
ar -r Release/libUnitLib.a    UnitCode/MThread.o UnitCode/MSystemInfo.o UnitCode/MString.o UnitCode/MSrvComm.o UnitCode/MSocket.o UnitCode/MRegister.o UnitCode/MOptionTree.o UnitCode/MObject.o UnitCode/MMutex.o UnitCode/MLogFile.o UnitCode/mlzw.o UnitCode/MIniFile.o UnitCode/MFile.o UnitCode/MExcelFile.o UnitCode/MDll.o UnitCode/MDbfFile.o UnitCode/MDateTime.o UnitCode/MDataStruct.o UnitCode/mdes.o UnitCode/MCheckCode.o UnitCode/MBlockCompress.o UnitCode/MFinanceData.o 

��Ǭ¡lmyunit��ı����ļ��������linUnitLib.a��̬���ӿ�
################################################

##
push xxx == rsp <- rsp-8; [rsp] <- xxx
pop xxx == xxx <- [rsp]; rsp <- rsp+8
call xxx == push rip; rip <- xxx
ret == pop rip
leave == mov rsp, rbp; pop rbp
###############################
AT&T���һ���������ĸ�ʽ��

[Copy to clipboard] [ - ]
CODE:
.section .data
        ��ʼ��������
.section .bss
        δ��ʼ��������
.section .rodata
        ֻ������
.section .text
.globl _start
_start:
        ָ������
#############
as -o xxx.o xxx.s
���������

ld -o xxx xxx.o
���ӣ�һ��δ�ػ�ɹ���

##############################3
����������
��
CODE:
.section .text
.globl _start
_start:

�ĳ�

CODE:
.section .text
.globl main
main:

����ʹ��gcc����ʵgccֻ��һ��driver��������

CODE:
gcc -o xxx xxx.s

�����ʹ��as��ld�Ļ�������ʹ�ñ�ı��������_start��ֻҪ��ld��-e����ָ����ڵ��ž��У���Ȼ�㻹�����޸�.section��Ϣ��ͨ��ld�Ĳ������߽ű������ƣ�
�������Ҫ����gdb�ɽ����ķ��ű�ʹ�ó��������gdb���ԣ���ʹ��

CODE:
as -gstabs -o xxx.o xxx.s

�����ʹ���˿⺯����Ҫ��

CODE:
ld -dynamic-linker /lib/ld-linux-x86-64.so.2 xxx -lc xxx.o
��Щ����Ҫ��printf��ʹ���˿⺯����һ��Ҫ������ĸ�ʽ����������ʧ�ܡ�

�����ӣ�����ֱ��ʹ��

gcc -o xxx xxx.s

��ǰ������Ļ����������main
############
#include <stdio.h>

int main()
{
        int a = 1;
        int b = 2;

        if(a > b)
                printf("a:%d is bigger\n", a);
        else
                printf("b:%d is bigger\n", b);

        return 0;
}
#
��
gcc -S a.c ����� ������ a.s
##############
 .file        "a.c"
        .section        .rodata�����������������ַ���������ֻ����
.LC0:
        .string        "a:%d is bigger\n"
.LC1:
        .string        "b:%d is bigger\n"
        .text
.globl main
        .type        main, @function������������������
main:
.LFB2:��������������������������������������������
        pushq        %rbp������������������������������pushq��64λ��������q������rbp���Ա�ʹ��rbp��Ϊջָ��
.LCFI0:
        movq        %rsp, %rbp��������������������������ջframe��������Щ�������������������Ż��������ã��Ż����frame��������һ��
.LCFI1:
        subq        $16, %rsp����������������������������rsp��Ϊ�������¿ռ�
.LCFI2:������������������������������������������
        movl        $1, -4(%rbp)�������������ѳ���1��a����ջ��ռ4���ֽڡ�EMT64��int��4�ֽڵ�
        movl        $2, -8(%rbp)�������������ѳ���2��b����ջ��ռ4���ֽ�
        movl        -4(%rbp), %eax������������ջ�а�1�ŵ�eax��ȥ
        cmpl        -8(%rbp), %eax�����������Ƚ�ջ�е�2��eax�е�1
        jle        .L2�������������������������cmp�����ĵ�2��������С�ڻ����cmp�����ĵ�1����������jmp��.L2��ע��AT&T�﷨��Intel�﷨�Ĳ�ͬ����������˳�����෴��
        movl        -4(%rbp), %esi
        movl        $.LC0, %edi
        movl        $0, %eax
        call        printf
        jmp        .L4
.L2:������������������������else���֣�����������������gcc4�ĺ������ù淶����������������������
        movl        -8(%rbp), %esi��������������ջ��ȡb��ֵ����esi
        movl        $.LC1, %edi�����������������ַ���"b:%d is bigger\n"�ĵ�ַ����edi
        movl        $0, %eax��������������������0����eax
        call        printf������������������������printf����
.L4:
        movl        $0, %eax������������������return 0;��һ��ķ���ֵ0����eax��
        leave�������������������������������뿪���frame
        ret������������������������������������
.LFE2:
        .size        main, .-main
        .section        .eh_frame,"a",@progbits
.Lframe1:
        .long        .LECIE1-.LSCIE1
.LSCIE1:
        .long        0x0
        .byte        0x1
        .string        "zR"
        .uleb128 0x1
        .sleb128 -8
        .byte        0x10
        .uleb128 0x1
        .byte        0x3
        .byte        0xc
        .uleb128 0x7
        .uleb128 0x8
        .byte        0x90
        .uleb128 0x1
        .align 8
.LECIE1:
.LSFDE1:
        .long        .LEFDE1-.LASFDE1
.LASFDE1:
        .long        .LASFDE1-.Lframe1
        .long        .LFB2
        .long        .LFE2-.LFB2
        .uleb128 0x0
        .byte        0x4
        .long        .LCFI0-.LFB2
        .byte        0xe
        .uleb128 0x10
        .byte        0x86
        .uleb128 0x2
        .byte        0x4
        .long        .LCFI1-.LCFI0
        .byte        0xd
        .uleb128 0x6
        .align 8
.LEFDE1:
        .ident        "GCC: (GNU) 4.2.3 (Ubuntu 4.2.3-2ubuntu7)"
        .section        .note.GNU-stack,"",@progbits
################


