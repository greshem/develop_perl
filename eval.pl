#!/usr/bin/perl
#2011_03_15_13:01:33   ���ڶ�   add by greshem
#pkgconfig_makefile/pkgcfg_pc_2_perl_eval.pl ��Ŀ��. 
#eval ('print \"linux\n;\"');
eval ("1+1");
die $@ if $@;
#
#���� ������� �����Ƿ���� eval ֮�� ��һ�� PERL �ķ��� ���� guess_os �� ����. 

#_root__2010_03_12/jiulala/ Ҳ�õ���eval, ��java ������﷨ת������perl ���﷨��.  

#eval();# ������������, ������û�б�Ҫ�İ�.  

    eval {
        require 'Number::Format.pm';
    $mask= new Number::Format (  THOUSANDS_SEP=>' ', DECIMAL_POINT=>'.');
    };

die $@ if $@;
#�����ͼ���û�б�Ҫ�İ���. 

########################################################################
#webmin Ҳ�������ķ�ʽ �����û�ж�Ӧ�İ���. 

# ������ N:\xfile\stockmonkey-2.9013,   msft_6-17-8.txt , ��ʹ�� ����do �ķ�ʽ ������ eval ��������  
#

#2011_03_17_21:55:18   ������   add by greshem
do 'stat.pl'
#��ͬ�� 
eval `cat stat.pl`;
