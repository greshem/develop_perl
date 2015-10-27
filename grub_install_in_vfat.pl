#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash

mkdir /mnt/sda1

mount.pl  |sh
cd /mnt/sda1
mkdir -p boot/grub

./grub_template.sh  >> boot/grub/grub.conf 
ls
grub 
ls
cp /usr/share/grub/i386-redhat/* boot/grub/
ls
grub  <<EOF
root (hd0,0)
setup (hd0)
reboot
EOF

