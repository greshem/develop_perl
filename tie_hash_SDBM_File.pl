#!/usr/bin/perl
#��� ���̽��д��� ����  ����������  ��ô�н����? 
#���� sf_mirror_download ����Ŀ. 
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
			print "��  $download_his{$_} �� ������\n";
			$download_his{$_}++;
			$download_his{$_}--;

		}
	}
}
