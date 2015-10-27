#!/usr/bin/perl
open(PIPE, " gsl-randist |") or die(" gsl-randist not exists \n");

for(<PIPE>)
{
	if($_=~/^\s+(\S+)/)
	{
		#print $1."\n";
		my $name= $1;
		print("gsl-randist 0 10000 $name 30 | gsl-histogram -100 100 200 > histogram_$name.dat \n");
		system("gsl-randist 0 10000 $name 30 | gsl-histogram -100 100 200 > histogram_$name.dat \n");

	}
}
__DATA__
gsl-randist 
Usage: gsl-randist seed n DIST param1 param2 ...
Generates n samples from the distribution DIST with parameters param1,
param2, etc. Valid distributions are,

  beta
  binomial
  bivariate-gaussian
  cauchy
  chisq
  dir-2d
  dir-3d
  dir-nd
  erlang
  exponential
