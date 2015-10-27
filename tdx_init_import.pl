#!/usr/bin/perl
#2011_04_21_17:00:20   星期四   add by greshem
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash
#注意点: 
#1. 需要把  /tdxbstarpro/var/linux/bin/usr/bin/bash 拷贝到这里 /tdxbstarpro/var/linux/bin/bash
#2.	/tdxbstarpro/var/linux/bin/usr/bin/sh 拷贝到这里 /tdxbstarpro/var/linux/bin/sh
#3.	init用这个文件. 
#4.	ip 自己修改. 
#5.	/tdxbstarpro/var/linux/dev/  拷贝 来至于 /opt/qianlong/client/dev/  一定要有dev目录.
#6.	看看这个文件的编码是不是 UTF8
#7.	服务器上要有  /vld/pxelinux/ 目录下 有 qianlong 的内核, /vld/pxelinux/pxelinux.cfg/default 需要 添加 tdx 的启动项,
#	nfs 的ip 需要配置
#	如下: 
#	label 2 tdx
#		kernel temp_kernel
#		append root=/dev/nfs nfsroot=172.16.8.241:/tdxbstarpro/var/linux/         panic=5         ip=dhcp vga=0x301  init=/init
#8. 这个文件的的path 为 /tdxbstarpro/var/linux/init 放在 通达信的服务器上的, 其实 自己搭建服务器也也可以 但是需要 用到 tdx的 /etc/exports  
	
	
cd vip2000
BOOTSERVER="172.16.8.241"
RAM_NFS=$BOOTSERVER:/mnt/ram
USERDATA_NFS=$BOOTSERVER:/tdx/userdata
imount -t nfs $RAM_NFS /tmp/ram
imount -t nfs $USERDATA_NFS /tmp/userdata

while [ 1 ];
do
#bash alwaysdoit
	./vip2000
done

