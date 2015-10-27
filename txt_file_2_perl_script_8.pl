#!/usr/bin/perl
use Template;
$file=shift or warn("Usage: $0 file file no exists will create \n");

my $config=undef;

my $template=Template->new();
if(! -f $file)
{
	
	#open(FILE, ">".$file) or die("create file error $!\n");
}
else
{
	open(FILE, $file) or die("open file error $!\n");
}

@array= (<FILE>);

my $var={
	array=>\@array,
};

$template->process(\*DATA, $var, $file.".pl") || die $template ->error();

__DATA__
#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
[% FOREACH line IN array %][% line %][%END%]
