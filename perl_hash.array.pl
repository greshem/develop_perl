#!/usr/bin/perl
use Template;

@a=qw(11 22 33 44 55 66);


my $var= {
	header=>"#############################################################",
	title=>"title",
	array=>\@a,
	footer=>"##############################################################",
};
###############################################################################
my $config=undef;
my $template = Template->new();
$template->process(\*DATA, $var) || die $template->error();

__DATA__
[% header %]
[% title %]
[% FOREACH number IN array %][%number %]	[%END%]
[% footer %]
