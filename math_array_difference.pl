#!/usr/bin/perl
#������ļ� ȫ���� һ��һ����ֵ ���ڲ��.  



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

