#!/usr/bin/perl
use File::Copy::Recursive qw(pathmk dircopy dirmove);
#2011_03_11_13:03:17   ������   add by greshem
# ����Ŀ¼�ٵĻ� �ͷֳ� 26 ��Ŀ¼. 
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
