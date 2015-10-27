#!/usr/bin/perl

#2010_12_28_18:59:01 add by greshem
# 这里当前目录的分布是，  name_数字.suffix 
use File::Copy;
@file=grep { -f } glob("*");
#$delete=undef;
foreach (@file)
{
	
	#print "####################################################################\n";;
	($name, $suffix)=($_=~/(.*)\.(.*)/) ;
	if($_=~/orig$/)
	{
		next;
	}
	if( ! defined($name))
	{
		$name=$_;
		$suffix="";
	}

	#print $name, "||| ", $suffix,"\n";

	#print $_."\n";
	if( $name =~/.*_\d+$/)
	{
		#printf "rm -f $_ \n ";
		#olast;
		next;
	}
	else
	{
		if( $_!~/orig$/ && ! -f $name.".".$suffix.".orig") 
		{
			print "mv  $_\t ", $name.".".$suffix.".orig\n";
		}
	}
		
	my $num=int(rand(10)	);
	#print "cp \t".$name."_".$num.".".$suffix."\t".$_."\n";
	#print "cp \t".$name."_".$num.".".$suffix."\t".$_."\n";
	rename($_, "tmp");
	rename( $name."_".$num.".".$suffix, $_);
	rename("tmp",   $name."_".$num.".".$suffix);
	print "########################################################################\n";
}
