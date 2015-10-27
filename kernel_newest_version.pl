#!/usr/bin/perl
#
# Kernel Watch
# 
# Program zjisti aktualni verze kernelu a vypise je v HTML (vcetne odkazu
# na patch, changelog a download)
#
# Open source under GPL
# verze 1.1
#
# Bugs/features:
#   Generovani HTTP hlavicky neni mozna dvakrat chytra zalezitost
#   (napr. volani system("kernel-watch.pl") z php skriptu).
#   
# Changes:
#   20040323 - vypadek www.kernel.org - odhalena chyba s timeoutem
#   20040315 - pokud je spusten pres CGI, vypise Content-Type
#   20040212 - predelavka z LWP na jednoduzsi wget
#   
# Copyright (c) Marek Sezemsky, 2004
# marek.sezemsky@seznam.cz
# 


# URL z ktereho se stahuje a cesta k wget
my $bannerURL = "http://www.kernel.org/kdist/finger_banner";
my $wgetPath = "/usr/bin/wget";
my $wgetRetries = 2;
my $wgetTimeout = 10;

# vraci HTML text s odkazy
# arg 0 - 'v2.x'
# arg 1 - '2.4.1'
sub printKernel {
	return "Aktualni <b>$_[0]</b>: " .
	"<a href=http://ftp.fi.muni.cz/pub/linux/kernel/$_[0]/ChangeLog-$_[1]>" .
	$_[1]  . "</a> (" .
	"<a href=ftp://ftp.fi.muni.cz/pub/linux/kernel/$_[0]/linux-$_[1].tar.bz2>download</a>, " .
	"<a href=ftp://ftp.fi.muni.cz/pub/linux/kernel/$_[0]/patch-$_[1].bz2>patch</a>)" .
	"<br>\n";
}

# nejedeme nahodou z CGI?
if ( $ENV{'REQUEST_METHOD'} ) {
	print "Content-Type: text/html\n\n"
}

# Stahneme si kernel_banner
unless ( @kernelBanner = `$wgetPath -q -t $wgetRetries -T $wgetTimeout -O - $bannerURL` ) {
	print("<i>Chyba na www.kernel.org</i>\n");
	exit(0);
}

# ToDo: tady by se to jeste mohlo trosku poupravit...
print @kernelBanner,"\n";
foreach $line (@kernelBanner) {
	print $line;
	@tmp = split(/:\ +/, $line);
	$kernel = $tmp[1];
	chomp $kernel;
	#print $kernel,"\n";
	if ( $line =~ /latest stable version/ ) {
#		print printKernel("v2.6", $kernel);
	}
	if ( $line =~ /latest 2.4 version/ ) {
#		print printKernel("v2.4", $kernel);
	}
	if ( $line =~ /latest 2.2 version/ ) {
#		print printKernel("v2.2", $kernel);
	}
}

