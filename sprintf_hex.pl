#!/usr/bin/perl
#print( 0x20);
#�ַ����� �������� ������, 
my $number_str=hex("0x0000030");
#my $number_str=0x0000030;
my $number=sprintf("%d", $number_str );
print $number."\n";

my $number=sprintf("0x%x", 32);
print $number."\n";

