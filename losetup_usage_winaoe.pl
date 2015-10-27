#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
 # dd if=/dev/zero of=/file bs=1k count=100
 # losetup -e des /dev/loop0 /file
 Password:
 Init (up to 16 hex digits):
 # mkfs -t ext2 /dev/loop0 100
 # mount -t ext2 /dev/loop0 /mnt
  ...
 # umount /dev/loop0
 # losetup -d /dev/loop0
########################################################################
不是用加密设备的话， 最常用的方法是
 losetup  /dev/loop0  gentoo.iso
 mount -t iso9660 /dev/loop0 dir 
 umount /dev/loop0
 losetup -d /dev/loop0

