#!/usr/bin/perl
#20100709
#mv ��shell ִ�еı�֤mv ����ȷ�ԣ� �� "/bin/delete_space_for_bash.pl " ɾ���ļ��Լ�Ŀ¼�� ��shell��ͻ���ַ��� 
use POSIX qw(strftime);
	for $each  (<*>)

	{
	#	if(-f $each )
		if($each!~/_xfile/)
		{
			$mtime=(stat($each))[9];
			$time=strftime("_xfile_%Y_%m_%d", localtime($mtime));
			mkdir($time);
			print "mv ", $each, "\t", $time,"\n";
		}
	}
