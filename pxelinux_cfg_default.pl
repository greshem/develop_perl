#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
default  1
prompt 1
timeout 1000
display pxelinux.cfg/list
F1 boot.msg
F2 options.msg
F3 general.msg
F4 param.msg
F5 rescue.msg
F7 snake.msg

label 1 nfs
  kernel temp_kernel
  append root=/dev/nfs nfsroot=192.168.3.200:/opt/qianlong/client        panic=5         ip=dhcp vga=0x301 quiet init=/init

label 2  memdisk
  kernel memdisk
  append initrd=dos.img

label 3 splash
  kernel vmlinuz_splash
  append root=/dev/nfs nfsroot=192.168.3.200:/opt/qianlong/client initrd=initrd_splash ip=dhcp  vga=0x311 splash=verbose init=/init

label 4 linux
  kernel vmlinuz_2.6.20_2
  append initrd=nx_nodisk ramdisk_size=80000 root=/dev/ram0 video=intelfb debug IPAPPEND=1 
label 5 ruiqi
  kernel vmlinuz
  append initrd=ruiqi_bin/shrd.gz text ramdisk_size=81920 root=/dev/ram0 IPAPPEND=1

label 6  nxlinux
  kernel nx_vmlinuz
  append expert initrd=nx_bin/shrd ramdisk_size=8192

label 7  ks
  kernel vmlinuz
  append ks initrd=bin/shrd.img ramdisk_size=8192

label 8 lowres
  kernel vmlinuz
  append initrd=bin/shrd.img lowres ramdisk_size=8192
label 9 local
  localboot 1



