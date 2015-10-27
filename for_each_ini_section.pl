#!/usr/bin/perl
use Data::Dumper;
use File::Copy;
$ini={};
$file=shift or die("Usage: $0 file.ini\n");
open(FILE, $file)or die("open file error\n");
while(<FILE>)
{
	chomp;
	if(/\s*\[\s*(\S+)\s*\]\s*/)
	#if(/[\s*(\S+)\s*]/)
	{
	$current_sec=$1;
	$ini->{$current_sec}={};
	}
	elsif(/\s*(\S+)\s*=\s*(\S*)\s*/)
	{
		$ini->{$current_sec}->{$1}=$2;
	}
}

#print  Dumper($ini);


#print "success\n";
sub each_section($)
{
	($ini_tmp)=@_;
	
	foreach  (keys(%{$ini_tmp}))
	{
		#print "[", $_,"]\n";
		#gen_leftmenu($ini, $_);
		print $_,"\n";	
	}
}

each_section($ini);
