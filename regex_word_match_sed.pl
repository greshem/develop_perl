#!/usr/bin/perl
#word ��ê ��ʹ��   \b 

my $str=" IN  word OUT ";

$str=~s/\bIN\b//g;
$str=~s/\bOUT\b//g;

#trim
$str=~s/^\s+//g;
$str=~s/\s+$//g;

print $str."|"; #һ����  word
