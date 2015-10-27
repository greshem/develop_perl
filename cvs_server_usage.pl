#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_01_05_ add by greshem
1. CVS ����֤���ݿ�.  /home./cvsroot/CVSROOT/passwd ���ݿ������cvsroot ���û��� ��Ҫע��. 
 ע��  "cvsroot: no such system user" �����ı���. 
2. 
########################################################################


#20090302, ����. 
###########
#1.�鿴�Ƿ�װcvs
rpm -qa | grep cvs
#2.����cvs�û���,���ڹ���cvs�û�
groupadd cvs
#3.����cvsroot�û�������cvs��(��������Ϊcvs)����Ŀ¼Ϊ/home/cvsroot�������½
useradd -g cvs -s /sbin/nologin cvsroot
#4.�ı�/home/cvsroot��Ŀ¼����
mkdir /home/cvsroot
chmod 775 /home/cvsroot
#5.��ʼ��cvsԴ�����,�˲�������Ŀ¼/home/cvsroot/CVSROOT,����ΪһЩ��ʼ���ļ�
cvs -d /home/cvsroot init
################
#q********************n����. 
cat >/home/cvsroot/CVSROOT/passwd <<EOF
q********************n:XwyZG3rFC2o4Q:cvsroot
chenxu:XwyZG3rFC2o4Q:cvsroot
EOF
#######################
if [ ! -f  /etc/xinetd.d/cvspserver ];then
cat > /etc/xinetd.d/cvspserver <<EOF
service cvspserver 
{ 
cvsroot: no such system user
disable = no 
flags = REUSE 
socket_type = stream 
wait = no 
user = root 
server = /usr/bin/cvs 
server_args = -f --allow-root=/home/cvsroot pserver 
log_on_failure += USERID 
} 
EOF
fi
############
export CVSROOT=:pserver:q********************n@192.168.3.206:/home/cvsroot
export CVSROOT=:pserver:q********************n@192.168.3.234:/home/cvsroot
export CVSROOT=:pserver:q********************n@192.168.0.234:/home/cvsroot
##############
cvs login
cvs import -m "this is a cvstest project" cvstest v_0_0_1 start

cvs checkout cvstest
cvs -f commit -l -m 'qiznzhongjie' 'email.php' 2>&1 
##��log-log2Ϊ�޸ĵ���־�ύemail.php
cvs -f commit -l -m 'log-log2' 'email.php' 2>&1 
##����email.php�ļ�.
cvs -f -q update -l -d -P  'email.php' 2>&1 
##�ϴεı��
cvs -f diff -U
cvs -f -n -q update -l -d -P 'bussiness/index.php' 2>&1
��������ļ�
#####################
##���������ļ����������ļ�
#mkdir -p '/tmp/cvs_123' && cvs -f -d '/tmp/cvs_123' init
##����
#cd '/tmp/cvs_123' && cvs -f -d
#:pserver:q********************n@192.168.3.123:2401/home/cvsroot import -m "" webmin
#qiznhongji linux
#########################################
##����
#cd '/tmp/cvs_123' && cvs -f -d
#:pserver:q********************n@192.168.3.123:2401/home/cvsroot checkout -P webmin
################################
��������������Ҫ����һ��,
����selinux �����Ļ�, ��û�а취��½��ȥ��, �����ķǳ������Ϊʲô,��xinetd ����־, 
��/var/log/message����.
����ԭ����cvs  ���ڵĻ���Ͳ��ܳɹ�, ������ԭ����f8 �Լ���װ��cvs ���׶���. 
#######################
��wincvs �Ľ��ʹ����Ҫע�Ⲣ���ѧϰ. 

