#!/usr/bin/perl
#2011_07_19 by qzj. 

my @lables;
my %disk_name;
for(a..z)
{
	if( -d "$_:\\")
	{
		#print $_."\n";
		push(@lables, $_);
	}
}

for(@lables)
{
	if(is_sdb1($_))
	{
		print "sdb1-> $_\n";
		$disk_name{"sdb1"}=$_;
	}
	elsif(is_sdb2($_))
	{
		print "sdb2-> $_\n";
		$disk_name{"sdb2"}=$_;
	}
	elsif(is_sdb3($_))
	{
		print "sdb3-> $_\n";
		$disk_name{"sdb3"}=$_;
	}
	elsif(is_sdb4($_))
	{
		print "sdb4-> $_\n";
		$disk_name{"sdb4"}=$_;
	}
}
########################################################################
sub is_sdb1($)
{
	(my $disk_path)=@_;
	@sub=glob("$disk_path:\\*");
	if(scalar(@sub) >= 9)
	{
		#warn("$disk_path 不是 个人sdb1 磁盘, 子目录太多\n");
		return undef;
	}
	else
	{	
		#print join("\n", @sub);
		#warn("$disk_path 可能 是 个人sdb1 磁盘, 子目录<6 \n");
	}


	if( -d "$disk_path:\\ebook" 		&& 
		-d "$disk_path:\\all_chm" 	&& 
		-d "$disk_path:\\_x_file" 	&& 
		-d "$disk_path:\\_pre_cache")
	{
			return $disk_path;
	}
	return undef;
}

sub is_sdb2($)
{
	(my $disk_path)=@_;

	if( -d "$disk_path:\\ghost_targz_iso" 		&& 
		-d "$disk_path:\\kugou_mp3_iso" 	&& 
		-d "$disk_path:\\linux_iso_windows" 	&& 
		-d "$disk_path:\\linux_src_all_iso"  &&
		-d "$disk_path:\\oss_site_all_iso"  &&
		-d "$disk_path:\\Security"  &&
		-d "$disk_path:\\vmware_disk_iso"  
		)
	{
			return $disk_path;
	}
	return undef;
}

sub is_sdb3($)
{
	(my $disk_path)=@_;

	if( -d "$disk_path:\\develop_IDE_ISO" 		&& 
		-d "$disk_path:\\Green_software" 	&& 
		-d "$disk_path:\\lindows" 	&& 
		-d "$disk_path:\\office_03_07_10"  &&
		-d "$disk_path:\\photo"  &&
		-d "$disk_path:\\qimeng"  &&
		-d "$disk_path:\\sf_mirror_all"  &&
		-d "$disk_path:\\vc"  &&
		-d "$disk_path:\\windows_pe_iso"
	)
	{
			return $disk_path;
	}
	return undef;
}

sub is_sdb4($)
{
	(my $disk_path)=@_;

	if( -d "$disk_path:\\_daily_backup" 		&& 
		-d "$disk_path:\\f13_srpm_download" 	&& 
		-d "$disk_path:\\my_usb_video_driver" 	&& 
		-d "$disk_path:\\sync_svn")  
	{
			return $disk_path;
	}
	return undef;
}
