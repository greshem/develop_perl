#!/usr/bin/perl
#�����ж����Զ���.
	open(FILE, "/etc/passwd");
	$/=undef;
	$html=(<FILE>);
	close(FILE);
	$/="\n";

print $html;

#==========================================================================
#ֻ�ܶ���һ�� 
	open(FILE, "/etc/passwd");
	$html=(<FILE>);
	close(FILE);
print "#================\n";
print $html;

