#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
kexec -l vmlinux --initrd=initrd --args-linux --append="root=/dev/sda1 console=ttyS0 console=rcons0 crashkernel=128M@16M nmi_watchdog=0"

-l: ������ѹ����Linux Kernel
--initrd: ����initrd�ļ�
--append: �͸�kernel���ں���������

3. ������ kexec -e

