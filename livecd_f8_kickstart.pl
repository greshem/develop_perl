#!/usr/bin/perl
#2011_03_22_22:43:01   ���ڶ�   add by greshem
# 1. syslinux ��Ҫ���¿���һ�£� ���̰�����û��
# 2.  perl ��md5 �� �㷨�� syslinux������ ��Ҫ ������������ 
# 
# ����ȫ�� qloop.sh /tmp2/f8_i386.iso 
# cd dir 
# cp -a -r . /tmp2/f8_distrubtion/  ȫ�������� 
# 
# Ȼ����createrepo . 
# /bin/livecd_f8_kickstart.pl  ���� output.ks  
# yum install livecd-tools
# livecd-creator -c output.ks
# /var/tmp/livecd-creator-xxxxx ��������Ŀ¼. 
# livecd-tools ������еİ� ����װ�� �����Ŀ¼�� �������Ŀ¼�ǲ��̶��ģ� 
# ÿ�ζ�Ҫ��װ ���ٸ��� ���鷳��
# ��Ҫ�޸�һ�� livecd-tools �� ���Ŀ¼ ��д���� 
########################################################################
#�����ļ������Ĺ�������. 
# rpm -> localfs
# localfs-> ext3fs.img
# ext3fs.img -> squashfs
# squashfs->mkisofs
# �����鷳�� ÿһ��������һ��. 
########################################################################
# kudzu py indent
# rhpl  py indent 
# livecd-tools ��Ҫ�޸ģ� ���������ɵ�Ŀ¼ Ū��Ψһ.  ������ /var/tmp/image-creator-xxxx 
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
#�Զ�����ip.
dhclient
#ͨ��ssh ��½
openssh
openssh-server
#vim �ر�, ����༭�ļ��ǳ�����.
vim-minimal
vim-common
vim-enhanced
openssh-clients
#������.
lsof
#���ļ�
vsftpd
dialog
#ͨ��livecd �޸�grub.
grub
#mkfs.ext3
e2fsprogs
#����device-mapper
lvm2
#nfs ����
nfs-utils
#��ѹ��
bzip2
#ntfs �ļ�����, �޸�windows ϵͳ.
ntfs-3g
ntfsprogs
#���绷��ɨ��.
nmap
binutils
#�ļ��ж�.
file
strace
# �鿴Ӳ��.
pciutils
# ����Ӳ��,�����豸.
hdparm
# framebuffer �豸
fbset
#�����豸.
ethtool
#sshfs �ļ�ϵͳ����.
fuse
initscripts
iptables
#ͨ����·��������.
wget
#���õĽű� qloop ��. 
#qianlong-scirpts
man


%end

