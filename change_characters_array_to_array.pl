#!/usr/bin/perl
########################################################################
#输入的字符串含有  keyword1_keyword2 这个时候 把  前面的字符串 替换成 两个字符串. 
sub expand_array_with_charset(@)
{
	(my @input)=@_;
	my @ret;
	for $each_word (@input)
	{
		@tmp=split(/[_\.+-]+/, $each_word);
		push(@ret, @tmp);
	}

	return @ret;
}

sub  testunit()
{
	#@tmp=qw(aa bb_cc__dd);
	@tmp=qw(aa bb.cc..dd  ee+eeee+ffff gggg-dddd);
	@tmp=expand_array_with_charset(@tmp);
	print (join("|", @tmp));
}

testunit();
