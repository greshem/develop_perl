#!/usr/bin/perl 

#��������������

*anonymous_func = sub { printf("I'm an anonymous function\n"); } ;
&anonymous_func();
#�������ǾͿ���ͨ�� &anonymous_func�����е��� �ˡ�



#�����������飺

my($anonymous_array_ref) = [ 1, 2, 3 ];
$anonymous_array_ref->[0];

#==========================================================================
my @confs=(); #�ÿ�.


#���������б� hash ��

my($anonymous_hash_ref) = { 'A' => 'Apple', 'B' => 'Boy' };
$anonymous_hash_ref->{'A'};
