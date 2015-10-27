#!/usr/bin/perl
$file=shift or warn("Usage: $0 filename\n"); 
if(! defined($file))
{
	$file=".";
}


$output_svn_log= "/tmp/file_svn.log";

system("svn log $file >  $output_svn_log \n");
if(-f  $output_svn_log )
{
	chmod(0777, $output_svn_log);
}
@version;
open(FILE, $output_svn_log) or die("open file error $! \n");
for(<FILE>)
{
	if($_=~/20..-..-../)
	{
		#print $_;
		if($_=~/r(\d+).*/)
		{
			push(@version, $1);
		}
	}
}


for(0..$#version)
{
	if($_==0)
	{
		print "#所有的改动\n";
		print "#svn diff -r  ". $version[$_]. ":". $version[$_-1]." $file \n";
	}
	else
	{
		print "svn diff -r  ". $version[$_]. ":". $version[$_-1]." $file \n";
	}
}
#==========================================================================
print "#==========================================================================\n";
print "最后一次改动\n";
system("svn diff -r $version[1]:$version[0] $file \n");
