#!/usr/bin/perl
sub test()
{
	print "this is fun\n";
}

$fun_ptr=\&test;
print ref($fun_ptr);
