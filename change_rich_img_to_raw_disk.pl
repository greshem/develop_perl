#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

dd if=rich.image of=raw.img bs=512 skip=1
����ͷ���� 512���ֽھͿ����ˡ� 

vblade 1 1 eth0 raw.img  
vblade 1 1 eth0 /vld/disks/skip_512_VMWARE.IMG 


