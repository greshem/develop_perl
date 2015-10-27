#!/usr/bin/perl
use Cwd;
use File::Basename;
$pwd=cwd();
#$pwd="/cygdrive/c/bbbbbbbb/eeee";
$basename = basename($pwd);
$pwdWin=change2Win($pwd);
open(FILE, $basename."_share.bat");
print FILE  "net share $basename=$pwd  \r\n";
print  "net share $basename=$pwdWin  \r\n";
#print  "net share $basename=$pwd  \n";
print "pause\n";
close(FILE);

sub change2Win($)
{
	($in)=@_;
	my $in2;
	if($in =~ /\/cygdrive\/([a-z]{1})\/(.*)/)
	{
		$in2=$1.":/".$2;
	}
	$in2=~s|/|\\|g;
	return $in2;
}
########################################################################
#net share LogTrans=j:\vss_working_path\[C]委托系统\委托服务平台\LogTrans  
#pause
