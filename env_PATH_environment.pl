#!/usr/bin/perl
use Win32::Env;
# Retrieving value
#ENV_SYSTEM


add_path_to_ENV_VAR("PATH",	   "c:\\bin");
add_path_to_ENV_VAR("PATH",	   "c:\\cygwin\\bin");
add_path_to_ENV_VAR("PATH",	   "C:\\Ruby192\\bin");
add_path_to_ENV_VAR("PATH",	   "c:\\Perl\\bin");
add_path_to_ENV_VAR("PATH",	   "C:\\q********************n_bin");
add_path_to_ENV_VAR("PATH",	   "C:\\Program Files\\Vim\\vim73");
add_path_to_ENV_VAR("PATH",	   "C:\\Program Files\\Bakefile");
add_path_to_ENV_VAR("PATH",	   "C:\\Program Files\\Wireshark");
add_path_to_ENV_VAR("PATH",	   "C:\\Program Files\\Ext2Fsd");
add_path_to_ENV_VAR("PATH",	   "C:\\Program Files\\Subversion\\bin");
add_path_to_ENV_VAR("PATH",	   "C:\\Program Files\\WinCDEmu");


add_path_to_ENV_VAR("INCLUDE",	"D:\\works\\wxWidgets-2.8.10\\include");
add_path_to_ENV_VAR("INCLUDE",	"I:\\svn_working_path\\rich_netclone2\\trunk\\Baselib");
add_path_to_ENV_VAR("INCLUDE",	"I:\\svn_working_path\\rich_netclone2\\trunk\\Baselib");


add_path_to_ENV_VAR("LIB", "D:\\works\\wxWidgets-2.8.10\\lib\\vc_lib");


		

# Broadcasting message about our changes
BroadcastEnv()

########################################################################
# Setting new value
#注意有些值是 ENV_USER 需要修改一下的.
sub add_path_to_ENV_VAR($$)
{
	(my $var,$in)=@_;
	if(! -d $in)
	{
		print $in."目录不存在\n";
		return ;
	}
	#my $user_path=GetEnv(ENV_USER, 'PATH');
	my $user_path=GetEnv(ENV_SYSTEM, $var);
	print $user_path;
	if($user_path=~/$in/)
	{
		print $in."已经存在了\n";
		return ;
	}
		
	$user_path.=$in;	
	#print join("|", split(/;/, $user_path));

	SetEnv(ENV_SYSTEM, 'PATH', $user_path);
}


########################################################################
#获取所有的变量.
sub getAllVarInEvn()
{
	# Retrieving list of all variables in environment
	my @vars=ListEnv(ENV_USER);
	print(join('|', @vars));
	return @vars;
}

########################################################################
sub delVarInEvn()
{
	# Deleting value
	#DelEnv(ENV_USER, 'PATH');
}
