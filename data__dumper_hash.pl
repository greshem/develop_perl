#!/usr/bin/perl
#==========================================================================
#最简单的方式, 打印出来的数据 直接就是 perl 静态的数据结构了. 
#my %hash;
use Data::Dumper;
print Data::Dumper->Dump([\%hash]);
#==========================================================================

sub hashFromFile($)
{
	($file)=@_;
	%tmp;
	$line=1;
	open(FILE, $file) or die("open file error\n");
	foreach(<FILE>)
	{
		chomp;
		$tmp{$line}=$_;
		$line++;	
	}
	return %tmp;
}

$file="/etc/passwd";
%hash=hashFromFile($file);

print Data::Dumper->Dump([\%hash]);
