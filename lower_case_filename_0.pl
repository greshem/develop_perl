#!/usr/bin/perl
#2010_08_21_21:26:14 add by qzj
#�ļ���lowercase ֮�� �����ļ������� �����ǣ� �Լ��ֶ�ȥ����� 
for (glob("*"))
{
	if(! -f lc($_))
	{
		print "mv ",$_,"\t", lc($_),"\n";
	}
}
