#!/usr/bin/perl
$file=shift or die("usage: $0 file nth_block \n");
$number=shift or die("usage: $0 file nth_block \n");

open(FILE, $file) or die("open  file error $!\n");
@block;
$inBlock=0;
$nth=0;
foreach (<FILE>)
{
	#�ǿ�����
	if($_=~/^\S+/ && $inBlock==0)
	{
		$inBlock=1;
		$nth++;
	#	push(@block, $_);
	}

	#�ӿ����������	
	if($_=~/^\s+$/ && $inBlock==1)
	{
		$inBlock=0;
		if($nth== $number)
		{
			map{print} @block;
		}
		@block=();
		
	}

	if($inBlock==1)
	{
		push(@block, $_);
	}
	
	
}

