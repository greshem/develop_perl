#!/usr/bin/perl
#2011_01_09_14:13:28 add by greshem
#ע�� foreach ��ʱ�� һ��Ҫ foreach (block) , block��֮��� () һ��Ҫ����ȥ��. 
foreach  $each  (grep { -f && -T } glob("/var/www/html/*"))
{
	print $each."\n";
}
