#!/usr/bin/perl
#20100514  download ���ļ���ʽ��  url  toDir 
#���� http://www.baidu.com  baidu 
#�����Զ����� baidu Ŀ¼�ġ� 

use File::Basename;
$file=shift or die("Usage: $0 down_load.lst\n");

open(FILE, $file) or die("open file error\n");
while(<FILE>)
{

	($url, $toDir)=($_=~/(\S+)\s+(\S+)/);
	#print "#\n";
	#print basename($url)."\n";
	if(! -f $toDir."/".basename($url))
	{
		if(grep {/axel/} @ARGV)
		{
			#print "if [ ! -f  ".$toDir."/".basename($url)." ];then axel -n  10 ".$url."\t\t -o ".$toDir."/".basename($url)."\n;else ; print #".$url." Download !\n";
			print "if [ ! -f  ".$toDir." ];\nthen axel -n  10 ".$url."\t\t -o ".$toDir."/".basename($url)."\nelse\n \n echo ".$toDir." have Download !\n fi\n";
		}	
		else
		{
			print "wget ".$url."\t\t -P ".$toDir."\n";
		}
	}
	else
	{
		#print "#wget ".$url."\n";
	}
		
}
