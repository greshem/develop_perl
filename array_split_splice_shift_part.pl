#!/usr/bin/perl
#把 n个元素 数组分割成  m个一组的 , 

@a=(1..104);

$length=10;

while(scalar(@a) != 0)
{
	@tmp=splice(@a, 0, $length);
	print join("\t", @tmp)."\n";
	#print join("\t", @a)."\n";
}
