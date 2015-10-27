#!/usr/bin/perl
#2011_01_10_21:46:26 add by greshem
# 现在只有两个 常用的网站，  
#

sub ftp_put_mtime_lt_a_day()
{
	@files=grep { -f } (<*>)	;
	foreach $each (@files)
	{
		if( (-M $each) < 1)
		{
			print "put ".$each."\n";
		}
	}
}

use Cwd;
$pwd=getcwd();
if($pwd=~/petty_china_new/)
{
print <<EOF
#!/usr/bin/lftp -f 
lftp -u teresaweiba,admin123 66.79.178.34/wwwroot/
cd /teresaweiba/wwwroot/petty_china_new/
lcd /var/www/html/petty_china_new/
EOF
;

}
elsif( $pwd=~/sino_pet/)
{
print <<EOF
#!/usr/bin/lftp -f 
lftp -u teresaweiba,admin123 66.79.178.34/wwwroot/
cd /teresaweiba/wwwroot/sino_pet
lcd /var/www/html/sino_pet
EOF
;
}
ftp_put_mtime_lt_a_day();
