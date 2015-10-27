#!/usr/bin/perl
# $Id: rget,v 1.10 2008/02/04 00:56:51 jdl Exp $

#2010_08_07_08:19:31 add by qzj
#注意这个FTP 服务器返回的 格式， 以及要解析的格式， 默认的解析的方式有错误。 
=pod

=head1 NAME

rget - Sample script to show you how to use the rget function.

=head1 SYNOPSIS

    % rget [--windows] <server> <user> <password> <remote_path> <local_path>

=head1 DESCRIPTION

This script is an example script for users of the C<Net::FTP::Recursive>
module to be able to see how to utilize the C<rget> method in a script.

The C<--windows> argument may be passed to specify Windows-style directory
parsing.  This is semi-tested, but you may need to tweak the function slightly
depending on your FTP server.

=head1 AUTHOR

Jeremiah Lee <texasjdl_AT_yahoo_DOT_com>

=cut

use warnings;
use strict;
use Pod::Usage;
use Getopt::Long;
use Net::FTP::Recursive;

my $use_windows;

#GetOptions(
#            'help|?' => sub { pod2usage(); },
#            'windows' => \$use_windows,
#          );

#pod2usage() unless @ARGV >= 5;
#lftp teresaweiba@66.79.178.34/wwwroot/
my $host        = "66.79.178.34";
my $username    = "teresaweiba";
my $passwd      = "admin123";
my $remote_path = "wwwroot"; #where to grab from
my $local_path  = "wwwroot"; #where to put dir structure on local box.

mkdir ($local_path);
# set values to true for the arguments
#my %rget_args = ( map { ( $_ => 1 ) } {
#                  ( $use_windows ? (ParseSub => \&parse_sub) : () ) );

chdir $local_path
  or die "could not change dir to $local_path!";

my $ftp = Net::FTP::Recursive->new($host, Debug => 1)
  or die "Could not connect to $host!";

$ftp->login($username, $passwd) or die "Could not log in!";
$ftp->binary();

$ftp->cwd($remote_path)
  or die "could not change to $remote_path on the ftp server!";

#my $output = $ftp->rget( ParseSub=>\&parse_sub );
my $output = $ftp->rget();

$ftp->quit;

print "Got \$output of:\n$output\n";

exit;

# Parsing subroutine for Windows
# - may also be used as an example for your own FTP server if your output
#   isn't parsing correctly


sub parse_sub{

    my(@to_return) = ();

    foreach my $line (@_) {

        my($file); #reinitialize var

        next unless my @fields =
          $line =~ /^
                     (\S+)\s+ #date
                     (\S+)\s+ #time
                     (<DIR>)?\s* #user owner %u
                     (\d+)\s+ #size %s
                     (.+?)\s* #filename %f
                     (?:->\s*(.+))? #optional link part %l
                    $
                   /x;

        @fields = ( $fields[2], undef, undef, undef, $fields[3],
                    "$fields[0]$fields[1]", @fields[4,5] );

        my($perms) = ($fields[0]);

        next if $fields[6] =~ /^\.{1,2}$/;

        if ($perms =~ /<DIR>/){
            $file = Net::FTP::Recursive::File->new(IsPlainFile => 0,
                                                   IsDirectory => 1,
                                                   IsSymlink   => 0,
                                                   OriginalLine => $line,
                                                   Fields => [@fields]);
        }
        else {
            $file = Net::FTP::Recursive::File->new(IsDirectory => 0,
                                                   IsPlainFile => 1,
                                                   IsSymlink   => 0,
                                                   OriginalLine => $line,
                                                   Fields => [@fields]);
        }

        push(@to_return, $file);
    }

    return(@to_return);
}
