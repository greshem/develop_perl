#!/usr/bin/perl
#20100705 qzj ��ӣ� ����Ŀ¼��ʱ�� �Լ�����Ŀ¼�� 
use Data::Dumper;
%mount=("hpfs/ntfs" => "ntfs-3g |device| |mnt_point|",
	"w95"  => "mount -t vfat |device| |mnt_point| -o iocharset=gb2312",
	"linux"=> "mount -t ext3 |device| |mnt_point|",
	);
%mount_back=%mount;
my %device;
open(FILE,"fdisk -l |")|| die "cann't open the file\n";
while(<FILE>)
{	if(/^\/dev/)
	{  	s/\*//;
		#����BOOT�豸����һ��\* ���б�ʶ������������
		if(!/W95\ Ext|swap|LVM/)
		{
			@mount=split(/\s+/, $_);
			#print $mount[0]."  ".$mount[5]."\n";
			print $mount[0],"\n";
			$device{$mount[0]}=$mount[5];
		}
	}
}; 
Dumper %device;
#����� /dev/hda1 => Linux ��HASH��
#��/dev/hda1���豸����
for $each (sort keys %device) 
{
	# #print  "DEVICE ".$each."\n";
	# $tmp=lc($device{$each});
	# 
	# #print "!!!!".$tmp;
	# #print $each."=>".$device{$each}."\n";
	# #�滻�豸
	# $mount{$tmp}=~s/\|device\|/$each/;
	# $each=~s/dev/mnt/;
	# #print "###".$each;
	# #�滻mount��
	# #print "mkdir $each\n";
	# mkdir($each);
	# $mount{$tmp}=~s/\|mnt_point\|/$each/;
	# print $mount{$tmp}."\n";	
	# 
	# $mount{$tmp}=$mount_back{$tmp};
	# #һ��Ҫ�ָ�, ���� |mnt_point| �Ѿ����滻����, ����һ������ƥ�� ��.
	# 
	# #print $tmp."\n";
}
