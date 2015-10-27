#!/usr/bin/perl -w

use strict;
use DBI;

my $count = 0;
$ARGV[0] or die("usage: $0 word\n");
#my $query = "insert into software_table (id, name,start_time,subject,summary) values ('', '$name', '$start_time', '$subject', '$summary') ;";
#my $query = "select subject  from software_table ;";
my $query = "select name, description  from software_table  where description like '%$ARGV[0]%';";
print $query,"\n";

my $dbh = DBI->connect (
    #"dbi:mysql:database=huanqiuweb:host=localhost;mysql_emulated_prepare=0",
    "dbi:mysql:database=sf_mirror:host=localhost;",
    "root", "q********************n",
    { RaiseError => 1, PrintError => 0 },
    );

my $s_q = $dbh->prepare($query);
   $s_q->execute();

while(  my @data = $s_q->fetchrow_array())
{
	print "size ", scalar(@data),"\n";
	print "Name:-->" , $data[0],"\n"; 
	print "Description:-->", $data[1],"\n";
	print "#"x80,"\n";
}
$s_q->finish;
$count++;

#print "ran $count queries\r";


