#!/usr/bin/perl
#ͨ�������� �ķ�ʽ ����֧��  ���Ŀ¼,   
#bash: ls  /{bin,etc}/ 
#ע�� windows �²�֧��  ���������ķ�ʽ , ��֧�ִ����ŵķ�ʽ. 
@files= grep { -f } glob("/{bin,etc}/*");
foreach (@files)
{
	print $_,"\n";
}
