#!/usr/bin/perl
#2011_04_01_15:59:07   ������   add by greshem
#�������� string �Ĵ���  ������Ԫ���Ե� ʱ�� ���ж���. 
#fixme  ���� '[]=-!~,.//., ��Щ������ŵĴ���. 
$file=shift  or die("Usage: $0 input_file\n");

open(FILE, $file) or die("open file error\n");
print "string file_str;\n";
for(<FILE>)
{
		chomp;
		print "file_str+=\"".$_."\\n\"".";\n";
}
