#!/usr/bin/perl
#2011_02_09 by qzj. 
#use PerlQzjLib;
#copyWithMTime("/etc/passwd", "bb");
$number=0;
$in=shift or die("usage: $0 input \n");
if($in=~/(\d+)(g$|G$)/)
{
	#print $1,"GGG\n";
	$number=$1*1024*1024*1024;
}
elsif ($in=~/(\d+)(M$|m$)/)
{
	#print $1,"MMM\n";
	$number=$1*1024*1024;
}
elsif ($in=~/(\d+)(K$|k$)/)
{
	#print $1,"KKK\n";
	$number=$1*1024;
}
elsif ($in=~/(\d+)$/)
{
	#print $1,"\n";
	$number=int($1);
}
else
{
	die("input number error\n");
}


$block_size=4096;
$count= int($number/4096);
if($number < 4096)
{
	$count++;
}
print "dd if=/dev/zero of=$number count=$count  bs=$block_size \n";
