#!/usr/bin/perl

for (glob("buildgtk_1/*.o"))
{
	my $dest=$_;
	$dest=~s/buildgtk_1/buildgtk_2/g;
	#print "md5sum $_\n";
	#print "md5sum $dest \n";

	$md5_1=get_md5sum($_);
	$md5_2= get_md5sum($dest);

	if($md5_1 ne $md5_2)
	{
		print "ERROR: $_\n";
	}

}


sub get_md5sum($)
{
	(my $input_file)=@_;
	my $output=`md5sum $input_file`;
	(my $md5sum)= ($output=~/(\S+)\s+(\S+)/);
	return $md5sum;
}
