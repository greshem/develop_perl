#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
sparc 
Interger通用寄存器组

    32个通用的integer寄存器名为%r0，%r01，%r2, %r3, %r4, %r5 , %r6, ...  %r31。（由于它们在程序中运行的不同目的，又给它们起了各自的别名，peter哥的文章有介绍）

浮点寄存器组

    它们是%f0 .. %f31，通常用于支持实数。它们可用于成对和成组(4个) 的很大的一个数的存储。

专用寄存器组

    %psr 处理器状态寄存器(Processor State Register)

    %wim 窗口无效屏蔽寄存器(Window Invalid Mask Register)

    %tbr Trap基址寄存器(Trap Base Register)

    %y Y寄存器(Y register)

    %y寄存器用于乘法和除法中。在除法中，暂存被除数的高32位有效位；


在乘法中，暂存乘积的高32位有效位；
    %fsr 浮点状态寄存器(Floating-Point State Register)
    %csr 协处理器状态寄存器(Coprocessor-State Register)
    %fq 浮点指针队列寄存器(Floating-Point Queue)
    %cq 协处理器队列寄存器(Coprocessor Queue)
    %hi，%lo 用于一元操作，截取操作数的高22位和低10位。 （一般用来配合sethi指令）
