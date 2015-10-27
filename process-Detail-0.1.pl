#!/usr/bin/perl  
#Process-Detail-0.1.pl
#This is a script which is coded by Sujai Sojan to provide detailed information 
#about processes running in a linux machine. It has options to list the hidden 
#processes also
#Sujai Sojan <sujai@logicsupport.com>


use Switch;
$VERSION = 0.1;

$dir="/proc";
opendir(DIR,"$dir");


sub hidden
{
print "\n##########Hidden processlist###############\n\n";
foreach $pcs (readdir(DIR))
{
if($pcs =~ /(\d+)/ && $pcs =~ /\./)
{
&detailedview("$pcs");
}
}
}

sub all
{
foreach $pcs (readdir(DIR))
{
&detailedview("$pcs");
}
}

sub detailedview
{
@args=@_;
$envir="/proc/$args[0]/environ";
$stat="/proc/$args[0]/status";
open(CMD,"/proc/$args[0]/cmdline");
my @array=<CMD>;
foreach my $cmd (@array)
{
print "\n\nPID=$args[0]\n";
print "COMMAND=$cmd\n";
}

open(FILE,"<$envir");
while(<FILE>)
{
@array=split(/([A-Z]+(_|[A-Z])+\=.[^A-Z]+)/,$_);
foreach $splitted (@array)
{
if($splitted =~ /\=/)
{
print "$splitted\n";
}
}
}
open(FILESTAT,"<$stat");
while(<FILESTAT>)
{
if(/(State|PPid|Gid|Uid)/)
{
print $_;
}
}

print "\n\n\n###########################################\n\n\n";
close(FILE);
}

sub usage
{
print "\nUsage:\n-h\tFor detailed view hidden process\n-a\tFor detailed view of all processes\n-p pid\tFor detailed view of process with processid pid\n--help\tFor help\n-V\tFor checking Version\n\n ";
}
if ($#ARGV le -1)

{
  &usage;
  exit;
}
else
{
switch ($ARGV[0])
{
case "-h" { &hidden;}
case "-p" { &detailedview($ARGV[1]);}
case "-a" { &all;}
case "-V" { print "\nProcess-Detail Version 0.1\n\n" ;}
case "--help" { &usage;}
else { &usage;}
}
}

=head1 NAME

Process-Detail

=head1 AUTHOR
Sujai Sojan <sujai@logicsupport.com>

=head1 DESCRIPTION

This is a script which is coded by Sujai Sojan to provide detailed 
information about processes running in a linux machine.
It has options to list the hidden processes also



=head1 PREREQUISITES

use Switch;


=pod OSNAMES

Linux

=pod SCRIPT CATEGORIES

Unix/System_administration

=cut



