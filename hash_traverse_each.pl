#!/usr/bin/perl
#2011_03_17_21:57:13   ÐÇÆÚËÄ   add by greshem
while(($key, $value)  = each(%ENV))
{
	print "$key=>\t $value\n";
}
