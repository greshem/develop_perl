#!/usr/bin/perl

for (1..1000)
{
	$number=sprintf("%04x", $_);
	#$number=sprintf("%03d", $_);
	print $number."\n";
}

#���������Ҳ ��ɿɱ��.
$range=10;
$pattern="%0".$range."d";
print $number=sprintf($pattern, 100);

# �� * ���������.
print "\n";
print $number=sprintf("%0*d", 8, 100);
