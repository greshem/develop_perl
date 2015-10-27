#!/usr/bin/perl
#2011_01_27_17:35:02 add by greshem, 
#主要懒的写， windows 下的getchar 的函数， 所以写了这么一个工具. 
use POSIX qw(strftime);
$file=$ARGV[0] or die("$0 filename \n");
if($file!~/\.py$/)
{
	$file.=".py";
}
$time=strftime("%Y_%m_%d", localtime(time()));
print $time;
open(FILE,">".$file) or die("open file error $!\n");
while(<DATA>)
{
	if(/__TEMPLATE__/)
	{
		$_=~s/__TEMPLATE__/$file/g;
		print FILE $_;
	}
	elsif(/__TIME__/)
	{
		$_=~s/__TIME__/$time/g;
		print FILE $_;
	}
	else
	{
		print FILE $_;
	}
}
close(FILE);

__DATA__
#!/usr/bin/python 
#coding:gbk
#__TIME__ by greshem. 
import sys;

print("__TEMPLATE__");
if( len(sys.argv) <  2):
   print "Usage:   %s  size "%sys.argv[0];
else:
	print sys.argv;


if sys.platform =='win32':
	print sys.stdin.readline()[:-1];

