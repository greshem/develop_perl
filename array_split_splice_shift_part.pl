#!/usr/bin/perl
#�� n��Ԫ�� ����ָ��  m��һ��� , 

@a=(1..104);

$length=10;

while(scalar(@a) != 0)
{
	@tmp=splice(@a, 0, $length);
	print join("\t", @tmp)."\n";
	#print join("\t", @a)."\n";
}
