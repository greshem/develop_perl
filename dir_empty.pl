#!/usr/bin/perl
#***************************************************************************
# Description: ���ݸ�������Ŀ�б� �� /tmp3/sf_mirror/*.iso ���濽������.  	
# @param 	
# @return 	
#***************************************************************************/

sub  dir_is_empty($)
{
	(my $dir )=@_;
	@array=glob($dir."/*");
	#print @array;
	return ! scalar(@array);
}


if( dir_is_empty("/tmp/empty/"))
{
	print "is empty";
}
else
{
	print "no empty";
}
