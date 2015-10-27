#!/usr/bin/perl
 use feature qw(switch say);

$a="linux";
@b=qw(ff bb cc dd ee ff gg linux  bbb123 , linux124);
if(/124$/~~@b)
{
	print "in array\n";
}
#say (@b);
print (@b);

