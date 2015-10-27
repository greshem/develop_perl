#!/usr/bin/perl
#2011_04_01_15:59:07   星期五   add by greshem
#用来生成 string 的代码  用来单元测试的 时候 进行断言. 
#fixme  对于 '[]=-!~,.//., 这些特殊符号的处理. 
$file=shift  or die("Usage: $0 input_file\n");

open(FILE, $file) or die("open file error\n");
print "string file_str;\n";
for(<FILE>)
{
		chomp;
		print "file_str+=\"".$_."\\n\"".";\n";
}
