#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
20100330. 
1. mail -s "testmail" root@yecha.com < /etc/passwd  
   �����ʼ��� 
2. vchkcheck ��ʱ�� һ�����ڲ��� MAILDIR �Ļ��������� �仯���ˡ� 
3. qmail-local.c Ͷ�ݵ�ʱ��  ���� ��Ӧ��/home/vpopmail/domains���� ����  xx7 Ȩ���ǲ�����ģ� �������û��ǲ�����дȨ�޵ģ� ������м��ģ� ���� .qmail ����д��Ҳ�� DIE���˳����� �����ʼ��Ķѻ��� 
�� /var/log/qmail/current ���Ĵ����ҵ��� �� ���漰���� strerr_die4sys ע�͵��� make ֮�� 
copy  qmail-local ��/var/qmail/bin �Ϳ����ˡ� 
4.  /services Ĭ�ϵ�daemon-tools ���Զ� Ĭ��ɨ�����Ŀ¼�µĿ�ִ�е��ļ�������ִ�У� 
    qmail-pop3d -> /var/qmail/supervise/qmail-pop3d
    ������������ pop3d ��ʱ�� ���� �� /var/qmail/supervise/qmail-pop3d, ���ӹ�ȥ�� 
5. php.ini ����Ĳ����  sendmail -i -t < aaa.eml  
   ��Ӧ�� 
 sendmail_path = /usr/sbin/sendmail -t -i
 sendmail_path = /usr/sbin/sendmail 
 �����ʧ�ܵġ� 

20100407
�����û�һ��Ҫ�Ƚ�������
0. ./vadddomain  qianlong2.net
1. ./vdeldomain  qianlong2.net ɾ��
2. �����û��� 
	./vadduser  qianlong@qianlong2.net ������������ˡ� 
6. ��˾�ڲ�����Աȫ�����룬 ��OPPOM �����ʼ�Ⱥ���Ĺ��ܲ��ԡ� 
######
20100407
1. vpopmail���ܶ�ȡ�ļ������⣬ 
  root/netqmail-1.05/open_append.c
  int open_append(fn) char *fn;
{ return open(fn,O_WRONLY | O_NDELAY | O_APPEND | O_CREAT,0600); }, 0600 �޸ĳ� 0666. 

2. qmail ��֤�Լ�һֱ���еķ�ʽ�� 
SV:123456:respawn:/command/svscanboot
���� svscanboot Ҳ��ÿ�������Լ���Ҫ����Ŀ¼�µ�ִ�г��� ����û�������Ļ��� �Լ����������� ��������ɱ����QMAIL �ġ� 
3. 

#2010_09_20_23:40:14 add by greshem
1. http://192.168.0.234/php_webmail/igenus/index.php
   web��ǰ̨ҳ�棬 ������֤�����ʼ�ϵͳ�Ƿ���ȷ�� 
2. pdns ����DNS��¼�ģ� ��һ��DNS��������CACHE�������� 
