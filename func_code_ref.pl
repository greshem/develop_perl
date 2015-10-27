#!/usr/bin/perl
#2011_06_08_10:40:57   星期三   add by greshem
sub test($)
{
	(my $line)=@_;
	print "this is fun $line";
}
# 函数的应用是 \& 的写法不是
# \$ 的写法, 注意了 
$fun_ptr=\&test;
if(ref($fun_ptr) ne ("CODE"))
{
	die("not a fun ptr \n");
}

$fun_ptr->(" name");
