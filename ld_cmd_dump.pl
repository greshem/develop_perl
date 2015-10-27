#!/usr/bin/perl
#2011_03_18_13:27:48   ĞÇÆÚÎå   add by greshem
for (glob("*.o"))
{
	($name)=($_=~/(.*).o/);
	print "ld -o  $name $_ \n";
	print "ld --dynamic-linker  /lib/ld-linux.so.2  $name  $_ -lc ";
}

