#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__


#2011_02_11_17:32:33 add by greshem
/usr/share/pkgconfig
/usr/lib/pkgconfig
/usr/lib64/pkgconfig
主要目录 假如还 不知道如何寻找 用命令

strace -e trace=file  pkg-config --list-all  


