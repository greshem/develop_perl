#!/usr/bin/perl
#use strict;
#./mysql_tree_depth3_table_info.pl mysql help_topic name description
use DBI;
use array_tools;
my $host='localhost';
my $port='3306';
my $user="root";
my $passwd='q********************n';
my $dsn="dbi:mysql:hostname=$host:port=$port:";

$dbname= "mysql" ;#or die("Usage: $0 database_name table \n");
$table = "help_topic";#or die("Usage: $0 database_name table \n");

my @fields=qw(name description url );

while(1)
{
	$tmp=shift;
	if(! defined($tmp))
	{
		last;
	}
	push(@fields, $tmp);
}
my $dbh= DBI->connect($dsn,$user,$passwd);
my %database;
unless ($dbh)
{
        die "Connect error!\n";
}
#depth1�������е�database
		if( $dbname)
		{
			$dbh->do("use $dbname");
		}
		else
		{
		
			my $handle=$dbh->prepare("show databases");
			$handle->execute;
			$i=0;
			while(my @arr=$handle->fetchrow_array())
			{
				map{print $_,"\t";}  @arr;
				#shift_n( \@arr, 10);
				if($i>10)
				{
					$i=0;
					print "\n";
				}
				$i++;
			}
			print "\n";
			exit(0);
		}
       
		
		my $show_table="show tables";
        my $sth_table= $dbh->prepare("$show_table");
        $sth_table->execute;

		#depth2�����������еı��� 
        while ( my @rr = $sth_table->fetchrow_array())
        {
			# print "mysqldump --opt $row[0] $rr[0]>$row[0]_$rr[0].sql.gz\n";
			print "\t", $rr[0],"\n";
			push @{$database{$row[0]}}, $rr[0];
			
			if($rr[0]=~/^$table$/)
			#depth3
			{		

				my $tth_table=$dbh->prepare("describe $rr[0]");
				$tth_table->execute;
				my @fields=();
				# #  ���� �������е��ֶΡ� 
				while( my @array= $tth_table->fetchrow_array())
				{
					print "\t\t", $array[0],"\n";
					#push(@fields, $array[0]);
				}
				
			}
		
        }
	
		if(scalar(@fields)> 0 )
		{	
			print "###############################################################################\n";
			foreach(@fields)
			{	
				#filed1,fields2 ֮��Ҫ�пո�-> fields,  fields
				$tmp .= $_.", ";
			}
			$tmp=~s/,\s+$//g;
			################################################################################
			print "|||| ".$tmp."\n";
			$select="select ".$tmp."  from $table";
			my $handle=$dbh->prepare($select);
			$handle->execute;
			while(my @arr=$handle->fetchrow_array())
			{
				#print @arr."\n";
				map{print $_,"|";} @arr;
				print "\n###############################################################################\n";
			}
		}
$dbh->disconnect();


