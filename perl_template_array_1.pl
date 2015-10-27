#!/usr/bin/perl

use Template;
##############
#数值初始化。 
@a=qw(11 22 33 44 55 66);


my $var= {
	header=>"#############################################################",
	title=>"title",
	array=>\@a,
	footer=>"##############################################################",
};
###############################################################################
# 三行很重要
my $config=undef;
my $template = Template->new();
$template->process(\*DATA, $var) || die $template->error();

__DATA__
[% header %]
[% title %]
[% FOREACH number IN array %][%number %]	[%END%]
[% footer %]
