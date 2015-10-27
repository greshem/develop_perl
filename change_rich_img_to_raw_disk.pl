#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

dd if=rich.image of=raw.img bs=512 skip=1
忽略头部的 512个字节就可以了。 

vblade 1 1 eth0 raw.img  
vblade 1 1 eth0 /vld/disks/skip_512_VMWARE.IMG 


