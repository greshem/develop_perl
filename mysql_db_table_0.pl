#!/usr/bin/perl
#use strict;
use DBI;
my $host='localhost';
my $port='3306';
my $user="root";
my $passwd='q********************n';
my $dsn="dbi:mysql:hostname=$host:port=$port:";

$dbname=shift or die("Usage: $0 database_name\n");
$table=shift ;

my $dbh= DBI->connect($dsn,$user,$passwd);
my %database;
unless ($dbh)
{
        die "Connect error!\n";
}
#历遍所有的database
        $dbh->do("use $dbname");
       
		
		my $show_table="show tables";
        my $sth_table= $dbh->prepare("$show_table");
        $sth_table->execute;

		# 历遍里面所有的表。 
        while ( my @rr = $sth_table->fetchrow_array())
        {
			# print "mysqldump --opt $row[0] $rr[0]>$row[0]_$rr[0].sql.gz\n";
			print "\t", $rr[0],"\n" if ( $rr[0]=~/$table/);

			push @{$database{$row[0]}}, $rr[0];
			
			if($table && $rr[0]=~/$table/)
			{		
				my $tth_table=$dbh->prepare("describe $table");
				$tth_table->execute;
				my @fields=();
				#  历遍 里面所有的字段。 
				while( my @array= $tth_table->fetchrow_array())
				{
					print "\t\t", $array[0],"\n";
					#push(@fields, $array[0]);
				}
				
			}
		
        }

$dbh->disconnect();



