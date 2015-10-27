#!/usr/bin/perl 
#Note: this file in gb2312 encode
#		so use this function  
#		encode("utf-8", decode("gb2312", $_));  

#use strict;
#use warnings;
use Encode;
$lang= $ENV{"LANG"};
for(<DATA>)
{
	if($lang=~/utf8/i)
	{
		$to=encode("utf-8", decode("gb2312", $_));  
		print $to;
	}
	else
	{
		print $_;
	}
}

__DATA__
[root@linux ~]# history
66 man rm
67 alias
68 man history
69 history
[root@linux ~]# !66 <==执行第 66 笔指令
[root@linux ~]# !! <==执行上一个指令，本例中亦即 !66
[root@linux ~]# !al <==执行最近以 al 为开头的指令(上头列出的第 67 个)

经过上面的介绍，乎？历史命令用法可多了！如果我想要执行上一个指令， 除了使用上下键之外，我可以直接以『 !! 』 来下达上个指令的内容，此外， 我也可以直接选择下达第 n 个指令，『 !n 』来执行，也可以使用指令标头，例如 『 !vi 』来执行最近指令开头是 vi 的指令列！
#
