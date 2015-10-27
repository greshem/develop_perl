use Crypt::SmbHash qw(lmhash nthash);

#$pass="123456";
my $pass=shift or die("usage:  $0 input_string \n");

$lm = lmhash($pass);
$nt = nthash($pass);
print "lm: " . $lm ."\n";
print "nt: " . $nt ."\n";
