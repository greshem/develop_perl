    use Carp::Trace;

sub test2{
	test3();
}

sub test3{
	flubber();
}
    sub flubber {
        die "You took this route to get here:\n" .
            trace();
    }

test2();
