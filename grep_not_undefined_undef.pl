#!/usr/bin/perl
#2011_03_15_22:38:14   ���ڶ�   add by greshem

@array=split(/\s+/, "  bbb cc dd ee ff");
#array ������undef �Ķ��� 
$string= "  0  0 0 bbb cc dd ee ff";;;;
@array=split(/\s+/, $string );
@all_defined=grep{$_;} @array;
#���ʱ��  ͨ��  
#�����Ķ������� �ж����. 

#==========================================================================
$string= "  0  0 0 bbb cc dd ee ff";;;;
@array=split(/\s+/, $string );
@all_defined=grep{$_;} @array;
#��grep ����ģ� ��ʱ�� ����Ϊ0 , ��� �� perl �������, ����� undef �� �ο� /etc/nwserv.conf �ļ�. 
#���� ����֮ǰ�� $_=~s/^\s+//g; ǰ��Ŀո��޳���. 
