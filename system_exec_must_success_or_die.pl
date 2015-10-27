#!/usr/bin/perl

use Cwd;

system_exec_must_success_or_die("lsdd");

sub system_exec_must_success_or_die($)
{
	(my $cmd_str)=@_;
	logger("执行命令: $cmd_str\n");
	system($cmd_str);
	#if($?>>8 ne 0)
	if($? ne 0)
	{
		my $pwd=getcwd();
		printf(" $pwd 执行命令\n");
		die("命令行: $cmd_str 执行失败\n");
	}
}



#日志跨平台在两个操作系统上
sub logger($)
{
	(my $log_str)=@_;
	if($^O=~/win32/i)
	{
		open(FILE, ">>  d:\\log\\for_each_dir.log");
	}
	else
	{
		open(FILE, ">>  /var/log/for_each_dir.log");
	}

		print FILE $log_str;
		close(FILE);
}

