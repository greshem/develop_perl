#!/usr/bin/perl
$a=3333;
$b=4444;
if($a <  $b)
{
	die "is right \n";
}
else
{
	die "is wrong \n";
}


########################################################################
#下面是字符串的比较。 
#2011_01_24_13:40:08 add by greshem
# perldoc perlop
#2011_01_12_10:43:31 add by greshem
$a="aaaaaaaaaaaaa";
$b="aaaaaaaaaaaaa";
$c="aa";
########################################################################
# string 最好用 eq 
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
#这里就发生错误了. 
print "#####################\n";
if($a == $b) 
{
	print "ok\n";
}

if($a ==  $c)
{
	print "ok\n";
}

