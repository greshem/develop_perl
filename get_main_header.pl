#!/usr/bin/perl
#2011_03_15_13:53:53   ���ڶ�   add by greshem
#��һ��Ŀ¼�� �ҳ�����ܹ��� include ���ļ�.  ͳ�������е�������ͷ�ļ�. 

@files=glob("*.h");

$files_number=scalar(@files);
#$files_number-=3;
for (@files)
{
	$count=get_include_line($_); 
	#print $_,"\t",$count,"\n";
	if($count >= $files_number)
	{
		print "-->",$_,"\n";
	}
}

########################################################################
sub get_include_line($)
{
	(my $file)=@_;
	my $count=0;
	open(FILE, $file) or die("open file error $!\n");
	for(<FILE>)
	{
		if($_=~/\s*#include\s*</)
		{
			$count++;	
		}
	}
	close(FILE);
	return $count;
}
