#!/usr/bin/perl
#2012_07_02_16:37:59   星期一   add by greshem
# 从 lslpp -f  fileset 中 再获取 里面的 路径,  link  用 sed 's/->/\r/g' 的方式挑换掉, 提取 ^/ 开头的字符串  
# 应该分割成函数, 现在没做.
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
