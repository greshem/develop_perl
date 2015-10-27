#!/usr/bin/perl

########################################################################
#2011_01_12_10:40:24 add by greshem
#�����Լ����κεĲ���. 

########################################################################
# 2011_01_11_17:54:40 add by greshem
# 1. �Ȱ����е��ļ� move �� name.orig, inode ����. 
# 2. Ȼ�� �ٿ����ļ���  name1 name2 name3 name4 �� inode ������. 
# 3. ��յ�ʱ��, �� name.org move �� name, inode ����.  

########################################################################
#2010_12_28_18:59:01 add by greshem
# ���ﵱǰĿ¼�ķֲ��ǣ�  name_����.suffix 

use File::Basename;
use File::Copy;

my $self=$0;
$self= basename($self); 
print "#".$self,"\n"; 
@file=grep { -f } glob("*");
#$delete=undef;
my $stat;
foreach (@file)
{
	my $count=0;
	if($_ eq $self)
	{
		#continue;
		print "#SELF skip \n";
		next;
	}
	my $name, $suffix;	
	#print "####################################################################\n";;
	if($_!~/orig$/ &&  $_!~/\.\d+$/)
	{
		$stat="protect_inode_with_move";
		($name, $suffix)=($_=~/(.*)\.(.*).orig/) ;
	}
	elsif($_=~/\.\d+$/)
	{
		$stat="have_copyed_skip";
		($name, $suffix, $number)=($_=~/(.*)\.(.*)\.(\d+)/) ;
		if($number > $count)
		{
			$count=$number;
			#$count++;
		}
	}
	else
	{
		$stat="copy_file";
		($name, $suffix)=($_=~/(.*)\.(.*)/) ;
	}
	
	########################################################################
	if( ! defined($name))
	{
		$name=$_;
		$suffix="";
	}

	########################################################################
	#
	print "#stat-> ".$stat."\n";
	if($stat=~"protect")
	{
		print <<EOF
mv $_  $_.orig
EOF
;
	}
	elsif ($stat=~"skip")
	{
		print "# $_ file copyed , skip\n";
	}
	elsif ($stat=~"copy_file")
	{
		for $item (1..10)
		{
			$count++;
			print <<EOF
cp $_ $_.$count
EOF
;
		}
	}

}
