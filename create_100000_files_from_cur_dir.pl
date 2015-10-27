#!/usr/bin/perl
use File::Copy;
@file=glob("*.txt");
$count=0;
while( $count < 100000) 
{
	print "round".($count/$#file)."\n";
	for(@file)
	{
		
		($name)=($_=~/(.*)\.txt/);
		while(-f $name."_".$count.".txt")
		{
			$count++;
		}
	#	print "cp ".$name.".txt", $name."_".$count.".txt\n";
		copy($name.".txt", "../".$name."_".$count.".txt");

		$count++;
	}
}
