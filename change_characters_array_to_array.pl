#!/usr/bin/perl
########################################################################
#������ַ�������  keyword1_keyword2 ���ʱ�� ��  ǰ����ַ��� �滻�� �����ַ���. 
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
