#!/usr/bin/perl
use Image::Size;
use Data::Dumper;
%hash;
$list=shift or die("Usage: $0 img.list|| dir \n");
if(-f $list)
{
	open(FILE, $list) or die("Open file error $!\n");
	@array=map{chomp;}(<FILE>);
}
elsif (-d $list)
{
	@array=glob($list."/*");
}


foreach (@array)
{
	#chomp;
	#print $_,"\n";;
	($imgx, $imgy)=imgsize($_);	
	if(defined($imgx) && defined($imgy))
	{
		$sizeStr=$imgx."_".$imgy;
		$hash{$sizeStr}++;
	}
}

#print Dumper(%hash);
foreach (keys(%hash))
{
	#if($hash{$_}>20)
	{
		print $_,"->", $hash{$_},"\n"; 
	}
}
