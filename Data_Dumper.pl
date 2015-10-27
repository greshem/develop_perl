#!/usr/bin/perl
#==========================================================================
#最简单的方式, 打印出来的数据 直接就是 perl 静态的数据结构了. 
#my %hash;
print Data::Dumper->Dump([\%hash]);

#==========================================================================
use Data::Dumper;
#$file=shift or die("Usage; $0 file\n");
$file="/etc/passwd";

sub hashFromFile($)
{
	($file)=@_;
	%tmp;
	$i=1;
	open(FILE, $file) or die("open file error\n");
	foreach(<FILE>)
	{
		$tmp{$i}=$_;
		$i++;	
	}
	return %tmp;
}

%hash=hashFromFile($file);
sub my_hash_dump()
{
	#print Dumper(%hash);
	foreach (keys(%hash))
	{
		print $_,"=>", $hash{$_};;
	}
}



