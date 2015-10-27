
use DBI;


my $dbh = DBI->connect("dbi:SQLite:dbname=BaiduYunGuanjia.db","","");


# select   server_path, file_size  from cache_file;
 my $s_q =$dbh->prepare(" select   server_path, file_size  from cache_file; ");


use Encode;

    $s_q->execute();

    while( my @data=$s_q->fetchrow_array())
    {
		#print $data[0]."\n";

    	my $filename=encode("gb2312", decode("utf-8", $data[0]));
		my $size=$data[1];
		print $filename."|$size\n";
	}
