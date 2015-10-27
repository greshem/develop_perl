#!/usr/bin/perl 
#use strict;
#use warnings;


use Win32::Registry;
my $tips;
$::HKEY_LOCAL_MACHINE->Open("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Tips", $tips) or die "Can't open tips: $^E";
my ($type, $value);
$tips->QueryValueEx("18", $type, $value) or die "No tip #18: $^E";
print "Here's a tip: $value\n";

# $HKEY_CLASSES_ROOT
# $HKEY_CURRENT_USER
# $HKEY_LOCAL_MACHINE
# $HKEY_USERS
# $HKEY_PERFORMANCE_DATA
# $HKEY_CURRENT_CONFIG
# $HKEY_DYN_DATA
