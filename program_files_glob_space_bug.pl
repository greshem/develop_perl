#!/usr/bin/perl
#my @tmp=glob('C:/Program\ Files/*'); #ÕýÈ·
my @tmp=glob("C:/Program\ Files/*"); #´íÎó.
my @tmp=glob("C:/Program Files/"); #´íÎó.
print @tmp;

#==========================================================================
#method 2
File::DosGlob::doglob("C:\\Program Files\\");

