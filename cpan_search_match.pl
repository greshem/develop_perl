#!/usr/bin/perl
use CPAN;
#use List::MoreUtils qw(shuffle);
use List::Util qw(shuffle);
$pattern=shift or usage();
$CPAN::DEBUG=1;

@a=CPAN::Shell->expand("Module","/$pattern/");                      
for ( @a )
{
#	$_->force();
 	CPAN::Module::force($_);
#CPAN::Shell->expand('Module',  $_->{ID})->install(); 
	print $_->{ID},"\n";
}

sub usage()
{
	print $0." pattern \n";
	print "Example\n";
	print "\t".$0." Math::Random\n";
	print "\t".$0." Math::\n";
	print "\t".$0." Digest::\n";
	print "\t".$0." Template::\n";
	exit(0);
}
