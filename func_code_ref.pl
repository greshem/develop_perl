#!/usr/bin/perl
#2011_06_08_10:40:57   ������   add by greshem
sub test($)
{
	(my $line)=@_;
	print "this is fun $line";
}
# ������Ӧ���� \& ��д������
# \$ ��д��, ע���� 
$fun_ptr=\&test;
if(ref($fun_ptr) ne ("CODE"))
{
	die("not a fun ptr \n");
}

$fun_ptr->(" name");
