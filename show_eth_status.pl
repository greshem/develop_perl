#!/usr/bin/perl
#�������Ӳ�������ϵ�������Ϣ.
while(1)
{
	get_eths_info();
	sleep(60);
}

########################################################################
sub get_eths_info()
{
	foreach (glob("/sys/class/net/eth*"))
	{
		#print $_;
		print "########################################################################\n";
		$path=$_;
		$path=~s/\/sys\/class\/net\///g;
		print $path."\n";
		system("ethtool $path");
	}
}

