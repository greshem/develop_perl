#!/usr/bin/perl

########################################################################
#2011_01_12_10:40:24 add by greshem
#不对自己做任何的操作, 不应该对自己这个程序， 做任何命名的修改. 
# 添加 delete 之后， 可以 恢复， 原状. 
#  name  文件 在有 name.orig 的时候， 不在 move 了, 认为是 name 是 name.orig.n 的拷贝了. 

########################################################################
# 2011_01_11_17:54:40 add by greshem
# 1. 先把所有的文件 move 成 name.orig, inode 不变. 
# 2. 然后 再拷贝文件到  name1 name2 name3 name4 ， inode 增加了. 
# 3. 清空的时候, 把 name.org move 成 name, inode 不变.  
#  filename.suffix 变成  filename.suffix.数字

########################################################################
#2010_12_28_18:59:01 add by greshem
# 这里当前目录的分布是，  name_数字.suffix 

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
	# 跳过. 
	if($_ eq $self)
	{
		print "#是自身 程序文件，  skip \n";
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
