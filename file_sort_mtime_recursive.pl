#! /usr/bin/perl
use strict;
use File::Find ();
use Cwd qw(getcwd);

my $cur_dir=getcwd();
my @files;


use vars qw/*name *dir *prune/;
*name   = *File::Find::name;
*dir    = *File::Find::dir;
*prune  = *File::Find::prune;

sub wanted;



# Traverse desired filesystems

File::Find::find({wanted => \&wanted}, $cur_dir);


my @filesSort= sort{-M $a <=> -M $b} @files;
my $count_100=0;
for(@filesSort)
{

		print  $_, " --> ", HumanNumber(-s $_), "\t", -M $_, "\n";
		$count_100++;
		if($count_100 == 100)
		{
			exit(-1);
		}
}

exit;

########################################################################
sub wanted 
{
    my ($dev,$ino,$mode,$nlink,$uid,$gid);

	if( -d $_ && $_==".git")
	{
		return;
	}
    (($dev,$ino,$mode,$nlink,$uid,$gid) = lstat($_)) && -f $_ && print("$name\n");
	
	if(-f $_ && -T $_)
	{
		push(@files, $name);
	}
}
########################################################################
sub HumanNumber($)
{
	(my $in)=@_;
		return int($in/1024)."k " ;
}

