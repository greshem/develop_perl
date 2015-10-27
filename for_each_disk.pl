#!/usr/bin/perl
#20100705 qzj 添加， 挂载目录的时候， 自己创建目录。 
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
		#对于BOOT设备会多出一个\* 进行标识处理掉这种情况
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
#整理出 /dev/hda1 => Linux 的HASH表
#对/dev/hda1等设备排序
for $each (sort keys %device) 
{
	# #print  "DEVICE ".$each."\n";
	# $tmp=lc($device{$each});
	# 
	# #print "!!!!".$tmp;
	# #print $each."=>".$device{$each}."\n";
	# #替换设备
	# $mount{$tmp}=~s/\|device\|/$each/;
	# $each=~s/dev/mnt/;
	# #print "###".$each;
	# #替换mount点
	# #print "mkdir $each\n";
	# mkdir($each);
	# $mount{$tmp}=~s/\|mnt_point\|/$each/;
	# print $mount{$tmp}."\n";	
	# 
	# $mount{$tmp}=$mount_back{$tmp};
	# #一定要恢复, 否则 |mnt_point| 已经被替换掉了, 正则一定不能匹配 的.
	# 
	# #print $tmp."\n";
}
