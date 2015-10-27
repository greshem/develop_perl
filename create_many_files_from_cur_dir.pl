#!/usr/bin/perl
use File::Copy;
@file=grep { -f } glob("*");
$count=0;
#while( $count < 100000) 
foreach (@file)
{
	
	($name, $suffix)=($_=~/(.*)\.(.*)/) ;
	if( ! defined($name))
	{
		$name=$_;
		$suffix="";
	}

	#print $name, "||| ", $suffix,"\n";
	foreach $number (1..100)
	{
		print "cp ".$_."\t".$name."_".$number.".".$suffix."\n";

		copy($name.".txt", "../".$name."_".$count.".txt");
	}
}
