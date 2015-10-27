#!/usr/bin/perl
#2011_03_22_22:43:01   星期二   add by greshem
# 1. syslinux 需要重新拷贝一下， 光盘包里面没有
# 2.  perl 的md5 的 算法， syslinux依赖， 需要 从网上下来。 
# 
# 光盘全部 qloop.sh /tmp2/f8_i386.iso 
# cd dir 
# cp -a -r . /tmp2/f8_distrubtion/  全部拷贝。 
# 
# 然后在createrepo . 
# /bin/livecd_f8_kickstart.pl  生成 output.ks  
# yum install livecd-tools
# livecd-creator -c output.ks
# /var/tmp/livecd-creator-xxxxx 生成数据目录. 
# livecd-tools 会把所有的包 都安装到 上面的目录， 但是这个目录是不固定的， 
# 每次都要安装 几百个包 很麻烦。
# 需要修改一下 livecd-tools 的 输出目录 并写死掉 
########################################################################
#整个文件操作的过程如下. 
# rpm -> localfs
# localfs-> ext3fs.img
# ext3fs.img -> squashfs
# squashfs->mkisofs
# 很是麻烦， 每一步都精简一下. 
########################################################################
# kudzu py indent
# rhpl  py indent 
# livecd-tools 需要修改， 把他的生成的目录 弄成唯一.  现在是 /var/tmp/image-creator-xxxx 
foreach (<DATA>)
{
	print $_;
}
__DATA__
lang en_US.UTF-8
keyboard us
timezone US/Eastern
auth --useshadow --enablemd5
selinux --disabled
firewall --disabled
part / --size 1024

repo --name=development --baseurl=file:///tmp2/f8_distrubtion/
#--mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=rawhide&arch=$basearch


%packages
#@core
bash
kernel
passwd
policycoreutils
chkconfig
authconfig
rootfiles
#自动分配ip.
dhclient
#通过ssh 登陆
openssh
openssh-server
#vim 必备, 否则编辑文件非常方便.
vim-minimal
vim-common
vim-enhanced
openssh-clients
#调试用.
lsof
#传文件
vsftpd
dialog
#通过livecd 修复grub.
grub
#mkfs.ext3
e2fsprogs
#处理device-mapper
lvm2
#nfs 挂载
nfs-utils
#解压缩
bzip2
#ntfs 文件挂载, 修复windows 系统.
ntfs-3g
ntfsprogs
#网络环境扫描.
nmap
binutils
#文件判断.
file
strace
# 查看硬件.
pciutils
# 处理硬盘,磁盘设备.
hdparm
# framebuffer 设备
fbset
#网卡设备.
ethtool
#sshfs 文件系统挂载.
fuse
initscripts
iptables
#通过网路进行下载.
wget
#常用的脚本 qloop 等. 
#qianlong-scirpts
man


%end

