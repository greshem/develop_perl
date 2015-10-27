#!/usr/bin/perl
#c:\\bin\\perl.exe
use File::Copy::Recursive qw(pathrm pathempty);
for(<*>)
{
	if(-f $_ && $_=~/\.ncb|\.plg|\.opt|\.positions|UpgradeLog.XML|MakeFile.aps|^_UpgradeReport|.suo$|.aps$|suo.old$|sln.old$|7.10.old$/i)
	{
		print "rm -rf ", $_,"\n";
		unlink($_);
	}
	elsif(-d $_ && $_=~/Debug$|Release$|_UpgradeReport_Files$/)
	{
		pathempty($_);
		pathrm($_);
		print "rm -rf ", $_,"\n";
	}
}
