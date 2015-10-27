#!/usr/bin/perl
#grep /usr/include/wx-2.8/wx/version.h

#define wxMAJOR_VERSION      2
#define wxMINOR_VERSION      8
#define wxRELEASE_NUMBER     12
#define wxSUBRELEASE_NUMBER  0
#define wxVERSION_STRING   wxT("wxWidgets 2.8.12")


$file= "/usr/include/wx-2.8/wx/version.h";
our $version=undef;
open(FILE, $file ) or die("#$file not exists \n");

for(<FILE>)
{
	#if($_=~/define\s+wxVERSION_STRING\s+wxT\("(\S+)"\)/)
	if($_=~/define\s+wxVERSION_STRING\s+wxT\((.*)\)/)
	{
		$version=$1;	
	}	
}

$version=~s/ /_/g;
$version=~s/\"//g;;
print "#wxVERSION=$version \n";
