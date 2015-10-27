#!/usr/bin/perl
#2011_02_28_13:21:58   星期一   add by greshem
foreach (<DATA>)
{
	print $_;
}
__DATA__

这里vg* 的命令  都指向  /sbin/lvm 命令. 
vgscan
vgchange -ay
fdisk -l
mount -t ext3 /dev/VolGroup00/LogVol00 /dir

