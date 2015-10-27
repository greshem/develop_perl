#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
#!/bin/bash
find . |grep '\.h$' |sed 's/^/#include \"/g'  |sed 's/$/\"/g'  

