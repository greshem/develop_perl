#!c:\\perl\\perl.exe
#==========================================================================
#1. File::DosGlob::doglob  很好的解决了   空格 的问题,  参看下面的程序. 
#C:\Perl\bin>perlglob.bat "c:\Program Files"

#可以参看 /root/bin/search_function_def_4_win.pl  里面对于 含有空格路径的处理. 

########################################################################
#print "asdfafasd\n";
$desktop_dir= 'C:/Documents\ and\ Settings/Administrator/桌面/*.lnk';
#$desktop_dir= "C:\\Documents\ and\ Settings\\Administrator\\桌面\\\*.lnk";
$all_shortcuts=  "C:\\Documents and Settings\\Administrator\\桌面\\快捷方式_all";
$all_shortcuts_linux=  'C:/Documents and Settings/Administrator/桌面/快捷方式_all';
if (! -d $all_shortcuts)
{
	print "快捷方式目录不存在\n";
	mkdir( $all_shortcuts_linux);
}
else
{
	print "快捷方式目录存在\n";
}

#print  join("\n", glob('C:/All\ Users/bbbb/*'));
#print join("\n", glob('C:\\Documents\ and\ Settings\\\*.txt'));
#print join("\n", glob('C:\\Documents\ and\ Settings\\Administrator\\\*'));
########################################################################
#错误.
#print join("\n", glob('C:\\Documents\ and\ Settings\\Administrator\\桌面\\\*')); #错误.
#print join("\n", glob('C:/Documents\ and\ Settings/Administrator/桌面/*')); 	#OK

#print join("\n", glob('C:\\Documents\ and\ Settings\\All Users\\\*'));
#print join("\n", glob('C:\\Documents\ and\ Settings\\\*'));
#print join("\n", glob('c:\\a\ b\\\*.lnk'));

foreach (grep { -f } glob($desktop_dir))
{
	print $_."|\n";
	my $win_path=$_;
	$win_path=~s/\//\\/g;

	$mv_cmd= "move ".add_mark($win_path)."  ".add_mark($all_shortcuts);
	system("$mv_cmd");
	print $mv_cmd."\n";
	#print "mv $_  $all_shortcuts\n";
}
sub add_mark($)
{
	(my $line)=@_;
	$line=~s/^/\"/g;
	$line=~s/$/\"/g;
	return $line;

}
