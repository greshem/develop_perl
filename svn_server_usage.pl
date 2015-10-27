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
密码文件

<Location /svn>
	DAV svn
	SVNParentPath /home/svnuser/svn
	AuthType Basic
	AuthName "myproject subversion repository"
	AuthUserFile /etc/subversion/passwd
	Require valid-user
</Location>
########################################################################

4. 用户认证
#接下来，您需要创建 /etc/subversion/passwd 文件，该文件包含了用户授权的详细信息。要添加用户，您可以执行下面的命令：
sudo htpasswd -c /etc/subversion/passwd user_name
#它会提示您输入密码，当您输入了密码，该用户就建立了
#如果是添加用户去掉-c参数就行了
sudo htpasswd /etc/subversion/passwd user_name
#您可以通过下面的命令来访问文件仓库：
#$ svn co http://hostname/svn/myproject
#它会提示您输入用户名和密码。您必须输入您使用 htpasswd 设置的密码。当通过验证，项目的文件就被签出了
########################################################################
htpasswd -c /etc/subversion/passwd root
htpasswd  /etc/subversion/passwd qianzhongjie
htpasswd  /etc/subversion/passwd wenshuna


