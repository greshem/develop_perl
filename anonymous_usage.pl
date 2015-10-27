#!/usr/bin/perl 

#定义匿名函数：

*anonymous_func = sub { printf("I'm an anonymous function\n"); } ;
&anonymous_func();
#这样我们就可以通过 &anonymous_func来进行调用 了。



#定义匿名数组：

my($anonymous_array_ref) = [ 1, 2, 3 ];
$anonymous_array_ref->[0];

#==========================================================================
my @confs=(); #置空.


#定义匿名列表 hash ：

my($anonymous_hash_ref) = { 'A' => 'Apple', 'B' => 'Boy' };
$anonymous_hash_ref->{'A'};
