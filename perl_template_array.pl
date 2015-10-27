#!/usr/bin/perl
use Template;
my $config=undef;

@a=qw(11 22 33 44 55 66);

my $template = Template->new();

my $var= {
	header=>"#############################################################",
	title=>"title",
	array=>\@a,
	footer=>"##############################################################",
};

$template->process(\*DATA, $var) || die $template->error();
__DATA__
[% header %]
[% title %]
[% FOREACH number IN array %][%number %]	[%END%]
[% footer %]
