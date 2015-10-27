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


#my $AGE_OF_etc_passwd = -M '/etc/passwd';
 my $day=7;


# Traverse desired filesystems
File::Find::find({wanted => \&wanted}, '/root');
for (split /:/, $ENV{PATH})
{
 -d &&	File::Find::find({wanted => \&wanted}, $_);
}
exit;


sub wanted {
    my ($dev,$ino,$mode,$nlink,$uid,$gid);
    if (($name=~/root\/\./)  || ($name =~/linux_src/) || ($name =~/perl\/cpan/))
    {
	return ;
    }
    (($dev,$ino,$mode,$nlink,$uid,$gid) = lstat($_)) ;
    #if( -T $_ &&  (-M $_ < 7 ) && ($name=~/root\/[^.]/)  && ($name !~/linux_src/) && ($name !~/perl\/cpan/))
    if( -T $_ &&   (-M $_ < 7 ) ) 
    { 
	print("$name\n");
    }
}

