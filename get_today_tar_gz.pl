#!/usr/bin/perl 
#===============================================================================
#         FILE:  get_today_tar_gz.pl
#        USAGE:  ./get_today_tar_gz.pl  
#  DESCRIPTION:  
#       AUTHOR:  YOUR NAME (), 
#      CREATED:  2011��06��27�� 22ʱ36��29��
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
