#!/usr/bin/perl
@array=qw(aa bb cc dd ee fff);
$a=\@array;
print ref($a);
if( ref($a) ne "ARRAY")
{
	die(" a is not a array\n");
}

for( @{$a})
{
	print $_."\n";
}

########################################################################
#
print "#================================================================\n";
print "´¦Àíhash\n";
%hash=("aa"=>"bb",
	   "bb"=>"cc",
		"ee"=>"ff");

$a=\%hash;

for(keys(%{$a}))
{
	print $_."=>".%{$a}->{$_}."\n";;
}
