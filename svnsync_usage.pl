#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash
#2011_06_01_   ������   add by huanghaibo

#svnsync��Subversion���ݰ汾��ĺù���
#���Ľ�������svnsync��ͬ���汾�⣬�ﵽ���ݰ汾���Ŀ�ģ���������ҪrootȨ�ޣ�
#1. ������  ������Ŀ���
#$project="netware_emulator";
project="develop_wxwidgets";

mkdir /tmp/svn
svnadmin create /tmp/svn/$project

#2���޸�Ŀ���Ľű�pre-revprop-change
#����/tmp/svn/$project/hooks/
cd /tmp/svn/$project/hooks/
cp pre-revprop-change.tmpl  pre-revprop-change
# vi pre-revprop-change
#     REPOS="$1"
#     REV="$2"
#     USER="$3"
#     PROPNAME="$4"
#     ACTION="$5"
#     if [ "$ACTION" = "M" -a "$PROPNAME" = "svn:log" ]; then exit 0; fi
#     echo "Changing revision properties other than svn:log is prohibited" >&2
#     exit 1
#ԭ�ű�����˼������޸ĵ���svn:log���ԣ��������޸ģ�����0�����򣬲���������1
#����Ҫ������Ϊ�����޸����е����ԣ��ڽű���ֱ�ӷ���0���µĽű����£�
#    exit 0;
#ע�� �ǰ� ��� һ�� exit 1 �滻��
#	exit 0 
#������ �������ļ��滻�� exit 0 
sed -i 's/exit 1/exit 0/g'   pre-revprop-change
sed -i 's/exit  1/exit 0/g'   pre-revprop-change
chmod +x  pre-revprop-change



#3����ʼ��
svnsync init file:///tmp/svn/$project http://192.168.1.90/svn/$project/
#(��Ҫ��trunk)
#ע�⣺�������svnsync: �汾���Ըı� �� pre-revprop-change ��������(�˳����� 255) û�����������
#����԰�pre-revprop-change�ļ����Ͽ�ִ��Ȩ�ޡ�

chmod  +x pre-revprop-change
#��ʱ����Ҫ��һ��.

#4��ͬ��
svnsync sync file:///tmp/svn/$project
#Ȼ�� ��  $project ������  �Լ���svn �ķ�����Ŀ¼��, ������ /home/svn/netware_emulator �Ϳ���  
#ÿ�յ�cron ���. 
#svnsync sync file:///home/svn/netware_emulator 
#����ʹ ͬ��ÿ�յ�  netware_emulator 


########################################################################
project="develop_wxwidgets";
mkdir /tmp/svn

svnadmin create /tmp/svn/$project
cd /tmp/svn/$project/hooks/
cp pre-revprop-change.tmpl  pre-revprop-change
sed -i 's/exit 1/exit 0/g'   pre-revprop-change
sed -i 's/exit  1/exit 0/g'   pre-revprop-change
chmod +x  pre-revprop-change


svnsync init file:///tmp/svn/$project http://192.168.1.90/svn/$project/
svnsync sync file:///tmp/svn/$project

