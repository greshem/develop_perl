#!/usr/bin/perl
#2010_07_27_00:12:35 add by qzj
#assign to array hash constant
@a=1..100;
%a=1..100;
$a="test string";

##ref
$ref_arr=\@a;
print $a->{1};
$ref_hash=\%a;




#reset to zero;
@a=();
%a={};
$a="";

