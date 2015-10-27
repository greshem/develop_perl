use File::Temp qw(tempdir);
my $TMP_DIR = tempdir(CLEANUP=>1);
#my $TMP_DIR = tempdir(CLEANUP=>0);

#寻找 /usr/bin/api-sanity-checker 
#临时目录老是会清空掉 原来是   CLEANUP=>1  的缘故.
#花费:  3h 

print $TMP_DIR."\n";

