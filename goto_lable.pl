#! /usr/local/bin/perl

$limit = $ARGV[0] || ~ 0;

$t = times;

# Calculate a vector of skips, so that I never check multiples of the first n
# primes.  For each small prime calculate the skip list based on the skip list
# of the next samller prime.  Compare each candidate only to the odd multiples
# of the current prime.
@skip = $max = 2;
print "2\n";
for $prime ( 3, 5, 7, 11, 13, 17, 19, 23 ) {
    print "$prime\n";
    $max *= $prime;
    my $prev = $candidate = 0;
    my $i = $prime;
    my $prime2 = $prime << 1;
    my $nextoddmultiple = $prime + $prime2;
    my $max = $max + $i;
    $max = $limit if $max > $limit;
    my @preskip = @skip;
    @skip = ();
  SERIES: while() {
	for( @preskip ) {
	    $i += $_;
	    $nextoddmultiple += $prime2 while $i > $nextoddmultiple;
	    if( $i < $nextoddmultiple ) {
		$candidate ||= $i;
		push @skip, $i - $prev if $prev;
		$prev = $i;
	    }
	    last SERIES if $i > $max;
	}
    }
}

print "$candidate\n";
@primes = $candidate;

$endnormal = -1;
$end = $primesmin = $primesi = $delayskip = 0;
$nextprimeproduct = $max = $candidate * $candidate;
# Dataset for predictable non primes:
# 0: the prime this concerns (constant)
# 1: this prime multiplied by the next prime giving an as yet unreached product
# 2: the index of that next prime
# 3: this prime**3, limit where this starts failing
@prediction = [$candidate, $nextprimeproduct, 0, $candidate * $nextprimeproduct];

print STDERR 'step 1: ', -$t + ($t = times), "s\n";

while() {
    for( @skip ) {
	$candidate += $_;
	exit if $candidate > $limit;
	$delayskip += $_;
	if( $candidate < $nextprimeproduct ) {
	    # didn't reach the next predicted non-prime, so do modulus checking
	    $div = 0;
	    for( @primes[0..$endnormal] ) {
		if ( ($_->[1] += $delayskip) >= $_->[0] ) {
		    $_->[1] -= $_->[0] until $_->[1] < $_->[0];
		    $div = 1 unless $_->[1];
		}
	    }
	    unless( $div ) {
		print "$candidate\n";
		push @primes, $candidate;
	    }
	    $delayskip = 0;
	    next;
	}

	# remove first element, multiply it with next prime
	$x = shift @prediction;
	$x1 = $$x[1] = $$x[0] * $primes[++$$x[2]];
	if( $x1 > $max ) {
	    # multiplication surpassed next unused prime to the square, so push an element for that
	    $end++;
	    $max = $primes[$end] * $primes[$end];
	    push @prediction, [$primes[$end], $max, $end, $primes[$end] * $max];
	}

	if( !$$x[3] ) {
	    # We reached prime**3, so eliminate prime, activate it for normal sieve
	    $endnormal++;
	    $primes[$endnormal] = [$primes[$endnormal], ($candidate - $delayskip) % $primes[$endnormal]]
	} else {
	    if( $x1 >= $$x[3] ) {
		# We multiplied past prime**3, so reinsert that, instead of $x1
		$x1 = $$x[1] = $$x[3];
		$$x[3] = 0;
	    }
	    # reinsert element in order, treating @prediction as a B-tree, such that the smallest is first
	    $a = 0;
	    $z = @prediction;
	    $i = $z >> 1;
	    while() {
		if( $x1 < ${$prediction[$i]}[1] ) {
		    $z = $i;
		} else {
		    $a = ++$i;
		}
		last if $a == $z;
		$i = ($a + $z) >> 1;
	    }
	    splice @prediction, $i, 0, $x;
	}
	$nextprimeproduct = ${$prediction[0]}[1];
    }
}

END { print STDERR 'step 2: ', times - $t, "s\nsize: ", (`ps -osz -p $$`)[1] }

__END__


