#!/usr/bin/perl
#my @tmp=glob('C:/Program\ Files/*'); #��ȷ
my @tmp=glob("C:/Program\ Files/*"); #����.
my @tmp=glob("C:/Program Files/"); #����.
print @tmp;

#==========================================================================
#method 2
File::DosGlob::doglob("C:\\Program Files\\");

