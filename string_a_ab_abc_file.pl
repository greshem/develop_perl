#!/usr/bin/perl
$in=shift or die("usage: $0 string\n");
print lc(substr($in, 0, 1)),"/", lc(substr($in, 0,2)), "/",$in;
