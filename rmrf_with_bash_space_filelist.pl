#!/usr/bin/perl
#2011_02_02_23:00:08 add by greshem
use File::Copy::Recursive qw(pathmk dirmove pathrm pathempty );
use File::Basename;
$file=shift or die("Usage: $0\n");
open(FILE, $file) or die("open file error $!\n");

foreach $dir (<FILE>)
{
	chomp $dir ;
	if( -d $dir)
	{
		rmrf($dir);
	}
	else
	{
		die " $dir not directory\n";
	}
}
# /****************************************************************************
# * Description	
# * @param 	
# * @return 	
# * *************************************************************************/
sub rmrf($)
{
	($in)=@_;
	pathempty($in);
	pathrm($in);
}
