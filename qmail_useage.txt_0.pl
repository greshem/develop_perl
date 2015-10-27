#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
20100330. 
1. mail -s "testmail" root@yecha.com < /etc/passwd  
   发送邮件。 
2. vchkcheck 的时候， 一定把内部的 MAILDIR 的环境变量， 变化掉了。 
3. qmail-local.c 投递的时候  对于 对应的/home/vpopmail/domains里面 至少  xx7 权限是不允许的， 对其他用户是不能用写权限的， 他会进行检查的， 对于 .qmail 可以写的也会 DIE并退出掉， 导致邮件的堆积。 
把 /var/log/qmail/current 最后的错误找到， 并 把涉及到的 strerr_die4sys 注释掉， make 之后， 
copy  qmail-local 到/var/qmail/bin 就可以了。 
4.  /services 默认的daemon-tools 会自动 默认扫描这个目录下的可执行的文件并进行执行， 
    qmail-pop3d -> /var/qmail/supervise/qmail-pop3d
    所以想启动的 pop3d 的时候， 可以 把 /var/qmail/supervise/qmail-pop3d, 链接过去。 
5. php.ini 里面的插入的  sendmail -i -t < aaa.eml  
   对应把 
 sendmail_path = /usr/sbin/sendmail -t -i
 sendmail_path = /usr/sbin/sendmail 
 会造成失败的。 

20100407
建立用户一定要先建立域名
0. ./vadddomain  qianlong2.net
1. ./vdeldomain  qianlong2.net 删除
2. 建立用户， 
	./vadduser  qianlong@qianlong2.net 输入密码就是了。 
6. 公司内部的人员全部导入， 并OPPOM 进行邮件群发的功能测试。 
######
20100407
1. vpopmail不能读取文件的问题， 
  root/netqmail-1.05/open_append.c
  int open_append(fn) char *fn;
{ return open(fn,O_WRONLY | O_NDELAY | O_APPEND | O_CREAT,0600); }, 0600 修改成 0666. 

2. qmail 保证自己一直运行的方式。 
SV:123456:respawn:/command/svscanboot
本来 svscanboot 也是每五秒检查自己的要检测的目录下的执行程序， 假如没有启动的话， 自己让他启动， 所以总是杀不死QMAIL 的。 
3. 

#2010_09_20_23:40:14 add by greshem
1. http://192.168.0.234/php_webmail/igenus/index.php
   web的前台页面， 可以验证整个邮件系统是否正确。 
2. pdns 缓存DNS记录的， 做一个DNS的域名的CACHE服务器。 
