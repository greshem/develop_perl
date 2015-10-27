#!/usr/bin/perl
#2010_08_21_23:52:15 add by qzj
#随机生成中国的乡镇的地址。 
use DBI;

my $dsn = 'DBI:mysql:huanqiuweb:localhost';
my $db_user_name = 'root';
my $db_password = 'q********************n';
my ($id, $password);
my $dbh = DBI->connect($dsn, $db_user_name, $db_password);


###############################################################################
#获取总的count
my $sth = $dbh->prepare(qq{
	select count(*) from Company_table;;
});
$sth->execute();
($count)=$sth->fetchrow_array();

$offset=rand($count);
###############################################################################
$sth = $dbh->prepare(qq{
	select Co_address from Company_table;;
});

$i=0;
$sth->execute();
while (my ($address ) = $sth->fetchrow_array()) 
{
	$i++;
	if($i>=$offset)
	{
    	print "$address\n";
		exit();
	}
}

