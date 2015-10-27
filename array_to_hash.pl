#!/usr/bin/perl

sub array_to_hash(@)
{
	(my @input)=@_;
	my %hash;
	for( @input)
	{
		$hash{$_}=1;
	}
	return %hash;
}
########################################################################
#À´×ÔÓÚ  Hash::Merge
# Given a scalar or an array, creates a new hash where for each item in
# the passed scalar or array, the key is equal to the value.  Returns
# this new hash

sub _hashify {
    #my $self = &_get_obj;    # '&' + no args modifies current @_
    my $arg  = shift;
    if ( ref $arg eq 'HASH' ) {
        warn 'Arguement for _hashify must not be a HASH ref';
        return;
    }

    my %newhash;
    if ( ref $arg eq 'ARRAY' ) {
        foreach my $item (@$arg) {
            my $suffix = 2;
            my $name   = $item;
            while ( exists $newhash{$name} ) {
                $name = $item . $suffix++;
            }
            $newhash{$name} = $item;
        }
    }
    else {
        $newhash{$arg} = $arg;
    }
    return \%newhash;
}

my %a=array_to_hash(qw(1 2 3 4 5 6 7 ));
my %b=array_to_hash(qw(  2 3 4 5 6 7 8 9));

for (keys(%a))
{
	print $_."=>". $output{$_}."\n";
}

use Hash::Diff qw( diff );
my %c = %{ diff( \%a, \%b ) };
print %c;

print "#==================================\n";
#@tmp=qw(1  2 3 4 5 6)
$output=_hashify([ "999999","666699","FFFFFF","99CCCC", ]);
print ref($output);
for (keys(%{$output}))
{
	print $_."=>". $output->{$_}."\n";
}

