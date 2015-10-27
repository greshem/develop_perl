#!/usr/bin/perl
#2010_08_05_18:39:54 add by qzj
# 这里注意sub 里面传入的是 @_的数组。 
#($a, $b ,$c $d) 也要有括号 ()
test(11, 22, 333,44);
sub test($$$$)
{
	($a, $b, $c , $d)=@_;
	print "a->",$a,"\n";
	print "b->",$b,"\n";
	print "c->",$c,"\n";
	print "d->",$d,"\n";
}
