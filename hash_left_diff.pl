    use Hash::Diff qw( diff  left_diff );
    my %a = ( 
		'aaa'	=> 1,
		'foo'    => 2,
	    'bar'    => 3,
	);
    my %b = ( 
		'foo'     => 2, 
		'bar'    =>  3,
		'ddd'    =>  4,
	);

    my %c = %{ diff( \%a, \%b ) };
    #my %c = %{ left_diff( \%a, \%b ) };
    #my %c = %{ left_diff( \%b, \%a ) };
	print %c;

