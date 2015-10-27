#!/usr/bin/perl

#print \*DATA;
foreach (<DATA>)
{
	print $_;
}

#print \*DATA;
print "#############\n";
#seek(DATA, 0, SEEK_SET);
foreach (<DATA>)
{
	print $_;
}

__DATA__
bbbbb1
bbbbb2
bbbbr3
bbbbb4
bbbbb5
