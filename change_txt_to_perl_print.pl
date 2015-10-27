#!/usr/bin/perl


use Template;
my $config=undef;
my $file=shift;
open(FILE, $file) or die("Open file error\n");
@array=(<FILE>);

my $template = Template->new();

my $var= {
	header=>"#############################################################",
	title=>"title",
	array=>\@array,
	footer=>"##############################################################",
};

$template->process(\*DATA, $var) || die $template->error();
__DATA__
#!/usr/bin/perl
for(<DATA>)
{
	print $_;
}
__DATA__
[% FOREACH number IN array %][%number %][%END%]
