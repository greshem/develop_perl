#!/usr/bin/perl

use Cwd;

system_exec_must_success_or_die("lsdd");

sub system_exec_must_success_or_die($)
{
	(my $cmd_str)=@_;
	logger("ִ������: $cmd_str\n");
	system($cmd_str);
	#if($?>>8 ne 0)
	if($? ne 0)
	{
		my $pwd=getcwd();
		printf(" $pwd ִ������\n");
		die("������: $cmd_str ִ��ʧ��\n");
	}
}



#��־��ƽ̨����������ϵͳ��
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

