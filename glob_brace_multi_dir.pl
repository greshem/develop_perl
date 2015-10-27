#!/usr/bin/perl
#通过大括弧 的方式 可以支持  多个目录,   
#bash: ls  /{bin,etc}/ 
#注意 windows 下不支持  下面这样的方式 , 不支持大括号的方式. 
@files= grep { -f } glob("/{bin,etc}/*");
foreach (@files)
{
	print $_,"\n";
}
