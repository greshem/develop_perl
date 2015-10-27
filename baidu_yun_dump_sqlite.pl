
use DBI;


my $dbh = DBI->connect("dbi:SQLite:dbname=wangpan.db","","") or die("connect error \n");;


# select   server_path, file_size  from cache_file;
 #my $s_q =$dbh->prepare(" select   server_path  from file_meta; ");
 my $s_q =$dbh->prepare(" select   local_filename  from file_status; ");
 #my $s_q =$dbh->prepare(" select   *  from file_meta; ");


use Encode;

    $s_q->execute();

    while( my @data=$s_q->fetchrow_array())
    {
		#print $data[0]."\n";

    	my $filename=encode("gb2312", decode("utf-8", $data[0]));
		my $size=$data[1];
		print $filename."|$size\n";
	}
