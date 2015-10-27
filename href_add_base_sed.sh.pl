#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
url='http:\/\/pypi.python.org\/'
sed "s/href=\"/href=\"$url/g" all_list.html

