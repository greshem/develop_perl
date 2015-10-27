#!/usr/bin/perl
#2011_01_09_14:13:28 add by greshem
#注意 foreach 的时候， 一定要 foreach (block) , block但之外的 () 一定要加上去的. 
foreach  $each  (grep { -f && -T } glob("/var/www/html/*"))
{
	print $each."\n";
}
