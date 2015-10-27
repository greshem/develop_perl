#!/usr/bin/perl

#2011_03_14_16:30:32   星期一   add by greshem
# 把  /usr/bin/i686-pc-mingw32* 的 i686-pc 都去掉.
@file=glob("/usr/bin/i686-pc-mingw32*");
for (@file)
{
	print "#",$_,"\n";
	if(/(.*)(mingw32-.*)/)
	{
		print "ln -s ", $_, "\t/usr/bin/", $2,"\n";
	}
}
