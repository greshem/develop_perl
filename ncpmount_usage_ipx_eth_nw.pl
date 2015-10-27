#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2010_12_13_ add by greshem
1. 
服务器上
cat /proc/net/ipx/interface

Network    Node_Address   Primary  Device     Frame_Type
2B43A245   000000000001   Yes      Internal   None     
20100915   842B2B5E41CB   No       eth0       802.2    
//########################################################################

2.  客户机上 
用 20100915 第二个地址，  
ipx_interface add -p eth0 802.2 0x20100915
之后 slist 就可以列出 服务器了. 

 ncpmount -S GFTEST    -U root    /media/disk 
就可以挂载了.

//########################################################################
# ipxutils ncpfs  packages
modprobe ncpfs
mkdir /mnt/ncpfs
ncpmount -S HQ -U SUPERVISOR -P 123456 /mnt/ncpfs

