#!/usr/bin/perl

#2011_01_24_13:40:08 add by greshem
# perldoc perlop
#2011_01_12_10:43:31 add by greshem
$a="aaaaaaaaaaaaa";
$b="aaaaaaaaaaaaa";
$c="aa";
########################################################################
# string ����� eq 
if($a eq $b) 
{
	print "ok\n";
}

if($a eq  $c)
{
	print "ok\n";
}

if($a ne $b) 
{
	print "ok\n";
}

########################################################################
#����ͷ���������. 
print "#####################\n";
if($a == $b) 
{
	print "ok\n";
}

if($a ==  $c)
{
	print "ok\n";
}

