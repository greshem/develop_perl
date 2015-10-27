#!/usr/bin/perl
use Cwd;
use File::Basename;

our $g_pwd=getcwd();

#if(-w $g_pwd)
if( dir_is_writable($g_pwd))
{
	print "#curdir $g_pwd  is writable \n";
}
else
{
	print "#curdir $g_pwd  is not writable \n";
}

sub dir_is_writable($)
{
	(my $input_dir)=@_;
	open(FILE, "> TEST_DIR_IS_WRITABLE") or return undef;
	close(FILE);
	unlink("TEST_DIR_IS_WRITABLE");
	return 1;
}
