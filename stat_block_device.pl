#!/usr/bin/perl
 #S_IFREG S_IFDIR S_IFLNK S_IFBLK S_IFCHR
                   #S_IFIFO S_IFSOCK S_IFWHT S_ENFMT
#my @tmp=stat($file);
use Fcntl ':mode';

check_is_block("/dev/sda");
check_is_block("/dev/hda");

sub check_is_block($)
{
	(my $blk_name)=@_;
	my @tmp=(stat($blk_name));
	my $mode =  $tmp[2];

	$is_blk= S_IFBLK & $mode;

	if($is_blk)
	{
		print " $blk_name is block \n";
	}
	else
	{
		print " $blk_name is not block \n";
	}
}


sub is_dir($)
{
	(my $mode)=@_;	
	my $is_directory  =  S_IFDIR & $mode;
}
