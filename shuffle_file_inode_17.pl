#!/usr/bin/perl

########################################################################
#2011_01_12_10:40:24 add by greshem
#�����Լ����κεĲ���, ��Ӧ�ö��Լ�������� ���κ��������޸�. 
# ��� delete ֮�� ���� �ָ��� ԭ״. 
#  name  �ļ� ���� name.orig ��ʱ�� ���� move ��, ��Ϊ�� name �� name.orig.n �Ŀ�����. 

########################################################################
# 2011_01_11_17:54:40 add by greshem
# 1. �Ȱ����е��ļ� move �� name.orig, inode ����. 
# 2. Ȼ�� �ٿ����ļ���  name1 name2 name3 name4 �� inode ������. 
# 3. ��յ�ʱ��, �� name.org move �� name, inode ����.  
#  filename.suffix ���  filename.suffix.����

########################################################################
#2010_12_28_18:59:01 add by greshem
# ���ﵱǰĿ¼�ķֲ��ǣ�  name_����.suffix 

use File::Basename;
use File::Copy;

my $delete_file=0;
if( grep {"/del|delete/"} @ARGV)
{
	$delete_file=1;	
}

my $self=$0;
$self= basename($self); 
print "#".$self,"\n"; 
@file=grep { -f } glob("*");
#$delete=undef;
my $stat;

if($delete_file)
{
	foreach (@file)
	{
		if($_=~/orig$/) 
		{
			$to=$_;
			$to=~s/\.orig$//g;
			if(-f $to)
			{
				print <<EOF
			rm -f $to
EOF
;
			}
			print <<EOF
			mv  $_ $to
EOF
;
		}
		elsif( $_=~/\orig.\d+$/)
		{
			print "rm -f ".$_."\n";
		}
	}
	
	exit(1);
}

foreach (@file)
{
	my $count=0;
	my $name, $suffix;	
	########################################################################
	# ����. 
	if($_ eq $self)
	{
		print "#������ �����ļ���  skip \n";
		next;
	}
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
		if(! -f $_.".orig")
		{
			print <<EOF
mv $_  $_.orig
EOF
;
		}
	}
	elsif ($stat=~"skip")
	{
		print "# $_ file copyed , skip\n";
	}
	elsif ($stat=~"copy_file")
	{
		$orig_name=$_;
		$orig_name=~s/\.orig//;
		for $item (1..10)
		{
			$count++;
			print <<EOF
cp $_ $_.$count
cp $_.$count $orig_name 
EOF
;
		}
	}

}
