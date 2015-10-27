#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
while  [ 1 ]; do /etc/cron.daily/z_cpan_install_100.sh   >  /dev/null 2>&1 ; done

