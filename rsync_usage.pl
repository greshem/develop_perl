#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
rsync -av --exclude=.git/ rsync://rsync.samba.org/ftp/unpacked/rsync rsync


########################################################################
gentoo
 rsync --quiet --recursive --links --perms --times --devices --delete --timeout=300 rsync://rsync2.de.gentoo.org/gentoo-portage ./gentoo_rsync
 rsync  --recursive --links --perms --times --devices --delete --timeout=300 rsync://rsync2.de.gentoo.org/gentoo-portage ./gentoo_rsync    
########################################################################
passwd
/usr/bin/rsync -avR --password-file=/etc/test.pwd test@192.168.1.135::WEB2/.5/.4/.0/.4/.5/.5/.7/13950402/ /image  >> file.log

########################################################################
#cpan
mkdir /vm/CPAN
cd /vm
rsync -av --delete mirrors.ibiblio.org::CPAN CPAN/
#
#rsync://mirrors3.kernel.org/mirrors/CPAN
#
########################################################################
#rsync 常见的命令如下
##!/bin/sh
#rsync -v -a -e ssh --exclude='/proc/*' --exlude='/sys/*' CLIENT_IP:/ DISKLESSDIR/root
#rsync -auqz 192.168.3.201::rsync_gmmold $(pwd)
#rsync -auqz 192.168.3.201::qianlong /opt/qianlong/sysdata
#rsync -avz rsync://rsync.gentoo.org/gentoo-portage/ portage
#SYNC="rsync://ftp3.tsinghua.edu.cn/gentoo/gentoo-portage"
#rsync -r -n -t -p -o -g -x -v --progress --ignore-existing -u -c -l -H -D --existing --partial --numeric-ids -z -b 192.168.3.201::rsync_gmmold /tmp6
#
#
#################################
##配置文件. /etc/rsyncd.conf
#################################
#uid = nobody
#gid = nobody
#max connections = 200
#timeout = 600
#use chroot = no
#read only = yes
#pid file=/var/run/rsyncd.pid
#host_allow =192.168.3.230 
##syslog facility = local7
#log file=/var/log/rsyncd.log
##rsync config
##The 'standard' things
#[qianlong]                   
#path = /opt/qianlong/sysdata
#comment =  qianlong_data
########################

