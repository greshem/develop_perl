#!/usr/bin/perl
%hash;
$hash{'name'}=[1..10];
$hash{'company'}=[];;
push(@{$hash{'company'}}, "baidu");
push(@{$hash{'company'}}, "baidu");
push(@{$hash{'company'}}, "baidu");
push(@{$hash{'company'}}, "baidu");
push(@{$hash{'company'}}, "baidu");
push(@{$hash{'company'}}, "baidu");
push(@{$hash{'company'}}, "baidu");

print $hash{'company'}[0];



use Data::Dumper;
print Data::Dumper->Dump([\%hash]);

