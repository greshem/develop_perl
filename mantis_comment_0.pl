#!/usr/bin/perl
$limit=shift;
if(! defined($limit))
{
	$limit=10;
}
open(FILE, "svn log -l $limit |") or die("Open pipe error\n");
for(<FILE>)
{
	if($_=~/^(r\d+).*\|(.*)\|.*\|.*/)
	{
		#print "DDDDD-> ".$_;
		print "######################################################################\n";
		print "修正SVN版本: $1 by $2\n";
	}
	if($_=~/^mdf|^bug|^chg|^del|^add|^enh|^tst|^test|^ref|^rev|^des/i)
	{
		print "原因分析: $_"; 
		print "解决方法: $_";
	}
}

#开发人员的注释:
########################################################################
#修正SVN版本:1280
#原因分析：未在弹出框消失后，销毁“进程”等对话框
#解决方法：在弹出框消失后，销毁“进程”等对话框 


