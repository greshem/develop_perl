#! /usr/bin/perl -w
    eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
        if 0; #$running_under_some_shell

use strict;
use File::Find ();

# Set the variable $File::Find::dont_use_nlink if you're using AFS,
# since AFS cheats.

# for the convenience of &wanted calls, including -eval statements:
use vars qw/*name *dir *prune/;
*name   = *File::Find::name;
*dir    = *File::Find::dir;
*prune  = *File::Find::prune;

sub wanted;



# Traverse desired filesystems
File::Find::find({wanted => \&wanted}, '.');
exit;


sub wanted {
    my ($dev,$ino,$mode,$nlink,$uid,$gid);


    #(($dev,$ino,$mode,$nlink,$uid,$gid) = lstat($_)) &&
	my $basename=$_;
	if(-f $basename)
	{
		#print "$name is file\n";
		return ;
	}
	my  @array=grep {-d $_} (glob("$basename"."/*"));
	if(scalar(@array)==0 )
	{
    	#print("$name #��û����Ŀ¼.\n");
    	print("$name  \n");
	}
	else
	{
		#print join("|", @array)."\n";
	}
}

