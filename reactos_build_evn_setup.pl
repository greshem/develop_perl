#!/usr/bin/perl

#2011_03_14_16:30:32   ����һ   add by greshem
# ��  /usr/bin/i686-pc-mingw32* �� i686-pc ��ȥ��.
@file=glob("/usr/bin/i686-pc-mingw32*");
for (@file)
{
	print "#",$_,"\n";
	if(/(.*)(mingw32-.*)/)
	{
		print "ln -s ", $_, "\t/usr/bin/", $2,"\n";
	}
}
