#!/usr/bin/perl
#2011_02_20_07:06:10 add by greshem
foreach (<DATA>)
{
	print $_;
}
__DATA__
svnserve -d -r /home/svn/
#对应只能在 linux 用 
svn co file:///home/svn/netware_emulator/ netware_emulator

进一步的网络的 客户端的时候 需要 进一步的配置. 
