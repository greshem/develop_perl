#!/usr/bin/perl
for(1..100)
{
	unless ($_<20)
	{
	print $_."\n";
	} 
}

#�� ����ķ�ʽ�ǵȼ۵�  ��Ϊ�� ��ʡ��, do nothing �Ĵ���. 
for(1..100)
{
	if($_>20)
	{
		#do nothing 
	}
	else
	{
	print $_."\n";
	}
}
