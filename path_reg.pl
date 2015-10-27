#!/usr/bin/perl
$path=shift or die("usage; $0 path\n");

#if($path=~/(.*)\/(.*)/ )
if($path=~/(\S+)\/(\S+)\/(\S+)/ )
{
	print $1 , $2,$3,"\n";
}
else
{
	print "路径不对aa\/bb\/cc 类型\n";
}
