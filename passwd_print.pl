#!/usr/bin/perl
package passwd_Print;
#2011_03_17_19:13:40   ������   add by greshem
sub new{
	my $class=shift;
	my $self={};
	return bless $self,$class;
};

sub read{
	my $self=shift;
	open(FILE, "/etc/passwd") or die("open file $!");
	for(<FILE>)
	{
		chomp;
		@array=split(/:/, $_);
		$name=$array[0];
		$shell=$array[6];
		$self->{$name}=$shell;
	}	
};

sub getShell{
	my $self=shift;
	my $name=shift;
	return $self->{$name};
};

sub dump{
	my $self=shift;
	for(keys(%{$self}))
	{
		print $_,"->",$self->{$_},"\n";
	}
};
########################################################################
#ò��û���������1 Ҳû��ʲô��ϵ.   
#1;

#use passwd_Print;
$a=passwd_Print->new();
$a->read();
print $a->getShell("root");
print $a->getShell("adm");
$a->dump();
