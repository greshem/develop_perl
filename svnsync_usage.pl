#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash
#2011_06_01_   星期三   add by huanghaibo

#svnsync：Subversion备份版本库的好工具
#本文介绍利用svnsync来同步版本库，达到备份版本库的目的（本操作需要root权限）
#1. 本机上  ，创建目标库
#$project="netware_emulator";
project="develop_wxwidgets";

mkdir /tmp/svn
svnadmin create /tmp/svn/$project

#2、修改目标库的脚本pre-revprop-change
#进入/tmp/svn/$project/hooks/
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
#原脚本的意思是如果修改的是svn:log属性，将允许修改，返回0；否则，不允许，返回1
#我们要将它改为允许修改所有的属性，在脚本中直接返回0，新的脚本如下：
#    exit 0;
#注意 是吧 最后 一行 exit 1 替换成
#	exit 0 
#而不是 把整个文件替换成 exit 0 
sed -i 's/exit 1/exit 0/g'   pre-revprop-change
sed -i 's/exit  1/exit 0/g'   pre-revprop-change
chmod +x  pre-revprop-change



#3、初始化
svnsync init file:///tmp/svn/$project http://192.168.1.90/svn/$project/
#(不要跟trunk)
#注意：如果报“svnsync: 版本属性改变 被 pre-revprop-change 钩子阻塞(退出代码 255) 没有输出”错误
#你可以把pre-revprop-change文件加上可执行权限。

chmod  +x pre-revprop-change
#有时候需要这一步.

#4、同步
svnsync sync file:///tmp/svn/$project
#然后 把  $project 拷贝到  自己的svn 的服务器目录下, 命名成 /home/svn/netware_emulator 就可以  
#每日的cron 添加. 
#svnsync sync file:///home/svn/netware_emulator 
#可以使 同步每日的  netware_emulator 


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

