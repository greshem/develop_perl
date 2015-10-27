#!/usr/bin/perl
#if [ ! $# -eq 1 ];then
#	echo "$0 file.php"
#	exit 1
#fi
#if ! grep "require_once 'Log.php'" $1;then
#
#sed -i -e '/<?/q;r  /root/php_logger_append/logger.php;q'  $1
#else
#echo "already add logger"
#fi
$file=shift or die("Usage: $0 file");
open(FILE, $file) or die("open file error\n");
$first=1;

for(<FILE>)
{
	if(/<?/)
	{
		if($first)
		{
			print $_;
			appendFile();
			$first=undef;
		}
		else
		{
			print $_;
		}
	}
	else
	{
		print $_;
	}
}

sub appendFile()
{
	for(<DATA>)
	{
		print $_;
	}
}
__DATA__
<? include("/var/www/html/login_session/index.php")?>
