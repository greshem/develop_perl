#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#
# put it in /boot/grub2/grub.cfg
#

# Boot automatically after 30 secs.
set timeout=30

# By default, boot the first entry.
set default=0

# Fallback to the second entry.
set fallback=1

# For booting GNU/Hurd
menuentry "GNU (aka GNU/Hurd)" {
	set root=(hd0,1)
	multiboot /boot/gnumach.gz root=device:hd0s1
	module /hurd/ext2fs.static ext2fs --readonly \
			--multiboot-command-line='${kernel-command-line}' \
			--host-priv-port='${host-port}' \
			--device-master-port='${device-port}' \
			--exec-server-task='${exec-task}' -T typed '${root}' \
			'$(task-create)' '$(task-resume)'
	module /lib/ld.so.1 exec /hurd/exec '$(exec-task=task-create)'
}

menuentry "f13" {
	set root=(hd0,1)
	linux /vmlinuz-2.6.31.5-127.fc12.i686.PAE ro root=/dev/mapper/VolGroup-lv_root  LANG=en_US.UTF-8 SYSFONT=latarcyrheb-sun16 KEYBOARDTYPE=pc KEYTABLE=us  vga=0x301
	initrd /initramfs-2.6.31.5-127.fc12.i686.PAE.img
}
# For booting GNU/Linux
menuentry "GNU/Linux" {
	set root=(hd0,1)
	linux /vmlinuz root=/dev/sda1
	initrd /initrd.img
}

# For booting FreeBSD
menuentry "FreeBSD (or GNU/kFreeBSD), direct boot" {
	set root=(hd0,1,a)
	kfreebsd /boot/kernel/kernel
	kfreebsd_loadenv /boot/device.hints
	kfreebsd_module /boot/splash.bmp type=splash_image_data
	set kFreeBSD.vfs.root.mountfrom=ufs:ad0s1a
}
menuentry "FreeBSD (or GNU/kFreeBSD), via /boot/loader" {
	set root=(hd0,1,a)
	kfreebsd /boot/loader
}

# For booting NetBSD
menuentry "NetBSD" {
	set root=(hd0,1,a)
	knetbsd /netbsd
}

# For booting OpenBSD
menuentry "OpenBSD" {
	set root=(hd0,1,a)
	kopenbsd /bsd
}

# For booting Microsoft Windows
menuentry "Microsoft Windows" {
	set root=(hd0,1)
	chainloader +1
}

# For booting Memtest86+
menuentry "Memtest86+" {
	set root=(hd0,1)
	linux16 /memtest86+.bin
}

# Change the colors.
menuentry "Change the colors" {
	set menu_color_normal=light-green/brown
	set menu_color_highlight=red/blue
}

# put it in /boot/grub2/grub.cfg
