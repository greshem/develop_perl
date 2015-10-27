#!/usr/bin/perl
#2011_03_07_13:45:29   星期一   add by greshem
#可接受的字符是0-9, A-F, a-f
if(scalar(@ARGV) != 1)
{
	print $argc, "\n";
	warn("argc != 2  \n");
	exit 1;
}

if( length($ARGV[0])!=8)
{
	print  $ARGV[0];
	die("length is no 8\n");
	exit 1;
}

for ($i=0; $i < 8; $i++)
{
	$ch=ord(substr($ARGV[0], $i, 1));
	if ( $ch < 48) 				{exit(1)};
	if ( $ch > 57 && $ch < 65)	{exit(1)};
	if ( $ch > 70 && $ch < 97)	{exit(1)};
	if ( $ch > 102)				{exit(1)};	
	#print $ch,"\n";
}
exit 0;
