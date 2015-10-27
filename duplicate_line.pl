#!/usr/bin/perl
my $file= shift  or die("Usage: $0 input_file\n");

open(FILE, $file) or die("open file error\n");
print "#please include /bin/echo_color.sh \n";
for $each (<FILE>)
{
	chomp($each);
	print "echo_color   \"$each\""." \n";
	print $each ."\n\n";;
}
