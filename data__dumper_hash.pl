#!/usr/bin/perl
#==========================================================================
#��򵥵ķ�ʽ, ��ӡ���������� ֱ�Ӿ��� perl ��̬�����ݽṹ��. 
#my %hash;
use Data::Dumper;
print Data::Dumper->Dump([\%hash]);
#==========================================================================

sub hashFromFile($)
{
	($file)=@_;
	%tmp;
	$line=1;
	open(FILE, $file) or die("open file error\n");
	foreach(<FILE>)
	{
		chomp;
		$tmp{$line}=$_;
		$line++;	
	}
	return %tmp;
}

$file="/etc/passwd";
%hash=hashFromFile($file);

print Data::Dumper->Dump([\%hash]);
