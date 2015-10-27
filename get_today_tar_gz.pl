#!/usr/bin/perl 
#===============================================================================
#         FILE:  get_today_tar_gz.pl
#        USAGE:  ./get_today_tar_gz.pl  
#  DESCRIPTION:  
#       AUTHOR:  YOUR NAME (), 
#      CREATED:  2011年06月27日 22时36分29秒
#===============================================================================

use strict;
use warnings;

my $each;

for  $each (glob("*.tar.gz"))
{
	if( -M $each <= 1)
	{
		print "cp -a -r ". $each." /root/ \n";	
	}
}
