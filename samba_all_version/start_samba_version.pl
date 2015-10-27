#!/usr/bin/perl
# /opt/samba-2.0.0/bin/smbd
# /opt/samba-2.0.0/bin/nmbd


mkdir_private();

my $version=shift  or usage();

my $smbd="/opt/".$version."/bin/smbd";
my $nmbd="/opt/".$version."/bin/nmbd";

if( ! -f $smbd || ! -f $nmbd )
{
	print "$smbd  not exists \n";
	print "$nmbd  not exists \n";
	usage();
}
system("pkill smbd ");
system("pkill nmbd ");

print "start smbd \n";
system($smbd);

print "start nmbd \n";
system($nmbd);

sub usage()
{
	foreach (grep { -d } glob("/opt/samba*/"))
	{
		my $version=$_;
		$version=~s/\/opt\///g;
		$version=~s/\/$//g;
		print "perl $0  $version \n";
	}
	die("\n");
}

#private
sub mkdir_private()
{
	foreach (grep { -d } glob("/opt/samba*/"))
	{
		mkdir("$_/private/");
	}
}
