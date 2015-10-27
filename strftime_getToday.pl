#!/usr/bin/perl
get_YYYY_MM_DD();
get_YYYY_mm_dd_T();
YYYY_MM_DD_T_in_win();
print get_MM_month();


########################################################################
#subfucion 
#2011_01_05_23:29:24 add by greshem
# /root/daemon_monitor/ ��Ŀ�����õıȽ϶࣬ ����ʱ��Ƚ����� ��� ����ʱ����÷�����һ��, �����������Ϊ������. 

#Result: 2011-01-05-23:30:05
sub get_YYYY_mm_dd_T()
{
	use POSIX 'strftime';
	$cur_time=POSIX::strftime('%Y-%m-%d-%T',localtime(time()));
	return $cur_time;	
}

#Result: 2012_12_30
sub get_YYYY_MM_DD()
{
	my $today=POSIX::strftime('%Y-%m-%d',localtime(time()));
	return $today;
}


sub get_MM_month()
{
	use POSIX 'strftime';
	my $today=POSIX::strftime('%m',localtime(time()));
	return $today;
}
#windows �µ� ʱ��Ĵ�ӡ�ķ�ʽ. 
#���: 2011-01-05-23:30:05
sub YYYY_MM_DD_T_in_win()
{
	if($^O=~/win/i)
	{
		use POSIX 'strftime';
		$cur_time=POSIX::strftime('%Y-%m-%d-%H:%M:%S',localtime(time()));
		#print "nowTime -> ", $cur_time,"\n";
		return $cur_time;
	}

	return get_YYYY_mm_dd_T();
}
#==========================================================================

