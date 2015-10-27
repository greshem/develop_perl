#!/usr/bin/perl
#***************************************************************************
# Description: 根据给出的项目列表 从 /tmp3/sf_mirror/*.iso 里面拷贝出来.  	
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
