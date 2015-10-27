#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#ifndef __SOME_THING__HEADER
#define __SOME_THING__HEADER

class info {
	int a;
	int b;
};

#endif
