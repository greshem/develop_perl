#!/usr/bin/perl
#输入的文件 全部是 一行一个数值 便于差分.  



my $file="/root/a";

$last=99999999;
open(NUMBER, "tac  $file|") or die("Open file $file error \n");
for(<NUMBER>)
{
	print $_;	
	chomp;
	my $result= $last -$_;
	print "$last -  $_ = $result \n";
	$last=$_;
}

