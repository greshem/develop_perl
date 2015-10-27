#!/usr/bin/perl
use File::Copy;
@file=grep { -f } glob("*");
#$delete=undef;
$delete=shift;
if($delete =~/del|delete/)
{
	$delete=1;
}

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

	#print $_."\n";
	if( $name =~/.*_\d+$/)
	{
		if( $delete)
		{
			printf "rm -f $_ \n ";
		}
		#olast;
		next;
	}
	foreach $number (1..10)
	{
		if(! $delete)
		{	
			print "cp ".$_."\t".$name."_".$number.".".$suffix."\n";
		}
	}
}
