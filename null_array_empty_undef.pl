#!/usr/bin/perl
@cur_wks=(); #空数组 
%cur_wks={}; #空hash,  匿名引用hash
@cur_wks=[]; #引用  数组, 匿名引用 

*anonymous_func = sub {}; #匿名函数.
&anonymous_func();

@cur_wks=undef;



