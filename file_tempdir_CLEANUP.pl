use File::Temp qw(tempdir);
my $TMP_DIR = tempdir(CLEANUP=>1);
#my $TMP_DIR = tempdir(CLEANUP=>0);

#Ѱ�� /usr/bin/api-sanity-checker 
#��ʱĿ¼���ǻ���յ� ԭ����   CLEANUP=>1  ��Ե��.
#����:  3h 

print $TMP_DIR."\n";

