
#push(@INC, "./");
#require 'Hash::Diff';


eval {
	push(@INC, "./");
	push(@INC, "/usr/share/perl5/vendor_perl/");
	require 'Hash::Diff';
	#require  File::Basename;
};

if ($@)
{
warn $@ ;
die("ERROR: Hash::Diff not exists \n");
}

