#!/usr/bin/perl
package Test_222;
#use Exporter;
#our @ISA=qw(Exporter);
#our @EXPORT =qw(new hellow);

sub new
{
	print "Now new \n";
	########################################################################
	#这里的三步很重要. 
	my $class=shift;
	my $self={};
	return bless $self, $class;
	########################################################################
}
sub hellow
{
	my $self=shift;
	print "hellow\n";

}
1;


#use Test_222;
#$a=Test_222->new();
$a= new Test_222;
#Test_222::hellow();
$a->hellow();
$a.hellow();
