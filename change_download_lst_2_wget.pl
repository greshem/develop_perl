#!/usr/bin/perl
#20100514  download ���ļ���ʽ��  url  toDir 
#���� http://www.baidu.com  baidu 
#�����Զ����� baidu Ŀ¼�ġ� 
#20100518
#�����Ѻ����ó����� �����޸ģ� �����־�� ������ �ȵȡ� 

#2010_08_02_16:39:00 add by qzj
#���� wget ��·����ģʽ�Ƚ�������⡣-O ������ļ� axel �������Ŀ¼�� �����ر��������u 
use File::Basename;
$file=shift or die("Usage: $0 down_load.lst\n");

open(FILE, $file) or die("open file error\n");
print  <<EOF 
myAxel()
{
	if [ ! -f \$2/\$(basename \$1)  ];then
		if [ ! -d \$2 ];then
			mkdir \$2;
		fi
		#axel -n 10 \$1 -o \$2
		wget \$1 -O \$2
		if [  ! \$?  -eq 0 ];then
			echo "axel \$1 error "
			echo "axel \$1 error " \>\> axel_error.log
		fi
	else
		echo \$2/\$(basename \$1) , "have download";
	fi
}
EOF
;
while(<FILE>)
{

	($url, $toDir)=($_=~/(\S+)\s+(\S+)/);
	#print "#\n";
	#print basename($url)."\n";
	if(! -f $toDir."/".basename($url))
	{
		if(grep {/wget/} @ARGV)
		{
			#print "if [ ! -f  ".$toDir."/".basename($url)." ];then axel -n  10 ".$url."\t\t -o ".$toDir."/".basename($url)."\n;else ; print #".$url." Download !\n";
			#print "if [ ! -f  ".$toDir." ];\nthen axel -n  10 ".$url."\t\t -o ".$toDir."/".basename($url)."\nelse\n \n echo ".$toDir." have Download !\n fi\n";
			print "wget ".$url."\t\t -P ".$toDir."\n";
		}	
		else
		{
			print "myAxel ",$url, "\t", $toDir,"\n";
		}
	}
	else
	{
		#print "#wget ".$url."\n";
	}
		
}
