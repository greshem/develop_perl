#!/usr/bin/perl
#2010_08_05_18:39:54 add by qzj
# ����ע��sub ���洫����� @_�����顣 
#($a, $b ,$c $d) ҲҪ������ ()
test(11, 22, 333,44);
sub test($$$$)
{
	($a, $b, $c , $d)=@_;
	print "a->",$a,"\n";
	print "b->",$b,"\n";
	print "c->",$c,"\n";
	print "d->",$d,"\n";
}
