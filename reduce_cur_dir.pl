#!/usr/bin/perl
use File::Copy::Recursive qw(pathmk dircopy dirmove);
#2011_03_11_13:03:17   星期五   add by greshem
# 假如目录少的话 就分成 26 个目录. 
opendir(DIR, ".") or die("open dir error\n");
@dirs= grep { length($_)>2 && -d && !/\./} readdir(DIR);


for(@dirs)
{
	if(scalar(@dirs) > 2000)
	{
		$tmp=substr($_,0,1)."/".substr($_,0,2)."/".$_;
		pathmk($tmp);
	
		print "mv \t",$_,"\t", $tmp,"\n";
		#dirmove($_, $tmp);
	}
	else
	{
		$tmp=substr($_,0,1);
		pathmk($tmp);
		print "mv \t",$_,"\t", $tmp,"\n";
		#dirmove($_, $tmp);
	}
}
