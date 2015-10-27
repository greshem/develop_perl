#!/usr/bin/perl
#2011_03_15_11:20:16   ÐÇÆÚ¶þ   add by greshem
@files=glob("*.rc");
for (@files)
{
	($name)=($_=~/(.*).rc/);
	print  "mingw32-windres  ".$_." -o $name.res -O coff\n";
}
#mingw32-windres
