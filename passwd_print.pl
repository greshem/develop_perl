#!/usr/bin/perl
package passwd_Print;
#2011_03_17_19:13:40   星期四   add by greshem
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
#貌似没有最后的这个1 也没有什么关系.   
#1;

#use passwd_Print;
$a=passwd_Print->new();
$a->read();
print $a->getShell("root");
print $a->getShell("adm");
$a->dump();
