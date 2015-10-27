#!/usr/bin/perl

use File::Slurp qw(prepend_file);
system("cp /etc/passwd /tmp/");
my $text="this is prepend_file file line \n";

prepend_file( '/tmp/passwd', $text ) ;

