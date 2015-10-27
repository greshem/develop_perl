#!/usr/bin/perl 
if( ! -f "du_usage_byte.txt")
{
	sysmtem("du -b >  du_usage_byte.txt");
}

mkdir("size_1M");
mkdir("size_10M");
mkdir("size_100M");
mkdir("size_1000M");
mkdir("size_1G_big");

open(INPUT, "du_usage_byte.txt") or die(" file open error\n");

for(<INPUT>)
{		
	my $size=$1;
	my $path=$2;

	if($_=~/(\S+)\s+(.*)/)
	{
		$size=$1;
		$path=$2;
	}	
	else
	{
		next;
	}

	if($path=~/size_1/)
	{
		next;
	}
	if($path=~/^\.$/)
	{
		next;
	}


	if($size >0 && $size < 1024*1024)
	{
		print ("mv \"$path\" size_1M \n");
	}
	elsif($size >=1024*1024 && $size < 1024*1024*10)
	{
		print ("mv \"$path\" size_10M \n");
	}
	elsif($size >=1024*1024*10 && $size < 1024*1024*100)
	{
		print ("mv \"$path\" size_100M \n");
	}
	elsif($size >=1024*1024*100 && $size < 1024*1024*1000)
	{
		print ("mv \"$path\" size_1000M \n");
	}
	else
	{
		print ("mv \"$path\" size_1G_big \n");
	}


}
