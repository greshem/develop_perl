
sub is_setuid($)
{		
	(my $filename)=@_;
	use Fcntl ':mode';
	$mode = (stat($filename))[2];

	#$user_rwx	  = ($mode & S_IRWXU) >> 6;
	#$group_read	  = ($mode & S_IRGRP) >> 3;
	#$other_execute =  $mode & S_IXOTH;
	#printf "Permissions are %04o\n", S_IMODE($mode), "\n";

	my $is_setuid	  =  $mode & S_ISUID;
	if($is_setuid)
	{
		print "$filename is  setuid \n";
	}
	else
	{
		#print "$filename is not  setuid \n";
	}
	#$is_directory  =  S_ISDIR($mode);
}

#is_setuid("/bin/ls");
for $each (glob("/sbin/*"))
{
	is_setuid($each);
}

for $each (glob("/bin/*"))
{
	is_setuid($each);
}


for $each (glob("/usr/bin/*"))
{
	is_setuid($each);
}

for $each (glob("/usr/sbin/*"))
{
	is_setuid($each);
}

