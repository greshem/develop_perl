#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
use SUPER
SUPER::find_parent();
SUPER::super;
DB::uplevel_args();
caller
use overload 
