
   use Crypt::MySQL qw(password password41);

         my $encrypted = password("foobar"); # for MySQL 3.23, 4.0

         my $encrypted = password41("foobar"); # for MySQL 4.1 or later.
