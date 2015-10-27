#!/usr/bin/perl
#use strict;
use DBI;
my $host='localhost';
my $port='3306';
my $user="root";
my $passwd='q********************n';
my $dsn="dbi:mysql:hostname=$host:port=$port:";

my $dbh= DBI->connect($dsn,$user,$passwd);
my %database;
unless ($dbh)
{
        die "Connect error!\n";
}
my $sql="show databases";
my $sth= $dbh->prepare("$sql");
$sth->execute;
#历遍所有的database
while (my @row=$sth->fetchrow_array())
{
		print $row[0],"\n";
        $dbh->do("use $row[0]");
		$database{$row[0]}=[];
       
		
		my $show_table="show tables";
        my $sth_table= $dbh->prepare("$show_table");
        $sth_table->execute;

}
$dbh->disconnect();



