#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
###
ar 的用法
ar -r Release/libUnitLib.a    UnitCode/MThread.o UnitCode/MSystemInfo.o UnitCode/MString.o UnitCode/MSrvComm.o UnitCode/MSocket.o UnitCode/MRegister.o UnitCode/MOptionTree.o UnitCode/MObject.o UnitCode/MMutex.o UnitCode/MLogFile.o UnitCode/mlzw.o UnitCode/MIniFile.o UnitCode/MFile.o UnitCode/MExcelFile.o UnitCode/MDll.o UnitCode/MDbfFile.o UnitCode/MDateTime.o UnitCode/MDataStruct.o UnitCode/mdes.o UnitCode/MCheckCode.o UnitCode/MBlockCompress.o UnitCode/MFinanceData.o 

把乾隆lmyunit库的编译文件，打包到linUnitLib.a静态链接库
################################################

##
push xxx == rsp <- rsp-8; [rsp] <- xxx
pop xxx == xxx <- [rsp]; rsp <- rsp+8
call xxx == push rip; rip <- xxx
ret == pop rip
leave == mov rsp, rbp; pop rbp
###############################
AT&T汇编一般有这样的格式。

[Copy to clipboard] [ - ]
CODE:
.section .data
        初始化的数据
.section .bss
        未初始化的数据
.section .rodata
        只读数据
.section .text
.globl _start
_start:
        指令序列
#############
as -o xxx.o xxx.s
编译汇编代码

ld -o xxx xxx.o
链接，一般未必会成功！

##############################3
来汇编和链接
把
CODE:
.section .text
.globl _start
_start:

改成

CODE:
.section .text
.globl main
main:

即可使用gcc（其实gcc只是一个driver）来编译

CODE:
gcc -o xxx xxx.s

如果你使用as和ld的话，可以使用别的标号来代替_start，只要在ld的-e参数指明入口点标号就行（当然你还可以修改.section信息，通过ld的参数或者脚本来控制）
，如果需要生成gdb可解析的符号表，使得程序可以用gdb调试，就使用

CODE:
as -gstabs -o xxx.o xxx.s

，如果使用了库函数则要用

CODE:
ld -dynamic-linker /lib/ld-linux-x86-64.so.2 xxx -lc xxx.o
这些很重要，printf就使用了库函数，一定要用上面的格式，否则会造成失败。

来链接，或者直接使用

gcc -o xxx xxx.s

，前提是你的汇编代码入口是main
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
用
gcc -S a.c 编译成 汇编代码 a.s
##############
 .file        "a.c"
        .section        .rodata－－－－－－两个字符串常量是只读的
.LC0:
        .string        "a:%d is bigger\n"
.LC1:
        .string        "b:%d is bigger\n"
        .text
.globl main
        .type        main, @function－－－－－－主函数
main:
.LFB2:－－－－－－－－－－－－－－－－－－－－－－
        pushq        %rbp－－－－－－－－－－－－－－－pushq，64位，所以是q。保存rbp，以便使用rbp作为栈指针
.LCFI0:
        movq        %rsp, %rbp－－－－－－－－－－－保存栈frame，现在有些编译器开发者致力于优化函数调用，优化这个frame就是其中一项
.LCFI1:
        subq        $16, %rsp－－－－－－－－－－－－调整rsp，为变量留下空间
.LCFI2:－－－－－－－－－－－－－－－－－－－－－
        movl        $1, -4(%rbp)－－－－－－把常量1（a）入栈，占4个字节。EMT64下int是4字节的
        movl        $2, -8(%rbp)－－－－－－把常量2（b）入栈，占4个字节
        movl        -4(%rbp), %eax－－－－－从栈中把1放到eax中去
        cmpl        -8(%rbp), %eax－－－－－比较栈中的2和eax中的1
        jle        .L2－－－－－－－－－－－如果cmp操作的第2个操作数小于或等于cmp操作的第1个操作数就jmp到.L2，注意AT&T语法和Intel语法的不同，操作数的顺序是相反的
        movl        -4(%rbp), %esi
        movl        $.LC0, %edi
        movl        $0, %eax
        call        printf
        jmp        .L4
.L2:－－－－－－－－－－－－else部分－－－－－－－－－gcc4的函数调用规范－－－－－－－－－－－
        movl        -8(%rbp), %esi－－－－－－从栈中取b的值放入esi
        movl        $.LC1, %edi－－－－－－－把字符串"b:%d is bigger\n"的地址放入edi
        movl        $0, %eax－－－－－－－－－把0放入eax
        call        printf－－－－－－－－－－调用printf函数
.L4:
        movl        $0, %eax－－－－－－－－－return 0;这一句的返回值0放在eax中
        leave－－－－－－－－－－－－－－－离开这个frame
        ret－－－－－－－－－－－－－－－－返回
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


