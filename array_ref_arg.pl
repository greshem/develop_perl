#!/usr/bin/perl
# array ���Դ�  �����ʱ�� ���� ������ ����һЩ. 
my @array1=qw(1 2 3 4 5 6 7 );
my @array2=qw(        5 6 7 8 9 10 );

sub test1
{
	my (@a, @b)=@_;
	print join("|", @array1)."\n";
	print join("|", @array2)."\n";
}
test1(@array1, @array2);
