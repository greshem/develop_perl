#!/usr/bin/perl
# ����д�Ĳ���̫�ã� __DATA__�� __DATA__ �е㸴����, ���õ���perl  ��Template. 
# �����Ǽ����Ĺ��ȵ�ʹ����., �õ��� û�дﵽ����ĸ��Ӷȵ� ����.  

use Template;
$file=shift or warn("Usage: $0 file file no exists will create \n");

my $config=undef;

my $template=Template->new();
if(! -f $file)
{
	#open(FILE, ">".$file) or die("create file error $!\n");
}
else
{
	open(FILE, $file) or die("open file error $!\n");
}

#���ļ������붼ת���ڴ����� array��.
@array= (<FILE>);

my $var={
	array=>\@array,
};

#__DATA__ �����ѭ��ʵ��˵, ��@array ����Ķ�������ӡһ��. 
$template->process(\*DATA, $var, $file.".py") || die $template ->error();

__DATA__
#coding:gbk 
file="""[% FOREACH line IN array %][% line %][%END%]"""
print file;
