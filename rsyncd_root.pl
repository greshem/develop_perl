#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#2011_03_22_11:23:41   ���ڶ�   add by greshem
#����ͬ��root Ŀ¼
#  �ͻ�������� ����. rsyn -auqz 192.168.1.73::root /root/
########################################################################
#�����Ƿ���˵����� /etc/rsyncd.conf
id = root
gid = root
max connections = 200
timeout = 600
use chroot = no
read only = yes
pid file=/var/run/rsyncd.pid
host_allow =192.168.1.32
#syslog facility = local7
log file=/var/log/rsyncd.log
#rsync config
#The 'standard' things
[root]                   
path = /root
comment =  greshem_data

