#!/usr/bin/perl
#2012_07_02_16:37:59   ����һ   add by greshem
# �� lslpp -f  fileset �� �ٻ�ȡ ����� ·��,  link  �� sed 's/->/\r/g' �ķ�ʽ������, ��ȡ ^/ ��ͷ���ַ���  
# Ӧ�÷ָ�ɺ���, ����û��.
$file=shift or die("Usage: $0 help.txt\n");
open(FILE, $file) or die("open file error\n");

%words={};
while(<FILE>)
{
	chomp;
	@array=split(/\s+/, $_);
	for $word (@array)
	{
		if($words{$word})
		{
		 $words{$word}++; #,"\n";
		}
		else
		{
		 $words{$word}=1; #,"\n";
		}
	}
}
close(FILE);



open(OUTPUT, "> $file.pathlist\n");
@last=grep {/^\//} (keys(%words));
foreach (@last)
{
	if($_!~/\/usr\/lib\/objrepos$/ && $_!~/\/etc\/objrepos$/)
	{
		print OUTPUT  $_,"\n";
	}
}
close(OUTPUT);
