#!/usr/bin/perl
#2010_12_21_15:07:48 add by greshem
# 输出文件到  /etc/sysconfig/bash-prompt-xterm
open(FILE, ">  /etc/sysconfig/bash-prompt-xterm")or die("open file error");

foreach (<DATA>)
{
	print $_;
	print FILE  $_;
}
close(FILE);
__DATA__
echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}"; echo -ne "\007";touch $(pwd);  echo $(pwd)>> /root/bash_pwd

