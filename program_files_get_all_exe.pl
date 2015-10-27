#!/usr/bin/perl
#bug_30m: 注意不能  写成  
#	File::DosGlob::doglob(1,"c:\\Program Files\\*);
#my @m = File::DosGlob::doglob(1,'c:\\Program\ Files\\*');
#	第二个作为参数 被分割成了多个模式.  按照 DosGlob.pm 里面的写法. 
#	建议把 模式作为一个变量 就ok了 

use  File::DosGlob qw(doglob);

our @all_exe;

$pattern="c:\\Program Files\\*\\*.exe";
my @m = File::DosGlob::doglob(1,$pattern);
push(@all_exe, @m);

$pattern="c:\\Program Files\\*\\*\\*.exe";
my @m = File::DosGlob::doglob(1,$pattern);
push(@all_exe, @m);
$pattern="c:\\Program Files (x86)\\*\\*.exe";
my @m = File::DosGlob::doglob(1,$pattern);
push(@all_exe, @m);

$pattern="c:\\Program Files (x86)\\*\\*\\*.exe";
my @m = File::DosGlob::doglob(1,$pattern);
push(@all_exe, @m);



quotation_line(@all_exe);

#==========================================================================
#print_array_with_
sub quotation_line(@)
{
	(my @lines)=@_;
	for $each (@lines)
	{
		chomp($each) unless($each=~/\n$/);
		print "\"$each\"\n";
	}

}
