use strict;
use Storable;
sub save_to_file()
{
	store \%table, 'sample.register';
}
sub load()
{
	my $hashref = retrieve('sample.register');
	use Data::Dumper;
	print Data::Dumper->Dump([$hashref ]);
}
