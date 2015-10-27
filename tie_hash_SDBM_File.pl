#!/usr/bin/perl
#多个 进程进行处理 看看  并发的问题  有么有解决掉? 
#来自 sf_mirror_download 的项目. 
use Fcntl;   # For O_RDWR, O_CREAT, etc.
use SDBM_File;


my %download_his;
tie %download_his , "SDBM_File", "download_his.dat", O_CREAT|O_RDWR, 0666
	or die("tie error $! \n");


#for(1..10000)
{
	for (1..100)
	{
		if( !defined($download_his{$_} ))
		{
			$download_his{$_}=0;
		}
		else
		{
			print "第  $download_his{$_} 次 处理了\n";
			$download_his{$_}++;
			$download_his{$_}--;

		}
	}
}
