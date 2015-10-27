#!/usr/bin/perl
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
#print Dumper(%hash);
foreach (keys(%hash))
{
	print $_,"=>", $hash{$_};;
}

