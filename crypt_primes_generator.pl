#!/usr/bin/perl
# generate a random, provable 512-bit prime.

use Crypt::Primes qw(maurer);
my $prime = maurer (Size => 512);
print "AAAA:".$prime."\n";

# generate a random, provable 2048-bit prime and report
# progress on console.

my $another_prime = maurer (
			Size => 2048,
			Verbosity => 1
		   );

print "BBBBB:".$another_prime."\n";

# generate a random 1024-bit prime and a group
# generator of Z*(n).

my $hash_ref = maurer (
	   Size => 1024,
	   Generator => 1,
	   Verbosity => 1
	  );


print "CCCC:".$hash_ref."\n";
