#!/usr/bin/perl
@a;
push(@a, sub{
			(my $line)=@_;
			print "this is name of ".$line."\n";
			});

#$a[0]->("test");
$b=$a[0];
print ref($b)."\n";
$b->("test");
