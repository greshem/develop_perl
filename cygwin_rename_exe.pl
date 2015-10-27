#!/usr/bin/perl
#2011_06_23_22:59:12   ÐÇÆÚËÄ   add by greshem
sub rename_in_cygwin($)
{
	(my $name)=@_;
	$src_path="c:\\cygwin\\bin\\".$name.".exe";
	$dest_path="c:\\cygwin\\bin\\".$name."_cgywin.exe";
	if( -f 	 $src_path )
	{
		rename($src_path, $dest_path);	
	}
	else
	{
		print "#".$src_path." not exists\n";
	}

}

@array=qw(perl gvim vim svn cvs link make vi perldoc );	

for $each (@array)
{
	rename_in_cygwin($each);
}
