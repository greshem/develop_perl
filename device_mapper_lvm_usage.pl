#!/usr/bin/perl
#2011_02_28_13:21:58   ����һ   add by greshem
foreach (<DATA>)
{
	print $_;
}
__DATA__

����vg* ������  ��ָ��  /sbin/lvm ����. 
vgscan
vgchange -ay
fdisk -l
mount -t ext3 /dev/VolGroup00/LogVol00 /dir

