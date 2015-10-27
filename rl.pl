#!/usr/bin/perl
use List::Util qw(shuffle);
use Data::Dumper;

#@cards=shuffle 0..100;
#print Dumper(@cards);
#print @cards;
my @array;
$name=shift;
if( defined($name) )
{
	#$file=STDIN;	
	open(FILE, $name)or die("open file error\n");;
	#$STDIN=$FILE;
	#select(FILE);
	@array=<FILE>;
}
else
{
	#select STDIN;
	@array=<STDIN>;
}

print shuffle(@array);
