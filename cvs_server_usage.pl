#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_01_05_ add by greshem
1. CVS 的验证数据库.  /home./cvsroot/CVSROOT/passwd 数据库里面的cvsroot 的用户， 需要注意. 
 注意  "cvsroot: no such system user" 这样的报错. 
2. 
########################################################################


#20090302, 测试. 
###########
#1.查看是否安装cvs
rpm -qa | grep cvs
#2.建立cvs用户组,便于管理cvs用户
groupadd cvs
#3.建立cvsroot用户，属于cvs组(组名必须为cvs)，根目录为/home/cvsroot，不许登陆
useradd -g cvs -s /sbin/nologin cvsroot
#4.改变/home/cvsroot的目录属性
mkdir /home/cvsroot
chmod 775 /home/cvsroot
#5.初始化cvs源代码库,此操作生成目录/home/cvsroot/CVSROOT,其下为一些初始化文件
cvs -d /home/cvsroot init
################
#q********************n密码. 
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
##以log-log2为修改的日志提交email.php
cvs -f commit -l -m 'log-log2' 'email.php' 2>&1 
##更新email.php文件.
cvs -f -q update -l -d -P  'email.php' 2>&1 
##上次的变更
cvs -f diff -U
cvs -f -n -q update -l -d -P 'bussiness/index.php' 2>&1
更新这个文件
#####################
##创建本地文件夹以下载文件
#mkdir -p '/tmp/cvs_123' && cvs -f -d '/tmp/cvs_123' init
##导出
#cd '/tmp/cvs_123' && cvs -f -d
#:pserver:q********************n@192.168.3.123:2401/home/cvsroot import -m "" webmin
#qiznhongji linux
#########################################
##导入
#cd '/tmp/cvs_123' && cvs -f -d
#:pserver:q********************n@192.168.3.123:2401/home/cvsroot checkout -P webmin
################################
碰到几个意外需要记忆一下,
假如selinux 开启的话, 是没有办法登陆进去的, 你会觉的非常的奇怪为什么,查xinetd 的日志, 
在/var/log/message里面.
假如原来的cvs  存在的话你就不能成功, 他会起原来的f8 自己安装的cvs 这套东西. 
#######################
和wincvs 的结合使用需要注意并多加学习. 

