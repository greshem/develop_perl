#!/usr/bin/perl
#2011_07_05_10:21:25   ���ڶ�   add by greshem
#windows ��û��cygwin ������ĺ�����ʵ��.
sub shell_grep($$)
{
	(my $pattern, $file)=@_;
	open(FILE, $file) or die("Open file $file error\n");
	my $count=undef;
	for(<FILE>)
	{
		if($_=~/$pattern/)
		{
			$count++;
		}
	}
	return $count;
}
$pattern=shift or die("Usage: $0 pattern file \n");
$file=shift or die("Usage: $0 pattern file \n");
if(! -f $file)
{
	die("$file is not a file\n");
}
$count=shell_grep($pattern, $file);
exit($count%255);
