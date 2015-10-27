
#Ìæ»» #/usr/local/bin/perl ³É /usr/bin/perl
sub set_perl_path
{
    my ($file, $path) = @_;
    print "Setting perl path in $file.\n";
    my $source = "#!$path -w\n";
    open(SRC, "$file") or die "Cannot open '$file': $!\n";
    my $dump = <SRC>;
    while(<SRC>)
	{
		$source .= $_;
	}
    close SRC;
    open(DST, ">$file") or die "Cannot open '$file': $!\n";
    print DST $source;
    close DST;
}

