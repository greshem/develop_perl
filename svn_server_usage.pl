#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
yum install mod_svn_dav
########################################################################
# /etc/httpd/conf.d/subversion.conf
########################################################################
<Location /svn>
	DAV svn
	SVNPath /home/svn
	AuthType Basic
	AuthName "myproject subversion repository"
	AuthUserFile /etc/subversion/passwd
	Require valid-user
</Location>
########################################################################
�����ļ�

<Location /svn>
	DAV svn
	SVNParentPath /home/svnuser/svn
	AuthType Basic
	AuthName "myproject subversion repository"
	AuthUserFile /etc/subversion/passwd
	Require valid-user
</Location>
########################################################################

4. �û���֤
#������������Ҫ���� /etc/subversion/passwd �ļ������ļ��������û���Ȩ����ϸ��Ϣ��Ҫ����û���������ִ����������
sudo htpasswd -c /etc/subversion/passwd user_name
#������ʾ���������룬�������������룬���û��ͽ�����
#���������û�ȥ��-c����������
sudo htpasswd /etc/subversion/passwd user_name
#������ͨ������������������ļ��ֿ⣺
#$ svn co http://hostname/svn/myproject
#������ʾ�������û��������롣������������ʹ�� htpasswd ���õ����롣��ͨ����֤����Ŀ���ļ��ͱ�ǩ����
########################################################################
htpasswd -c /etc/subversion/passwd root
htpasswd  /etc/subversion/passwd qianzhongjie
htpasswd  /etc/subversion/passwd wenshuna


