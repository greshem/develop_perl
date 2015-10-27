#!/usr/bin/perl
package iso_config;

sub new
{
	#print "Now new \n";
	#这里的三步很重要. 
	my $class=shift;
	my $self={};
	return bless $self, $class;
	########################################################################
}
sub init()
{
	my $self=shift;
	printv"hellow\n";

}
1;


