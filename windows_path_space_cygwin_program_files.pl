#!c:\\perl\\perl.exe
#==========================================================================
#1. File::DosGlob::doglob  �ܺõĽ����   �ո� ������,  �ο�����ĳ���. 
#C:\Perl\bin>perlglob.bat "c:\Program Files"

#���Բο� /root/bin/search_function_def_4_win.pl  ������� ���пո�·���Ĵ���. 

########################################################################
#print "asdfafasd\n";
$desktop_dir= 'C:/Documents\ and\ Settings/Administrator/����/*.lnk';
#$desktop_dir= "C:\\Documents\ and\ Settings\\Administrator\\����\\\*.lnk";
$all_shortcuts=  "C:\\Documents and Settings\\Administrator\\����\\��ݷ�ʽ_all";
$all_shortcuts_linux=  'C:/Documents and Settings/Administrator/����/��ݷ�ʽ_all';
if (! -d $all_shortcuts)
{
	print "��ݷ�ʽĿ¼������\n";
	mkdir( $all_shortcuts_linux);
}
else
{
	print "��ݷ�ʽĿ¼����\n";
}

#print  join("\n", glob('C:/All\ Users/bbbb/*'));
#print join("\n", glob('C:\\Documents\ and\ Settings\\\*.txt'));
#print join("\n", glob('C:\\Documents\ and\ Settings\\Administrator\\\*'));
########################################################################
#����.
#print join("\n", glob('C:\\Documents\ and\ Settings\\Administrator\\����\\\*')); #����.
#print join("\n", glob('C:/Documents\ and\ Settings/Administrator/����/*')); 	#OK

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
