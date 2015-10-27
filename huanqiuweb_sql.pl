#!/usr/bin/perl
#use strict;
use DBI;
use array_tools;
my $host='localhost';
my $port='3306';
my $user="root";
my $passwd='q********************n';
my $dsn="dbi:mysql:hostname=$host:port=$port:";

$dbname="huanqiuweb";#or die("Usage: $0 database_name table \n");
$table = shift ;#or die("Usage: $0 database_name table \n");

$field=shift;
my $dbh= DBI->connect($dsn,$user,$passwd);
my %database;
unless ($dbh)
{
        die "Connect error!\n";
}
#depth1历遍所有的database
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

		#depth2历遍里面所有的表。 
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
				# #  历遍 里面所有的字段。 
				while( my @array= $tth_table->fetchrow_array())
				{
					print "\t\t", $array[0],"\n";
					#push(@fields, $array[0]);
				}
				
			}
		
        }
	
		if(defined($field))
		{	
			print "###############################################################################\n";
			$select="select $field from $table";
			my $handle=$dbh->prepare("$select");
			$handle->execute;
			while(my @arr=$handle->fetchrow_array())
			{
				#print @arr."\n";
				map{print $_,"|";} @arr;
				print "\n";
			}
		}
$dbh->disconnect();



