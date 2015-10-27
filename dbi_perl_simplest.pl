#!/usr/bin/perl
use DBI;

my $dsn = 'DBI:mysql:huanqiuweb:localhost';
my $db_user_name = 'root';
my $db_password = 'q********************n';
my ($id, $password);
my $dbh = DBI->connect($dsn, $db_user_name, $db_password);

my $sth = $dbh->prepare(qq{
	select count(*) from Company_table;;
});
$sth->execute();

while (my ($count ) = 
    $sth->fetchrow_array()) 
{
     print "$count\n";
}
$sth->finish();

