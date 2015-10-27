#!/usr/bin/perl
#2011_02_20_20:38:58 add by greshem

if ( $^O  =~/linux/)
{
	print "this is linux \n";
}
elsif ($^O =~/mswin32/i)
{
	print "this is windows32\n";
	print "$^O\n";
	use Win32;
	use strict;
	my ($OS_string, $OS_major, $OS_minor, $OS_build, $OS_id) = Win32::GetOSVersion();  
	print "OS=".$OS_string,"|", "major=",$OS_major,"|minor=", $OS_minor,"|build=", $OS_build,"|id=", $OS_id."\n";

	<STDIN>;
}
