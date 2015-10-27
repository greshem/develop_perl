#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
kexec -l vmlinux --initrd=initrd --args-linux --append="root=/dev/sda1 console=ttyS0 console=rcons0 crashkernel=128M@16M nmi_watchdog=0"

-l: 不经过压缩的Linux Kernel
--initrd: 就是initrd文件
--append: 送给kernel的内核启动参数

3. 最后调用 kexec -e

