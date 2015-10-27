#!/usr/bin/perl
$HZ=100;
########################################################################
#��ȡ�����Ǵ�ϵͳ����֮��Ķ�����������. 
#����, ע��������. 
#1 (init) S 0 1 1 0 -1 4202752 3154 169252306 16 12249 9 72 591476 124595 20 0 1 0 1 19689472 303 18446744073709551615 4194304 4320582 140733849332800 140733849331880 217054027843 0 0 4096 536962595 18446744071579955955 0 0 0 2 0 0 61 0 0
sub get_time_span_after_boot($)
{
	(my $pid)=@_;
	$file= "/proc/$pid/stat";
	open(FILE,  $file ) or die("Open file error $file\n");
	for(<FILE>)
	{
		if($_=~/$pid.*\(.*\)/)
		{
			@array=split(/\s+/, $_);
			#print $array[21];
			#������ļ��ĵ�21����. �Կո�Ϊ��.  
			$proc_span_after_boot= $array[21]/$HZ;
			return  $proc_span_after_boot
		}
	}
	return undef;
}

########################################################################
#ϵͳ������������ �� 1970�� ���бȽ�. 
#btime 1307004856
sub get_sys_boot_time()
{
	my $file="/proc/stat";
	open(FILE, $file) or die("Open file $file error\n");
	for(<FILE>)
	{
		if(/^btime\s+(\S+)/)
		{
			my $time_sys_boot=$1;
			return  $time_sys_boot;
		}
	}
	return undef;
}
########################################################################
#��������ʱ����. 
sub get_alive_time($)
{
	(my $pid)=@_;
	$time_now= time();
	$time_sys_boot= get_sys_boot_time();
	$time_span_after_boot= get_time_span_after_boot($pid) ;
	#printf("����  $pid �� ϵͳ���� $time_span_after_boot ��֮��������\n");
	$alive_time= $time_now - $time_sys_boot -  $time_span_after_boot ;
	return $alive_time;
}
########################################################################
#mainloop
my $pid=shift;
if(!defined($pid))
{
	$pid=1;
}
while(1)
{
	print "#########\n";
	$alive_time=get_alive_time( $pid );
	print  " pid= $pid �����Ѿ����� ".$alive_time."��\n";
	sleep(1);
}
