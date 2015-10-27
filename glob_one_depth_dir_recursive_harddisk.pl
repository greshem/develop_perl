#!/usr/bin/perl
do("c:\\bin\\iso_get_mobile_disk_label.pl");
sub get_harddisks()
{
	require Win32::DriveInfo;
	my @drives2 = grep Win32::DriveInfo::IsReady($_), ("C".."Z");
	my @hddisks;
	for (@drives2) 
	{
		#$vol->{$_}{"type"} = Win32::DriveInfo::DriveType($_);
		if(is_sdb1($_) || is_sdb2($_) || is_sdb3($_) || is_sdb4($_))
		{
			next;
		}
		$type= Win32::DriveInfo::DriveType($_);
		if($type eq "3")
		#if($type eq "2")
		{
			#print "$_ 是硬盘\n";
			push(@hddisks, $_);
		}
	}
	return @hddisks;
}

my @hdlabels=get_harddisks();

my @depth1=glob_dirs(@hdlabels);
print join("\n", @depth1);


######################################################################## 
#下面的函数来自于 mobile_skt_update.pl 有空就分割一下
#返回 一个目录数组 下的 子目录数组.
sub glob_dirs(@)
{
	(my @dirs)=@_;
	my @ret;
	for(@dirs)
	{
		my @tmp=grep { -d }glob_one_dir($_);
		push(@ret, @tmp);
	}
	return @ret;
}


sub glob_one_dir($)
{
	(my $pattern)=@_;
	if( $pattern=~/^.$/) #是盘符.
	{
		$pattern.=":\\*";
	}
	elsif($pattern!~/\\$/)
	{
		$pattern.="\\*";
	}
	elsif($pattern=~/\\$/)
	{
		$pattern.="*";
	}

	my @dirs_depth1;
	for( (glob($pattern)))
	{
		if($_!~/RECYCLER$|System.*Volume.*Information$|Recycled$/i)
		{
			#print $_."\n";
			push(@dirs_depth1, $_);
		}
	}
	return @dirs_depth1;
}
