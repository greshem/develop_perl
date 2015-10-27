#!/usr/bin/perl
do("/bin/shell_common_cmd_exec_or_die.pl");
#qmail yet_another_domain.com 完全安装文档
#die("没有测试退出\n");
#1.检查DNS
sub check_dns()
{  
# 在开始之前，确保正确设置了DNS MX记录.例如使用\"yet_another_domain.com\"作为邮件域，对MX记录进行测试：
# 在Linux下：
# host -t mx yet_another_domain.com
# domain.com. mail is handled by 10 mail.yet_another_domain.com.
# host -t a mail.yet_another_domain.com
# 11698666.domain.com. has address xxx.xxx.xxx.xxx 
# 在Windows下：
# C:\>;nslookup
# Default Server: ns.xxxx.com
# Address: xxx.xxx.xxx.xxx
# >;set type=mx
# >;yet_another_domain.com
# yet_another_domain.com MX preference = 10, mail exchanger = mail.yet_another_domain.com
# mail.yet_another_domain.com internet address = xxx.xxx.xxx.xxx
# >;exit 
}

#2 RHEL 4.0 RPM安装环境
sub check_rpm()
{
	system_exec_must_success_or_die("rpm -q httpd php php-mysql mysql mysql-server mysql-devel gdbm gdbm-devel openssl openssl-devel stunnel krb5-devel");
}
#服务程序软件包
#Servers
# Web Server:加选php-mysql
# Mail Server:加选spamassassin，其它清除
# FTP Server:Vsftpd
# MySQL Database:加选mysql-bench/mysql-server/php-mysql
# 

sub mysql_passwd()
{
#4.MYSQL 环境
#设置mysql root口令： 
#system_exec_must_success_or_die("mysqladmin -u root password zoneisgod #(设置你的密码) ");
#mysql的头文件和库文件分别在/usr/include/mysql和/usr/lib/mysql。
}

#4.卸载已有的邮件系统 

#确认没有SMTP/POP/IMAP服务在运行:
sub uninstall_sendmail()
{
	system_exec_must_success_or_die("/etc/init.d/sendmail stop");
	system_exec_must_success_or_die("lsof -i:25  || true ");
	system_exec_must_success_or_die("lsof -i:110 ||true ");
	system_exec_must_success_or_die("lsof -i:143 || true ");
	system_exec_must_success_or_die("service sendmail stop");
	#删除已有的SMTP/POP/IMAP软件:
	#system_exec_must_success_or_die("rpm -e --nodeps sendmail");
	#\\注意postfix 也得删除否则造成用户建立错误
}
#------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------

#创建/home/pkg/目录
sub install_netqmail()
{
	if( ! -d "/home/pkg")
	{
		system_exec_must_success_or_die("mkdir /home/pkg");
	}
	#上传QMAIL软件包

	#解压缩netqmail-1.05.tar.gz
	system_exec_must_success_or_die("chmod 755 -R /home/pkg");
	#system_exec_must_success_or_die("cd /home/pkg/");
	chdir_must_success_or_die("/home/");
	system_exec_must_success_or_die("tar -xzvf qmail_20100407_tongcheng.tar.gz  -C /");


	chdir_must_success_or_die("/home/pkg/");
	system_exec_must_success_or_die("cd /home/pkg &&  tar -xzvf netqmail-1.05.tar.gz");
	#system_exec_must_success_or_die("cd /home/pkg/netqmail-1.05");
	chdir_must_success_or_die("/home/pkg/netqmail-1.05/");
	system_exec_must_success_or_die("./collate.sh");
}
##注意：./collate.sh这一步不要忘

#______________________________________________________________
#安装daemontools 

#daemontools是一个收集管理UNIX进程的工具.用它来监听qmail-send,qmail-smtpd,qmail-pop3d.
#参考：http://cr.yp.to/daemontools.html 
#安装：
sub install_daemontools()
{
system_exec_must_success_or_die("cd /home/pkg");
system_exec_must_success_or_die("tar -zxvf daemontools-0.76.tar.gz");
system_exec_must_success_or_die("cd admin/daemontools-0.76");
system_exec_must_success_or_die("patch -p1 < /home/pkg/netqmail-1.05/other-patches/daemontools-0.76.errno.patch");
system_exec_must_success_or_die("package/install ");
# 验证daemontools已经正常运行：
system_exec_must_success_or_die("sleep 5");
system_exec_must_success_or_die("ps ax | grep svscan ");
}

# 安装ucspi-tcp 
# 
# ucspi-tcp软件包由一组工具组成。它们用来简单的建立客户机－服务器tcp后台程序。TcpServer是一个比inetd安全性更好的选择。它内建有基于规则的连接控制，能完善地在达到预定义的最大系统负载时将连接推迟，这点比 inetd好。Tcpserver也被推荐与qmail一同使用，因为它们是同一个作者编的程序。
# 
# 参考：http://cr.yp.to/ucspi-tcp.html
#安装：
sub install_ucspi()
{
	system_exec_must_success_or_die("cd /home/pkg");
	system_exec_must_success_or_die("tar zxvf ucspi-tcp-0.88.tar.gz");
	system_exec_must_success_or_die("cd ucspi-tcp-0.88");
	chdir_must_success_or_die("/home/pkg/ucspi-tcp-0.88");
	system_exec_must_success_or_die("patch -p1 < ../ucspi-tcp-0.88.errno.patch ");
	system_exec_must_success_or_die("make");
	system_exec_must_success_or_die("make setup check ");
}

#安装qmail 
#参考：http://www.qmail.org  http://www.lifewithqmail.org/
#这个toaster补丁，是下面这几个补丁的组合:
#smtp auth （SMTP认证）
#spf （发信人DNS检查）
#qmail-queue （如果要使用病毒扫描引擎则需要这个补丁）
#maildir++ patch 
#support oversize dns packets (not necessary if you use dnscache) 
#chkuser （检查本地vpopmail用户表，信头的语法，这个补丁需要在安装vpopmail后被安装。）
#spam throttle 
#qregex （匹配badmailfrom和badmailto文件里的规则）
#big concurrency (set the spawn limit above 255) 

#安装:

#创建所需要的用户
sub create_user()
{
system_exec_must_success_or_die("mkdir /var/qmail");
system_exec_must_success_or_die("groupadd nofiles");
system_exec_must_success_or_die("useradd alias -g nofiles -d /var/qmail/alias -s /sbin/nologin");
system_exec_must_success_or_die("useradd qmaild -g nofiles -d /var/qmail -s /sbin/nologin");
system_exec_must_success_or_die("useradd qmaill -g nofiles -d /var/qmail -s /sbin/nologin");
system_exec_must_success_or_die("useradd qmailp -g nofiles -d /var/qmail -s /sbin/nologin");
system_exec_must_success_or_die("groupadd qmail");
system_exec_must_success_or_die("useradd qmailq -g qmail -d /var/qmail -s /sbin/nologin");
system_exec_must_success_or_die("useradd qmailr -g qmail -d /var/qmail -s /sbin/nologin");
system_exec_must_success_or_die("useradd qmails -g qmail -d /var/qmail -s /sbin/nologin");
#顺便添加vpopmail用户
system_exec_must_success_or_die("groupadd vchkpw -g 89");
system_exec_must_success_or_die("useradd vpopmail -u 89 -g vchkpw");
}

#准备安装qmail
sub install_qmail2()
{
system_exec_must_success_or_die("cd /home/pkg");
system_exec_must_success_or_die("tar -xzf toaster-scripts-0.7.tar.gz");
system_exec_must_success_or_die("cd netqmail-1.05/netqmail-1.05/");

# 搜索函数straynewline中的451改为553 
system_exec_must_success_or_die("vi qmail-smtpd.c");
# 当你的服务器收到无效格式的邮件时，会发送:\"I am not going to accept that message at the moment,you can try again later\",对方服务器收到后，几秒钟后又会发送同样的邮件给你，造成多次的重复。 
# 改为553后，你的服务器将直接发送：\"I am not going to accept that message,don't try sending it again.\",告诉对方的服务器不要再发这封无效的信件。 
# RedHat/Fedora用户可能需要为TLS补丁链接一个include文件
# 输入如下命令：
system_exec_must_success_or_die("ln -s /usr/kerberos/include/com_err.h /usr/include/");

# 删除sendmail的链接


system_exec_must_success_or_die("rm -rf /usr/sbin/sendmail");

#qmail编译安装
system_exec_must_success_or_die("再cd 到 netqmail 目录。 ");
system_exec_must_success_or_die("make");
system_exec_must_success_or_die("make setup check");
#注：qmail的补丁在vpopmail安装之后再打。 



# 用你自己的主机名代替下面的mail.yet_another_domain.com
system_exec_must_success_or_die("./config-fast mail.11698666.com ");


#设置管理员的邮箱地址。

#发往root/postmaster/mailer-daemon地址的邮件将会由定义的管理员邮箱接收。

#将如下的“postmaster@yet_another_domain.com\"替换成你的管理员邮箱。--没有用VPOPMAIL的情况之下

system_exec_must_success_or_die("cd /var/qmail/alias");
system_exec_must_success_or_die("echo \"postmaster@yet_another_domain.com\" > .qmail-postmaster");
system_exec_must_success_or_die("echo \"postmaster@yet_another_domain.com\" > .qmail-mailer-daemon");
system_exec_must_success_or_die("echo \"postmaster@yet_another_domain.com\" > .qmail-root");
system_exec_must_success_or_die("chmod 644 /var/qmail/alias/.qmail*");


#开启SPF设置
system_exec_must_success_or_die("echo ./Maildir/ >/var/qmail/control/defaultdelivery ");
system_exec_must_success_or_die("echo 3 > /var/qmail/control/spfbehavior");

#添加qmail的帮助手册
system_exec_must_success_or_die("echo MANPATH /var/qmail/man >>/etc/man.config");


#为qmail服务建立监控目录和日志文件:
system_exec_must_success_or_die("mkdir -p /var/qmail/supervise/qmail-send/log");
system_exec_must_success_or_die("mkdir -p /var/qmail/supervise/qmail-smtpd/log");
system_exec_must_success_or_die("mkdir -p /var/qmail/supervise/qmail-pop3d/log");
system_exec_must_success_or_die("mkdir -p /var/qmail/supervise/qmail-pop3ds/log");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/send.run /var/qmail/supervise/qmail-send/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/send.log.run /var/qmail/supervise/qmail-send/log/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/smtpd.run /var/qmail/supervise/qmail-smtpd/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/smtpd.log.run /var/qmail/supervise/qmail-smtpd/log/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/pop3d.run /var/qmail/supervise/qmail-pop3d/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/pop3d.log.run /var/qmail/supervise/qmail-pop3d/log/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/pop3ds.run /var/qmail/supervise/qmail-pop3ds/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/pop3ds.log.run /var/qmail/supervise/qmail-pop3ds/log/run");
system_exec_must_success_or_die("echo 20 > /var/qmail/control/concurrencyincoming");
system_exec_must_success_or_die("chmod 644 /var/qmail/control/concurrencyincoming");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-send/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-send/log/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-smtpd/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-smtpd/log/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-pop3d/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-pop3d/log/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-pop3ds/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-pop3ds/log/run");
system_exec_must_success_or_die("mkdir -p /var/log/qmail/smtpd");
system_exec_must_success_or_die("mkdir -p /var/log/qmail/pop3d");
system_exec_must_success_or_die("mkdir -p /var/log/qmail/pop3ds");
system_exec_must_success_or_die("chown -R qmaill /var/log/qmail");
}


#启动脚本:
sub install_init_scripts()
{
system_exec_must_success_or_die("cd /home/pkg");
system_exec_must_success_or_die("cp toaster-scripts-0.7/rc /var/qmail/rc");
system_exec_must_success_or_die("chmod 755 /var/qmail/rc");
system_exec_must_success_or_die("cp toaster-scripts-0.7/qmailctl /var/qmail/bin/");
system_exec_must_success_or_die("chmod 755 /var/qmail/bin/qmailctl");
system_exec_must_success_or_die("ln -s /var/qmail/bin/qmailctl /usr/bin");
system_exec_must_success_or_die("ln -s /var/qmail/bin/sendmail /usr/sbin/sendmail");
system_exec_must_success_or_die("rm -rf /usr/lib/sendmail");
system_exec_must_success_or_die("ln -s /var/qmail/bin/sendmail /usr/lib/sendmail ");
}


# 用daemontools来启动qmail-send和qmail-smtpd
sub install_services()
{
system_exec_must_success_or_die("ln -s /var/qmail/supervise/qmail-send /var/qmail/supervise/qmail-smtpd /service ");


# 启动，停止，重启，查看队列等
system_exec_must_success_or_die("qmailctl start|stop|restart|doqueue|flush|reload|stat|pause|cont|cdb|queue|help ");

}


sub check_all()
{
# 检查服务
system_exec_must_success_or_die("netstat -an | grep 25");
system_exec_must_success_or_die("ps -ef | grep qmail");
system_exec_must_success_or_die("ps -efl | grep \"service errors\" | grep -v grep ");

#日志：??用来干什么??
system_exec_must_success_or_die("/var/log/maillog");
system_exec_must_success_or_die("/var/log/qmail/current");
system_exec_must_success_or_die("/var/log/qmail/pop3d/current");
system_exec_must_success_or_die("/var/log/qmail/pop3ds/current");
system_exec_must_success_or_die("/var/log/qmail/smtpd/current");
}

#我建议重新回顾一下刚才我们所做的步骤以熟悉对qmail的安装. 下面我们将开始vpopmail的安装.
#IIvpopmail 安装
#创建目录:

sub install_vpopmail()
{
system_exec_must_success_or_die("mkdir -p /home/vpopmail/etc ");

# 设置默认域，红色部份改成你要设置的域

system_exec_must_success_or_die("echo \"yet_another_domain.com\" >/home/vpopmail/etc/defaultdomain ");

# 设置smtp规则，关闭open relays

system_exec_must_success_or_die("echo '127.0.0.1:allow,RELAYCLIENT=\"\"' > /home/vpopmail/etc/tcp.smtp");

system_exec_must_success_or_die("cd /home/vpopmail/etc ");
system_exec_must_success_or_die("tcprules tcp.smtp.cdb tcp.smtp.tmp < tcp.smtp");

 # 设置MySQL信息，第一个vpopmail是帐号，zoneisgod为密码，第二个vpopmail是数据库

system_exec_must_success_or_die("echo \"localhost|0|vpopmail|zoneisgod|vpopmail\" > /home/vpopmail/etc/vpopmail.mysql");

system_exec_must_success_or_die("chmod 640 /home/vpopmail/etc/vpopmail.mysql ");

system_exec_must_success_or_die("chown -R vpopmail.vchkpw /home/vpopmail/etc ");
}

sub install_vpopmain_mysql_passwd()
{
# 在MySQL里添加vpopmail的帐号

system_exec_must_success_or_die("mysql -uroot -pzoneisgod");
system_exec_must_success_or_die("CREATE DATABASE vpopmail;");
system_exec_must_success_or_die("GRANT select,insert,update,delete,create,drop ON vpopmail.*");
system_exec_must_success_or_die("TO vpopmail@localhost IDENTIFIED BY 'zoneisgod';");
system_exec_must_success_or_die("FLUSH PRIVILEGES;");
system_exec_must_success_or_die("QUIT ");

#安装:
system_exec_must_success_or_die("cd /home/pkg/");
system_exec_must_success_or_die("tar zxvf vpopmail-5.4.10.tar.gz");
system_exec_must_success_or_die("cd vpopmail-5.4.10");

# 带数据库支持
system_exec_must_success_or_die("./configure --enable-incdir=/usr/include/mysql --enable-libdir=/usr/lib/mysql --disable-roaming-users --enable-logging=p --disable-passwd --enable-clear-passwd --disable-domain-quotas --enable-auth-module=mysql --enable-auth-logging --enable-sql-logging --disable-valias --disable-mysql-limits --enable-learn-passwords");


system_exec_must_success_or_die("make");
system_exec_must_success_or_die("make install-strip ");
}


sub setup_vpopmail()
{
#管理:
system_exec_must_success_or_die("echo 'export PATH=$PATH:/home/vpopmail/bin' >> /etc/profile");
system_exec_must_success_or_die("source /etc/profile ");

# 添加域，红色部份前面是域名，后面是管理员(postmaster)密码
system_exec_must_success_or_die("vadddomain yet_another_domain.com q********************nwenwen");
# 添加用户，红色部份为注解，不用输入
system_exec_must_success_or_die("vadduser -q 10485760S  qianzhongjie@yet_another_domain.com  0************3");
system_exec_must_success_or_die("vmoduser -c 钱忠杰  qianzhongjie@yet_another_domain.com ");

# 设置邮箱容量达到90%的警告信息

system_exec_must_success_or_die("vi /home/vpopmail/domains/.quotawarn.msg ");

# From: 邮箱管理员 
# Reply-To: postmaster@yet_another_domain.com
# To: 邮箱用户
# Subject: 邮箱空间警告
# Mime-Version: 1.0
# Content-Type: text/html; charset=gb2312
# Content-Transfer-Encoding: base64 
# 您的邮箱空间已经达到90%.如果想继续使用，请删除一些信件.
# 如果需要帮助,请联系邮箱管理员:
# Email : postmaster@yet_another_domain.com 

}





# 设置邮箱已满的警告信息

sub mail_setup()
{
system_exec_must_success_or_die("echo \"邮件被拒绝,用户的邮箱空间已满.\" >/home/vpopmail/domains/.over-quota.msg ");

#启动脚本:
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/vpopmailctl /var/qmail/bin");
system_exec_must_success_or_die("ln -s /var/qmail/bin/vpopmailctl /usr/bin");
system_exec_must_success_or_die("chmod 755 /var/qmail/bin/vpopmailctl ");

#现在打上qmail的补丁:
system_exec_must_success_or_die("cd /home/pkg/netqmail-1.05/netqmail-1.05");
system_exec_must_success_or_die("bunzip2 -c /home/pkg/qmail-toaster-0.7.2.patch.bz2 | patch -p0");
system_exec_must_success_or_die("make clean");
system_exec_must_success_or_die("make");
system_exec_must_success_or_die("qmailctl stop");
system_exec_must_success_or_die("make setup check");
system_exec_must_success_or_die("chown -R vpopmail:vchkpw /var/qmail/spam ");


#创建SSL Key
#------------------------可以省略的一部分----------------

system_exec_must_success_or_die("make cert");
# Generating a 1024 bit RSA private key
# .............++++++
# ...............++++++
# writing new private key to '/var/qmail/control/servercert.pem'
# -----
# You are about to be asked to enter information that will be incorporated
# into your certificate request.
# What you are about to enter is what is called a Distinguished Name or a DN.
# There are quite a few fields but you can leave some blank
# For some fields there will be a default value,
# If you enter '.', the field will be left blank.
# 
# -----
# 
# Country Name (2 letter code) [GB]:CN
# 
# State or Province Name (full name) [Berkshire]:GD
# 
# Locality Name (eg, city) [Newbury]:SZ
# 
# Organization Name (eg, company) [My Company Ltd]:Domain
# 
# Organizational Unit Name (eg, section) []:Domain
# 
# Common Name (eg, your name or your server's hostname) []:domain.com
# 
# Email Address []:xukixu@domain.com



system_exec_must_success_or_die("make tmprsadh");
#注:这里可能要多等一会

system_exec_must_success_or_die("chown -R vpopmail:qmail /var/qmail/control/clientcert.pem /var/qmail/control/servercert.pem");

# 用\"crontab -e\"在crontab里增加下面这条，每天晚上更新temp keys
#01 01 * * * /var/qmail/bin/update_tmprsadh >; /dev/null 2>;&1 
##---------------可以省略的一部分结尾-----------------------
#起动qmail

system_exec_must_success_or_die("qmailctl start ");


# 用daemontools来启动qmail-pop3d和qmail-pop3ds

system_exec_must_success_or_die("ln -s /var/qmail/supervise/qmail-pop3d /service");

system_exec_must_success_or_die("ln -s /var/qmail/supervise/qmail-pop3ds /service ");
#命令:
# 启动，停止，重启，查看队列等

system_exec_must_success_or_die("vpopmailctl start|stop|restart|stat|pause|cont|help ");
# 检查服务
system_exec_must_success_or_die("netstat -an | grep 110");
system_exec_must_success_or_die("ps -ef | grep qmail");
system_exec_must_success_or_die("ps -efl | grep \"service errors\" | grep -v grep");


#POP3和SMTP测试

system_exec_must_success_or_die("用outlook测试qmail的smtp和pop3是否正常，注意由于vpopmail支持虚拟域名，所以在outlook中设置邮件帐号时，用户名后要加上域名，如demo@demo.com。smtp是带认证的，在outlook中也要作相应设置。建议先测试正常后再进行下一步安装。如果qmail出现问题，可查看mysql中的vpopmail数据库，/var/log下的mysqld和maillog日志记录，这样容易很快找出问题。");


}
#------------vpopmail结束--------------------


sub  setup_webmail()
{
system_exec_must_success_or_die("III 安装IGENUS");
#安装：
system_exec_must_success_or_die("cd /home/pkg");
system_exec_must_success_or_die("tar zxvf igenus_2.0.2_20040901_release.tgz -C /var/www/ ");
system_exec_must_success_or_die("cd /var/www/");
system_exec_must_success_or_die("rm -rf html/");
system_exec_must_success_or_die("mv igenus html");

#建temp文件夹 
system_exec_must_success_or_die("mkdir /tmp/temp ");
system_exec_must_success_or_die("chmod -R 0755 /tmp/temp ");
system_exec_must_success_or_die("chown -R vpopmail:vchkpw /tmp/temp");
system_exec_must_success_or_die("mkdir /home/netdisk");
system_exec_must_success_or_die("chmod -R 0755 /home/netdisk ");
system_exec_must_success_or_die("chown -R vpopmail:vchkpw /home/netdisk");
system_exec_must_success_or_die("chmod -R 0755 /var/www/html/");
system_exec_must_success_or_die("chown -R vpopmail:vchkpw /var/www/html/");



#修改httpd.conf 
system_exec_must_success_or_die("vi /etc/httpd/conf/httpd.conf");
system_exec_must_success_or_die("User vpopmail ");
system_exec_must_success_or_die("Group vchkpw ");
system_exec_must_success_or_die("DocumentRoot \"/var/www/html/\"");
system_exec_must_success_or_die("AddDefaultCharset GB2312 //使默认页面为中文 ");
system_exec_must_success_or_die("/etc/rc.d/init.d/httpd restart //重启apache，使修改生效 ");


#修改config_inc.php文件 
system_exec_must_success_or_die("cd /var/www/html/config ");
system_exec_must_success_or_die("vi config_inc.php ");
system_exec_must_success_or_die("$CFG_BASEPATH = \"/var/www/html/\"; \\改成你安装的目录");
system_exec_must_success_or_die("$CFG_MYSQL_HOST = 'localhost'; ");
system_exec_must_success_or_die("$CFG_MYSQL_USER = 'vpopmail'; \\vpopmail访问mysql的帐号");
system_exec_must_success_or_die("$CFG_MYSQL_PASS = 'zoneisgod'; \\vpopmail访问mysql的密码");
system_exec_must_success_or_die("$CFG_MYSQL_DB = 'vpopmail'; \\数据库");
system_exec_must_success_or_die("$CFG_TEMP = \"/tmp/temp\"; \\删除$CFG_BASEPATH，并修改路径");
}



#重新编制Mysql数据库表格 


sub setup_mysql()
{
#删除之前创建的域名
system_exec_must_success_or_die("vdeldomain yet_another_domain.com");

#编辑数据库：
system_exec_must_success_or_die("mysql -uroot -pzoneisgod");
system_exec_must_success_or_die("use vpopmail;");
system_exec_must_success_or_die("drop table lastauth;");
system_exec_must_success_or_die("drop table vpopmail;");
system_exec_must_success_or_die("quit;");

#编辑/var/www/html/docs/iGENUS.sql
# vi /var/www/html/docs/iGENUS.sql
# use vpopmail; //加入这一行
# 
# CREATE TABLE `vpopmail` (
# `pw_id` int(5) unsigned NOT NULL auto_increment,
# `pw_name` varchar(32) NOT NULL default '',
# `pw_domain` varchar(64) NOT NULL default '',
# `pw_passwd` varchar(40) NOT NULL default '',
# `pw_uid` int(11) default NULL,
# `pw_gid` int(11) default NULL,
# `pw_gecos` varchar(48) default NULL,
# `pw_dir` varchar(255) default NULL,
# `pw_shell` varchar(20) default NULL,
# `pw_clear_passwd` varchar(16) default NULL, \\加入这一行 
# `createtime` timestamp(14) NOT NULL,
# PRIMARY KEY (`pw_id`),
# KEY `pw_name` (`pw_name`,`pw_domain`)
# ) TYPE=MyISAM PACK_KEYS=1 ;



#运行如下命令导入数据表

system_exec_must_success_or_die("mysql -uroot -pzoneisogd </var/www/html/docs/iGENUS.sql ");

#设置igenus 定义允许上传下载的邮件的大小

#编辑/etc/php.ini
# vi /etc/php.ini
# max_execution_time=60
# memory_limit=20M
# post_max_size = 10M
# file_uploads=on
# upload_max_filesize=10M
# register_globals=On
# session.bug_compat_42=0
# session.bug_compat_warn=0
# sendmail_path = /var/qmail/bin/qmail-inject

# #编辑/etc/http/conf/httpd.conf 
# vi /etc/httpd/conf/httpd.conf
# AddType application/x-httpd-php .php
# AddType application/x-httpd-php-source .phps
# DirectoryIndex index.php index.html
# NameVirtualHost *:80
# <VirtualHost *:80>;
# ServerName mail.yet_another_domain.com
# DocumentRoot /var/www/html
# </VirtualHost>;

##对话权限修改一下否则不能登陆
system_exec_must_success_or_die("chmod 777 /var/lib/php/session/ -R");

#重启apache: 
system_exec_must_success_or_die("service httpd restart");
#如果需要，用vadddomain和vadduser添加新域名和新用户。

# 添加域，红色部份前面是域名，后面是管理员(postmaster)密码
system_exec_must_success_or_die("vadddomain yet_another_domain.com q********************nwenwen");
# 添加用户，红色部份为注解，不用输入
system_exec_must_success_or_die("vadduser -q 10485760S  qianzhongjie@yet_another_domain.com  0************3");
system_exec_must_success_or_die("vmoduser -c 钱忠杰  qianzhongjie@yet_another_domain.com ");
#最后打开浏览器，输入http://domain.com/，就可以访问网站了。
}

#第七节：安装iGenus_Admin(可选)  TOP(感觉用户和域的问题不能用 上面的vadddomain,vadduser, vmoduser命令来解决的用下面的
#WEB界面来解决,但是建议不要安装下面的WEB界面,安全是一,冗余是二)

#一个基于Web的vpopmail域和帐号管理工具。
#参考：http://www.igenus.org
#安装 
sub setup_wemail_admin()
{
system_exec_must_success_or_die("cd /home/pkg");
system_exec_must_success_or_die("tar -xzvf igenus_admin_0.1.tgz -C /var/www/html/ ");

#设置
# vi /var/www/html/admin/includes/config_inc.php 
# <?php 
# 
# if(!defined(\"INCLUDE_CONFIG_OK\")) { 
# define(\"INCLUDE_CONFIG_OK\",\"TRUE\"); 
# // define('NO_PASSWD_CHNG',0x01); 
# define('NO_POP', 0x02); 
# define('NO_WEBMAIL', 0x04); 
# // define('NO_IMAP', 0x08); 
# // define('BOUNCE_MAIL', 0x10); 
# // define('NO_RELAY', 0x20); 
# // define('NO_DIALUP', 0x40); 
# // define('V_USER0', 0x080); 
# // define('V_USER1', 0x100); 
# // define('V_USER2', 0x200); 
# // define('V_USER3', 0x400); 
# define('NO_SMTP', 0x800); 
# // define('QA_ADMIN', 0x1000); 
# 
# $CFG_VPOPMAIL_HOST = \"localhost\"; 
# $CFG_VPOPMAIL_USER = \"vpopmail\";　\\改为你的帐号 
# $CFG_VPOPMAIL_PASS = \"zoneisgod\"; \\改为你的密码 
# $CFG_VPOPMAIL_DB = \"vpopmail\"; 
# $CFG_VPOPMAIL_TABLE = \"vpopmail\"; 
# $CFG_ADMIN_TABLE = \"admin\"; 
# $CFG_LAGESITE = true; 
# $CFG_NUMOFPAGE = 20; 
# 
# $CFG_MAILBOX['inbox'] = \".\"; 
# $CFG_MAILBOX['outbox'] = \".Outbox\"; 
# $CFG_MAILBOX['draft'] = \".Draft\"; 
# $CFG_MAILBOX['trash'] = \".Trash\"; 
# $CFG_VPOPMAIL_PATH = \"/home/vpopmail\"; \\改为你的vpopmail安装目录　
# // $CFG_VPOPMAIL_PATH = \"/home2/vpopmail\"; 
# 
# $CFG_SYSADMIN_NAME = \"Admin\"; 
# $CFG_SYSADMIN_PASSWD= '$1$GvmONIco$0SwBB.mEoP3KJ5Zda7ioV0'; 
# $CFG_SYSADMIN_PASSWD_FILE = $CFG_VPOPMAIL_PATH . \"/etc/syspasswd.dat\"; 
# $CFG_TIMEOUT = 600; 
# $CFG_IGENUS_ADM = \"iGENUS邮件系统管理\"; 
# $CFG_TEMPLATE_PATH = \"template/\"; 
# 
# } 
# 
# ?>; 



#保存退出 
system_exec_must_success_or_die("touch /etc/syspasswd.dat");
system_exec_must_success_or_die("chown -R vpopmail.vchkpw /var/www/html ");
system_exec_must_success_or_die("chmod -R 755 /var/www/html ");
#登录设置页面 
system_exec_must_success_or_die("wget http://yet_another_domain.com/admin/sys/ ");
}
#用户:Admin密码Admin来登录.注意A要大写..这个管理帐号密码登录后可以改的 

#登录后,首先点\"更新数据库\"你就会看见你的域名.然后点\"编辑\"把\"登录权限 该域管理员（Postmaster）有权登录进行用户管理\"这一项打勾,确认后,就可以用 
#http://yet_another_domain.com/admin/   

#来登录管理了。




#涉及到的重要的路径
sub check_all_install_path()
{
system_exec_must_success_or_die("/home/pkg");
system_exec_must_success_or_die("/var/qmail/alias useradd alias -g nofiles -d /var/qmail/alias -s /sbin/nologin");
system_exec_must_success_or_die("/var/qmail ");
         system_exec_must_success_or_die("useradd qmaild -g nofiles -d /var/qmail -s /sbin/nologin");
         system_exec_must_success_or_die("useradd qmaill -g nofiles -d /var/qmail -s /sbin/nologin");
         system_exec_must_success_or_die("useradd qmailp -g nofiles -d /var/qmail -s /sbin/nologin");
         system_exec_must_success_or_die("useradd qmailq -g qmail -d /var/qmail -s /sbin/nologin");
         system_exec_must_success_or_die("useradd qmailr -g qmail -d /var/qmail -s /sbin/nologin");
         system_exec_must_success_or_die("useradd qmails -g qmail -d /var/qmail -s /sbin/nologin");
system_exec_must_success_or_die("chmod 644 /var/qmail/alias/.qmail*");
system_exec_must_success_or_die("echo ./Maildir/ >/var/qmail/control/defaultdelivery ");
system_exec_must_success_or_die("echo 3 > /var/qmail/control/spfbehavior");
system_exec_must_success_or_die("echo MANPATH /var/qmail/man >>/etc/man.configmkdir -p /var/qmail/supervise/qmail-send/log");
system_exec_must_success_or_die("mkdir -p /var/qmail/supervise/qmail-smtpd/log");
system_exec_must_success_or_die("mkdir -p /var/qmail/supervise/qmail-pop3d/log");
system_exec_must_success_or_die("mkdir -p /var/qmail/supervise/qmail-pop3ds/log");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/send.run /var/qmail/supervise/qmail-send/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/send.log.run /var/qmail/supervise/qmail-send/log/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/smtpd.run /var/qmail/supervise/qmail-smtpd/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/smtpd.log.run /var/qmail/supervise/qmail-smtpd/log/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/pop3d.run /var/qmail/supervise/qmail-pop3d/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/pop3d.log.run /var/qmail/supervise/qmail-pop3d/log/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/pop3ds.run /var/qmail/supervise/qmail-pop3ds/run");
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/pop3ds.log.run /var/qmail/supervise/qmail-pop3ds/log/run");
system_exec_must_success_or_die("echo 20 > /var/qmail/control/concurrencyincoming");
system_exec_must_success_or_die("chmod 644 /var/qmail/control/concurrencyincoming");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-send/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-send/log/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-smtpd/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-smtpd/log/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-pop3d/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-pop3d/log/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-pop3ds/run");
system_exec_must_success_or_die("chmod 755 /var/qmail/supervise/qmail-pop3ds/log/run");
system_exec_must_success_or_die("cp toaster-scripts-0.7/rc /var/qmail/rc");
system_exec_must_success_or_die("mkdir -p /home/vpopmail/etc ");
system_exec_must_success_or_die("echo \"yet_another_domain.com\" >/home/vpopmail/etc/defaultdomain ");
system_exec_must_success_or_die("echo '127.0.0.1:allow,RELAYCLIENT=\"\"' > /home/vpopmail/etc/tcp.smtp");

system_exec_must_success_or_die("echo \"localhost|0|vpopmail|zoneisgod|vpopmail\" > /home/vpopmail/etc/vpopmail.mysql");
system_exec_must_success_or_die("ln -s /var/qmail/bin/vpopmailctl /usr/bin");
system_exec_must_success_or_die("mkdir /tmp/temp ");
system_exec_must_success_or_die("chmod -R 0755 /tmp/temp ");
system_exec_must_success_or_die("mkdir /home/netdisk");
system_exec_must_success_or_die("chmod -R 0755 /home/netdisk ");
system_exec_must_success_or_die("chown -R vpopmail:vchkpw /home/netdisk");
system_exec_must_success_or_die("chmod 777 /var/lib/php/session/ -R");
}
###############

#最简单的.
sub logger($)
{
	(my $log_str)=@_;
	open(FILE, ">> all_qmail.log") or warn("open all.log error\n");
	print FILE $log_str;
	close(FILE);
}

 check_dns();
 check_rpm();
 mysql_passwd();
 uninstall_sendmail();
 install_netqmail();
 install_daemontools();
 install_ucspi();
 create_user();
 install_qmail2();
 install_init_scripts();
 install_services();
 check_all();
 install_vpopmail();
 install_vpopmain_mysql_passwd();
 setup_vpopmail();
 mail_setup();
  setup_webmail();
 setup_mysql();
 setup_wemail_admin();
 check_all_install_path();
