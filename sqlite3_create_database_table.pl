
use DBI;

unlink("/tmp/test2.sqlite");
$yum_sqlite="/tmp/test2.sqlite";

my $dbh = DBI->connect("dbi:SQLite:dbname=$yum_sqlite","","");

#create table 
my $s_q =$dbh->prepare("
CREATE TABLE try_it_on (
id BITINT,
name TEXT
);
");
$s_q->execute() or die("create table error $!\n");


#insert data;
for(1..10)
{
	my $number=$_;
	$s_q =$dbh->prepare(" INSERT INTO try_it_on VALUES($number,'kakao'); ");
	$s_q->execute() ;
}

