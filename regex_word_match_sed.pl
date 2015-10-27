#!/usr/bin/perl
#word 的锚 的使用   \b 

my $str=" IN  word OUT ";

$str=~s/\bIN\b//g;
$str=~s/\bOUT\b//g;

#trim
$str=~s/^\s+//g;
$str=~s/\s+$//g;

print $str."|"; #一定是  word
