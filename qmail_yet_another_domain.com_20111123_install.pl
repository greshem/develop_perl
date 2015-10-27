#!/usr/bin/perl
do("/bin/shell_common_cmd_exec_or_die.pl");
#qmail yet_another_domain.com ��ȫ��װ�ĵ�
#die("û�в����˳�\n");
#1.���DNS
sub check_dns()
{  
# �ڿ�ʼ֮ǰ��ȷ����ȷ������DNS MX��¼.����ʹ��\"yet_another_domain.com\"��Ϊ�ʼ��򣬶�MX��¼���в��ԣ�
# ��Linux�£�
# host -t mx yet_another_domain.com
# domain.com. mail is handled by 10 mail.yet_another_domain.com.
# host -t a mail.yet_another_domain.com
# 11698666.domain.com. has address xxx.xxx.xxx.xxx 
# ��Windows�£�
# C:\>;nslookup
# Default Server: ns.xxxx.com
# Address: xxx.xxx.xxx.xxx
# >;set type=mx
# >;yet_another_domain.com
# yet_another_domain.com MX preference = 10, mail exchanger = mail.yet_another_domain.com
# mail.yet_another_domain.com internet address = xxx.xxx.xxx.xxx
# >;exit 
}

#2 RHEL 4.0 RPM��װ����
sub check_rpm()
{
	system_exec_must_success_or_die("rpm -q httpd php php-mysql mysql mysql-server mysql-devel gdbm gdbm-devel openssl openssl-devel stunnel krb5-devel");
}
#������������
#Servers
# Web Server:��ѡphp-mysql
# Mail Server:��ѡspamassassin���������
# FTP Server:Vsftpd
# MySQL Database:��ѡmysql-bench/mysql-server/php-mysql
# 

sub mysql_passwd()
{
#4.MYSQL ����
#����mysql root��� 
#system_exec_must_success_or_die("mysqladmin -u root password zoneisgod #(�����������) ");
#mysql��ͷ�ļ��Ϳ��ļ��ֱ���/usr/include/mysql��/usr/lib/mysql��
}

#4.ж�����е��ʼ�ϵͳ 

#ȷ��û��SMTP/POP/IMAP����������:
sub uninstall_sendmail()
{
	system_exec_must_success_or_die("/etc/init.d/sendmail stop");
	system_exec_must_success_or_die("lsof -i:25  || true ");
	system_exec_must_success_or_die("lsof -i:110 ||true ");
	system_exec_must_success_or_die("lsof -i:143 || true ");
	system_exec_must_success_or_die("service sendmail stop");
	#ɾ�����е�SMTP/POP/IMAP���:
	#system_exec_must_success_or_die("rpm -e --nodeps sendmail");
	#\\ע��postfix Ҳ��ɾ����������û���������
}
#------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------

#����/home/pkg/Ŀ¼
sub install_netqmail()
{
	if( ! -d "/home/pkg")
	{
		system_exec_must_success_or_die("mkdir /home/pkg");
	}
	#�ϴ�QMAIL�����

	#��ѹ��netqmail-1.05.tar.gz
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
##ע�⣺./collate.sh��һ����Ҫ��

#______________________________________________________________
#��װdaemontools 

#daemontools��һ���ռ�����UNIX���̵Ĺ���.����������qmail-send,qmail-smtpd,qmail-pop3d.
#�ο���http://cr.yp.to/daemontools.html 
#��װ��
sub install_daemontools()
{
system_exec_must_success_or_die("cd /home/pkg");
system_exec_must_success_or_die("tar -zxvf daemontools-0.76.tar.gz");
system_exec_must_success_or_die("cd admin/daemontools-0.76");
system_exec_must_success_or_die("patch -p1 < /home/pkg/netqmail-1.05/other-patches/daemontools-0.76.errno.patch");
system_exec_must_success_or_die("package/install ");
# ��֤daemontools�Ѿ��������У�
system_exec_must_success_or_die("sleep 5");
system_exec_must_success_or_die("ps ax | grep svscan ");
}

# ��װucspi-tcp 
# 
# ucspi-tcp�������һ�鹤����ɡ����������򵥵Ľ����ͻ�����������tcp��̨����TcpServer��һ����inetd��ȫ�Ը��õ�ѡ�����ڽ��л��ڹ�������ӿ��ƣ������Ƶ��ڴﵽԤ��������ϵͳ����ʱ�������Ƴ٣����� inetd�á�TcpserverҲ���Ƽ���qmailһͬʹ�ã���Ϊ������ͬһ�����߱�ĳ���
# 
# �ο���http://cr.yp.to/ucspi-tcp.html
#��װ��
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

#��װqmail 
#�ο���http://www.qmail.org  http://www.lifewithqmail.org/
#���toaster�������������⼸�����������:
#smtp auth ��SMTP��֤��
#spf ��������DNS��飩
#qmail-queue �����Ҫʹ�ò���ɨ����������Ҫ���������
#maildir++ patch 
#support oversize dns packets (not necessary if you use dnscache) 
#chkuser ����鱾��vpopmail�û�����ͷ���﷨�����������Ҫ�ڰ�װvpopmail�󱻰�װ����
#spam throttle 
#qregex ��ƥ��badmailfrom��badmailto�ļ���Ĺ���
#big concurrency (set the spawn limit above 255) 

#��װ:

#��������Ҫ���û�
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
#˳�����vpopmail�û�
system_exec_must_success_or_die("groupadd vchkpw -g 89");
system_exec_must_success_or_die("useradd vpopmail -u 89 -g vchkpw");
}

#׼����װqmail
sub install_qmail2()
{
system_exec_must_success_or_die("cd /home/pkg");
system_exec_must_success_or_die("tar -xzf toaster-scripts-0.7.tar.gz");
system_exec_must_success_or_die("cd netqmail-1.05/netqmail-1.05/");

# ��������straynewline�е�451��Ϊ553 
system_exec_must_success_or_die("vi qmail-smtpd.c");
# ����ķ������յ���Ч��ʽ���ʼ�ʱ���ᷢ��:\"I am not going to accept that message at the moment,you can try again later\",�Է��������յ��󣬼����Ӻ��ֻᷢ��ͬ�����ʼ����㣬��ɶ�ε��ظ��� 
# ��Ϊ553����ķ�������ֱ�ӷ��ͣ�\"I am not going to accept that message,don't try sending it again.\",���߶Է��ķ�������Ҫ�ٷ������Ч���ż��� 
# RedHat/Fedora�û�������ҪΪTLS��������һ��include�ļ�
# �����������
system_exec_must_success_or_die("ln -s /usr/kerberos/include/com_err.h /usr/include/");

# ɾ��sendmail������


system_exec_must_success_or_die("rm -rf /usr/sbin/sendmail");

#qmail���밲װ
system_exec_must_success_or_die("��cd �� netqmail Ŀ¼�� ");
system_exec_must_success_or_die("make");
system_exec_must_success_or_die("make setup check");
#ע��qmail�Ĳ�����vpopmail��װ֮���ٴ� 



# �����Լ������������������mail.yet_another_domain.com
system_exec_must_success_or_die("./config-fast mail.11698666.com ");


#���ù���Ա�������ַ��

#����root/postmaster/mailer-daemon��ַ���ʼ������ɶ���Ĺ���Ա������ա�

#�����µġ�postmaster@yet_another_domain.com\"�滻����Ĺ���Ա���䡣--û����VPOPMAIL�����֮��

system_exec_must_success_or_die("cd /var/qmail/alias");
system_exec_must_success_or_die("echo \"postmaster@yet_another_domain.com\" > .qmail-postmaster");
system_exec_must_success_or_die("echo \"postmaster@yet_another_domain.com\" > .qmail-mailer-daemon");
system_exec_must_success_or_die("echo \"postmaster@yet_another_domain.com\" > .qmail-root");
system_exec_must_success_or_die("chmod 644 /var/qmail/alias/.qmail*");


#����SPF����
system_exec_must_success_or_die("echo ./Maildir/ >/var/qmail/control/defaultdelivery ");
system_exec_must_success_or_die("echo 3 > /var/qmail/control/spfbehavior");

#���qmail�İ����ֲ�
system_exec_must_success_or_die("echo MANPATH /var/qmail/man >>/etc/man.config");


#Ϊqmail���������Ŀ¼����־�ļ�:
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


#�����ű�:
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


# ��daemontools������qmail-send��qmail-smtpd
sub install_services()
{
system_exec_must_success_or_die("ln -s /var/qmail/supervise/qmail-send /var/qmail/supervise/qmail-smtpd /service ");


# ������ֹͣ���������鿴���е�
system_exec_must_success_or_die("qmailctl start|stop|restart|doqueue|flush|reload|stat|pause|cont|cdb|queue|help ");

}


sub check_all()
{
# ������
system_exec_must_success_or_die("netstat -an | grep 25");
system_exec_must_success_or_die("ps -ef | grep qmail");
system_exec_must_success_or_die("ps -efl | grep \"service errors\" | grep -v grep ");

#��־��??������ʲô??
system_exec_must_success_or_die("/var/log/maillog");
system_exec_must_success_or_die("/var/log/qmail/current");
system_exec_must_success_or_die("/var/log/qmail/pop3d/current");
system_exec_must_success_or_die("/var/log/qmail/pop3ds/current");
system_exec_must_success_or_die("/var/log/qmail/smtpd/current");
}

#�ҽ������»ع�һ�¸ղ����������Ĳ�������Ϥ��qmail�İ�װ. �������ǽ���ʼvpopmail�İ�װ.
#IIvpopmail ��װ
#����Ŀ¼:

sub install_vpopmail()
{
system_exec_must_success_or_die("mkdir -p /home/vpopmail/etc ");

# ����Ĭ���򣬺�ɫ���ݸĳ���Ҫ���õ���

system_exec_must_success_or_die("echo \"yet_another_domain.com\" >/home/vpopmail/etc/defaultdomain ");

# ����smtp���򣬹ر�open relays

system_exec_must_success_or_die("echo '127.0.0.1:allow,RELAYCLIENT=\"\"' > /home/vpopmail/etc/tcp.smtp");

system_exec_must_success_or_die("cd /home/vpopmail/etc ");
system_exec_must_success_or_die("tcprules tcp.smtp.cdb tcp.smtp.tmp < tcp.smtp");

 # ����MySQL��Ϣ����һ��vpopmail���ʺţ�zoneisgodΪ���룬�ڶ���vpopmail�����ݿ�

system_exec_must_success_or_die("echo \"localhost|0|vpopmail|zoneisgod|vpopmail\" > /home/vpopmail/etc/vpopmail.mysql");

system_exec_must_success_or_die("chmod 640 /home/vpopmail/etc/vpopmail.mysql ");

system_exec_must_success_or_die("chown -R vpopmail.vchkpw /home/vpopmail/etc ");
}

sub install_vpopmain_mysql_passwd()
{
# ��MySQL�����vpopmail���ʺ�

system_exec_must_success_or_die("mysql -uroot -pzoneisgod");
system_exec_must_success_or_die("CREATE DATABASE vpopmail;");
system_exec_must_success_or_die("GRANT select,insert,update,delete,create,drop ON vpopmail.*");
system_exec_must_success_or_die("TO vpopmail@localhost IDENTIFIED BY 'zoneisgod';");
system_exec_must_success_or_die("FLUSH PRIVILEGES;");
system_exec_must_success_or_die("QUIT ");

#��װ:
system_exec_must_success_or_die("cd /home/pkg/");
system_exec_must_success_or_die("tar zxvf vpopmail-5.4.10.tar.gz");
system_exec_must_success_or_die("cd vpopmail-5.4.10");

# �����ݿ�֧��
system_exec_must_success_or_die("./configure --enable-incdir=/usr/include/mysql --enable-libdir=/usr/lib/mysql --disable-roaming-users --enable-logging=p --disable-passwd --enable-clear-passwd --disable-domain-quotas --enable-auth-module=mysql --enable-auth-logging --enable-sql-logging --disable-valias --disable-mysql-limits --enable-learn-passwords");


system_exec_must_success_or_die("make");
system_exec_must_success_or_die("make install-strip ");
}


sub setup_vpopmail()
{
#����:
system_exec_must_success_or_die("echo 'export PATH=$PATH:/home/vpopmail/bin' >> /etc/profile");
system_exec_must_success_or_die("source /etc/profile ");

# ����򣬺�ɫ����ǰ���������������ǹ���Ա(postmaster)����
system_exec_must_success_or_die("vadddomain yet_another_domain.com q********************nwenwen");
# ����û�����ɫ����Ϊע�⣬��������
system_exec_must_success_or_die("vadduser -q 10485760S  qianzhongjie@yet_another_domain.com  0************3");
system_exec_must_success_or_die("vmoduser -c Ǯ�ҽ�  qianzhongjie@yet_another_domain.com ");

# �������������ﵽ90%�ľ�����Ϣ

system_exec_must_success_or_die("vi /home/vpopmail/domains/.quotawarn.msg ");

# From: �������Ա 
# Reply-To: postmaster@yet_another_domain.com
# To: �����û�
# Subject: ����ռ侯��
# Mime-Version: 1.0
# Content-Type: text/html; charset=gb2312
# Content-Transfer-Encoding: base64 
# ��������ռ��Ѿ��ﵽ90%.��������ʹ�ã���ɾ��һЩ�ż�.
# �����Ҫ����,����ϵ�������Ա:
# Email : postmaster@yet_another_domain.com 

}





# �������������ľ�����Ϣ

sub mail_setup()
{
system_exec_must_success_or_die("echo \"�ʼ����ܾ�,�û�������ռ�����.\" >/home/vpopmail/domains/.over-quota.msg ");

#�����ű�:
system_exec_must_success_or_die("cp /home/pkg/toaster-scripts-0.7/vpopmailctl /var/qmail/bin");
system_exec_must_success_or_die("ln -s /var/qmail/bin/vpopmailctl /usr/bin");
system_exec_must_success_or_die("chmod 755 /var/qmail/bin/vpopmailctl ");

#���ڴ���qmail�Ĳ���:
system_exec_must_success_or_die("cd /home/pkg/netqmail-1.05/netqmail-1.05");
system_exec_must_success_or_die("bunzip2 -c /home/pkg/qmail-toaster-0.7.2.patch.bz2 | patch -p0");
system_exec_must_success_or_die("make clean");
system_exec_must_success_or_die("make");
system_exec_must_success_or_die("qmailctl stop");
system_exec_must_success_or_die("make setup check");
system_exec_must_success_or_die("chown -R vpopmail:vchkpw /var/qmail/spam ");


#����SSL Key
#------------------------����ʡ�Ե�һ����----------------

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
#ע:�������Ҫ���һ��

system_exec_must_success_or_die("chown -R vpopmail:qmail /var/qmail/control/clientcert.pem /var/qmail/control/servercert.pem");

# ��\"crontab -e\"��crontab����������������ÿ�����ϸ���temp keys
#01 01 * * * /var/qmail/bin/update_tmprsadh >; /dev/null 2>;&1 
##---------------����ʡ�Ե�һ���ֽ�β-----------------------
#��qmail

system_exec_must_success_or_die("qmailctl start ");


# ��daemontools������qmail-pop3d��qmail-pop3ds

system_exec_must_success_or_die("ln -s /var/qmail/supervise/qmail-pop3d /service");

system_exec_must_success_or_die("ln -s /var/qmail/supervise/qmail-pop3ds /service ");
#����:
# ������ֹͣ���������鿴���е�

system_exec_must_success_or_die("vpopmailctl start|stop|restart|stat|pause|cont|help ");
# ������
system_exec_must_success_or_die("netstat -an | grep 110");
system_exec_must_success_or_die("ps -ef | grep qmail");
system_exec_must_success_or_die("ps -efl | grep \"service errors\" | grep -v grep");


#POP3��SMTP����

system_exec_must_success_or_die("��outlook����qmail��smtp��pop3�Ƿ�������ע������vpopmail֧������������������outlook�������ʼ��ʺ�ʱ���û�����Ҫ������������demo@demo.com��smtp�Ǵ���֤�ģ���outlook��ҲҪ����Ӧ���á������Ȳ����������ٽ�����һ����װ�����qmail�������⣬�ɲ鿴mysql�е�vpopmail���ݿ⣬/var/log�µ�mysqld��maillog��־��¼���������׺ܿ��ҳ����⡣");


}
#------------vpopmail����--------------------


sub  setup_webmail()
{
system_exec_must_success_or_die("III ��װIGENUS");
#��װ��
system_exec_must_success_or_die("cd /home/pkg");
system_exec_must_success_or_die("tar zxvf igenus_2.0.2_20040901_release.tgz -C /var/www/ ");
system_exec_must_success_or_die("cd /var/www/");
system_exec_must_success_or_die("rm -rf html/");
system_exec_must_success_or_die("mv igenus html");

#��temp�ļ��� 
system_exec_must_success_or_die("mkdir /tmp/temp ");
system_exec_must_success_or_die("chmod -R 0755 /tmp/temp ");
system_exec_must_success_or_die("chown -R vpopmail:vchkpw /tmp/temp");
system_exec_must_success_or_die("mkdir /home/netdisk");
system_exec_must_success_or_die("chmod -R 0755 /home/netdisk ");
system_exec_must_success_or_die("chown -R vpopmail:vchkpw /home/netdisk");
system_exec_must_success_or_die("chmod -R 0755 /var/www/html/");
system_exec_must_success_or_die("chown -R vpopmail:vchkpw /var/www/html/");



#�޸�httpd.conf 
system_exec_must_success_or_die("vi /etc/httpd/conf/httpd.conf");
system_exec_must_success_or_die("User vpopmail ");
system_exec_must_success_or_die("Group vchkpw ");
system_exec_must_success_or_die("DocumentRoot \"/var/www/html/\"");
system_exec_must_success_or_die("AddDefaultCharset GB2312 //ʹĬ��ҳ��Ϊ���� ");
system_exec_must_success_or_die("/etc/rc.d/init.d/httpd restart //����apache��ʹ�޸���Ч ");


#�޸�config_inc.php�ļ� 
system_exec_must_success_or_die("cd /var/www/html/config ");
system_exec_must_success_or_die("vi config_inc.php ");
system_exec_must_success_or_die("$CFG_BASEPATH = \"/var/www/html/\"; \\�ĳ��㰲װ��Ŀ¼");
system_exec_must_success_or_die("$CFG_MYSQL_HOST = 'localhost'; ");
system_exec_must_success_or_die("$CFG_MYSQL_USER = 'vpopmail'; \\vpopmail����mysql���ʺ�");
system_exec_must_success_or_die("$CFG_MYSQL_PASS = 'zoneisgod'; \\vpopmail����mysql������");
system_exec_must_success_or_die("$CFG_MYSQL_DB = 'vpopmail'; \\���ݿ�");
system_exec_must_success_or_die("$CFG_TEMP = \"/tmp/temp\"; \\ɾ��$CFG_BASEPATH�����޸�·��");
}



#���±���Mysql���ݿ��� 


sub setup_mysql()
{
#ɾ��֮ǰ����������
system_exec_must_success_or_die("vdeldomain yet_another_domain.com");

#�༭���ݿ⣺
system_exec_must_success_or_die("mysql -uroot -pzoneisgod");
system_exec_must_success_or_die("use vpopmail;");
system_exec_must_success_or_die("drop table lastauth;");
system_exec_must_success_or_die("drop table vpopmail;");
system_exec_must_success_or_die("quit;");

#�༭/var/www/html/docs/iGENUS.sql
# vi /var/www/html/docs/iGENUS.sql
# use vpopmail; //������һ��
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
# `pw_clear_passwd` varchar(16) default NULL, \\������һ�� 
# `createtime` timestamp(14) NOT NULL,
# PRIMARY KEY (`pw_id`),
# KEY `pw_name` (`pw_name`,`pw_domain`)
# ) TYPE=MyISAM PACK_KEYS=1 ;



#����������������ݱ�

system_exec_must_success_or_die("mysql -uroot -pzoneisogd </var/www/html/docs/iGENUS.sql ");

#����igenus ���������ϴ����ص��ʼ��Ĵ�С

#�༭/etc/php.ini
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

# #�༭/etc/http/conf/httpd.conf 
# vi /etc/httpd/conf/httpd.conf
# AddType application/x-httpd-php .php
# AddType application/x-httpd-php-source .phps
# DirectoryIndex index.php index.html
# NameVirtualHost *:80
# <VirtualHost *:80>;
# ServerName mail.yet_another_domain.com
# DocumentRoot /var/www/html
# </VirtualHost>;

##�Ի�Ȩ���޸�һ�·����ܵ�½
system_exec_must_success_or_die("chmod 777 /var/lib/php/session/ -R");

#����apache: 
system_exec_must_success_or_die("service httpd restart");
#�����Ҫ����vadddomain��vadduser��������������û���

# ����򣬺�ɫ����ǰ���������������ǹ���Ա(postmaster)����
system_exec_must_success_or_die("vadddomain yet_another_domain.com q********************nwenwen");
# ����û�����ɫ����Ϊע�⣬��������
system_exec_must_success_or_die("vadduser -q 10485760S  qianzhongjie@yet_another_domain.com  0************3");
system_exec_must_success_or_die("vmoduser -c Ǯ�ҽ�  qianzhongjie@yet_another_domain.com ");
#���������������http://domain.com/���Ϳ��Է�����վ�ˡ�
}

#���߽ڣ���װiGenus_Admin(��ѡ)  TOP(�о��û���������ⲻ���� �����vadddomain,vadduser, vmoduser������������������
#WEB���������,���ǽ��鲻Ҫ��װ�����WEB����,��ȫ��һ,�����Ƕ�)

#һ������Web��vpopmail����ʺŹ����ߡ�
#�ο���http://www.igenus.org
#��װ 
sub setup_wemail_admin()
{
system_exec_must_success_or_die("cd /home/pkg");
system_exec_must_success_or_die("tar -xzvf igenus_admin_0.1.tgz -C /var/www/html/ ");

#����
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
# $CFG_VPOPMAIL_USER = \"vpopmail\";��\\��Ϊ����ʺ� 
# $CFG_VPOPMAIL_PASS = \"zoneisgod\"; \\��Ϊ������� 
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
# $CFG_VPOPMAIL_PATH = \"/home/vpopmail\"; \\��Ϊ���vpopmail��װĿ¼��
# // $CFG_VPOPMAIL_PATH = \"/home2/vpopmail\"; 
# 
# $CFG_SYSADMIN_NAME = \"Admin\"; 
# $CFG_SYSADMIN_PASSWD= '$1$GvmONIco$0SwBB.mEoP3KJ5Zda7ioV0'; 
# $CFG_SYSADMIN_PASSWD_FILE = $CFG_VPOPMAIL_PATH . \"/etc/syspasswd.dat\"; 
# $CFG_TIMEOUT = 600; 
# $CFG_IGENUS_ADM = \"iGENUS�ʼ�ϵͳ����\"; 
# $CFG_TEMPLATE_PATH = \"template/\"; 
# 
# } 
# 
# ?>; 



#�����˳� 
system_exec_must_success_or_die("touch /etc/syspasswd.dat");
system_exec_must_success_or_die("chown -R vpopmail.vchkpw /var/www/html ");
system_exec_must_success_or_die("chmod -R 755 /var/www/html ");
#��¼����ҳ�� 
system_exec_must_success_or_die("wget http://yet_another_domain.com/admin/sys/ ");
}
#�û�:Admin����Admin����¼.ע��AҪ��д..��������ʺ������¼����Ըĵ� 

#��¼��,���ȵ�\"�������ݿ�\"��ͻῴ���������.Ȼ���\"�༭\"��\"��¼Ȩ�� �������Ա��Postmaster����Ȩ��¼�����û�����\"��һ���,ȷ�Ϻ�,�Ϳ����� 
#http://yet_another_domain.com/admin/   

#����¼�����ˡ�




#�漰������Ҫ��·��
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

#��򵥵�.
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
