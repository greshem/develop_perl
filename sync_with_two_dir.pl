#!/usr/bin/perl

#2011_01_10_16:34:56 add by greshem
#进一步需求可以参考pathsync.exe 
# J:\lindows\TTCS_OSSWIN.iso
# 如何同步的概念， 进一步可以学习一下， pathsync.exe. 他有6 种模式. 

#2011_01_09_15:23:33 add by greshem, 两个目录进行同步， 不用把递归. 

#:\software\utilities\pathsync
my %dir1;
my %dir2;

my %file;

$dir1=shift or die("Usage: $0 dir1 dir2\n");
$dir2=shift or die("Usage: $0 dir1 dir2\n");

use Cwd;
use File::Basename;


foreach  $each  (grep { -f && -T } glob("$dir1/*"))
{
	$basename= basename($each);
	$file{$basename}++;
}

foreach  $each  (grep { -f && -T } glob("$dir2/*"))
{
	$basename= basename($each);
	$file{$basename}++;
}

foreach $each (keys(%file))
{
	#print $each."\n";
	if(-f $dir1."/".$each && -f $dir2."/".$each)
	{
		if((-M $dir1."/".$each) > (-M $dir2."/".$each))
		{
			print "cp -a -r -f ". $dir1."/".$each."\t".$dir2."/".$each."\n#1\n";
			print "#MTIME \t".(-M $dir1."/".$each)."-> ".(-M $dir2."/".$each)."\n";

		}
		elsif ((-M $dir1."/".$each) > (-M $dir2."/".$each))
		{
			
			print "cp ". $dir2."/".$each."\t".$dir1."/".$each."\n#2\n";
		}

	}
	elsif(-f $dir1."/".$each)
	{
			print "cp ". $dir1."/".$each."\t".$dir2."/".$each."\n\#3\n";
	}
	elsif(-f $dir2."/".$each)
	{
			print "cp ". $dir2."/".$each."\t".$dir1."/".$each."\n\#4\n";
	}
}
