#!/usr/bin/perl
#bug_30m: ע�ⲻ��  д��  
#	File::DosGlob::doglob(1,"c:\\Program Files\\*);
#my @m = File::DosGlob::doglob(1,'c:\\Program\ Files\\*');
#	�ڶ�����Ϊ���� ���ָ���˶��ģʽ.  ���� DosGlob.pm �����д��. 
#	����� ģʽ��Ϊһ������ ��ok�� 

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
