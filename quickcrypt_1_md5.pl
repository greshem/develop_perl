#!/usr/bin/perl -w
#root@f18 tmp]# perl  quickcrypt   q********************n bPnya7sv 
#"q********************n" Encrypts to : "$1$bPnya7sv$0c6QXWvuqvYnsbH2Q0/Zw0".

##############################################################
## quickcrypt.pl - Encrypts a string to an MD5 shadow hash  ##
## for use in a /etc/shadow file.                           ##
## Version 0.9.2b                                           ##
##                                                          ##
## Michael Palmer <raven[at]netpimpz[dot]com>               ##
## http://linux.netpimpz.com/quickcrypt                     ##
##############################################################
use strict;

	## Initialize the string variable
	#my $string;

	## Check for STDIN input otherwise ask for a string
	#if ($ARGV[0]) {
	#	## Grab the string from the console
	#	$string = "@ARGV";
	#}
	#else {
	#	## Print out a string and read from stdin
	#	print "\n" . 'Enter the phrase you wish to encrypt : ';
	#	chomp($string = <STDIN>);
	#}

my $string=shift or die("Usage: input_str slat \n");
my $salt= shift  or die("Usage: input_str slat \n");


	## Create a random salt
	#my $salt    = join '', ('.', '/', 0..9, 'A'..'Z', 'a'..'z')[rand 64, rand 64];
	## Encrypt the string
	my $crypted = unix_md5_crypt($string,$salt);

		## Output the results
		print "\n".'"'.$string.'"'.' Encrypts to : "'.$crypted.'".'."\n\n";

exit;


## ALL CODE BELOW RIPPED FROM Crypt::PasswdMD5

sub to64 {
	use Digest::MD5;
	my $itoa64 = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    my ($v, $n) = @_;
    my $ret = '';
    while (--$n >= 0) {
    $ret .= substr($itoa64, $v & 0x3f, 1);
    $v >>= 6;
    }
    $ret;
}

sub unix_md5_crypt {
	use Digest::MD5;
	my $Magic = '$1$';         # Magic string
    my($pw, $salt) = @_;
    my $passwd;

    $salt =~ s/^\Q$Magic//;	# Take care of the magic string if
				# if present.

    $salt =~ s/^(.*)\$.*$/$1/;	# Salt can have up to 8 chars...
    $salt = substr($salt, 0, 8);

    my $ctx = new Digest::MD5;		# Here we start the calculation
    $ctx->add($pw);		# Original password...
    $ctx->add($Magic);		# ...our magic string...
    $ctx->add($salt);		# ...the salt...

    my ($final) = new Digest::MD5;
    $final->add($pw);
    $final->add($salt);
    $final->add($pw);
    $final = $final->digest;

    for (my $pl = length($pw); $pl > 0; $pl -= 16) {
	$ctx->add(substr($final, 0, $pl > 16 ? 16 : $pl));
    }

				# Now the 'weird' xform

    for (my $i = length($pw); $i; $i >>= 1) {
	if ($i & 1) { $ctx->add(pack("C", 0)); }
				# This comes from the original version,
				# where a memset() is done to $final
				# before this loop.
	else { $ctx->add(substr($pw, 0, 1)); }
    }

    $final = $ctx->digest;
				# The following is supposed to make
				# things run slower. In perl, perhaps
				# it'll be *really* slow!

    for (my $i = 0; $i < 1000; $i++) {
	my $ctx1 = new Digest::MD5;
	if ($i & 1) { $ctx1->add($pw); }
	else { $ctx1->add(substr($final, 0, 16)); }
	if ($i % 3) { $ctx1->add($salt); }
	if ($i % 7) { $ctx1->add($pw); }
	if ($i & 1) { $ctx1->add(substr($final, 0, 16)); }
	else { $ctx1->add($pw); }
	$final = $ctx1->digest;
    }
    
				# Final xform

    $passwd = '';
    $passwd .= to64(int(unpack("C", (substr($final, 0, 1))) << 16)
		    | int(unpack("C", (substr($final, 6, 1))) << 8)
		    | int(unpack("C", (substr($final, 12, 1)))), 4);
    $passwd .= to64(int(unpack("C", (substr($final, 1, 1))) << 16)
		    | int(unpack("C", (substr($final, 7, 1))) << 8)
		    | int(unpack("C", (substr($final, 13, 1)))), 4);
    $passwd .= to64(int(unpack("C", (substr($final, 2, 1))) << 16)
		    | int(unpack("C", (substr($final, 8, 1))) << 8)
		    | int(unpack("C", (substr($final, 14, 1)))), 4);
    $passwd .= to64(int(unpack("C", (substr($final, 3, 1))) << 16)
		    | int(unpack("C", (substr($final, 9, 1))) << 8)
		    | int(unpack("C", (substr($final, 15, 1)))), 4);
    $passwd .= to64(int(unpack("C", (substr($final, 4, 1))) << 16)
		    | int(unpack("C", (substr($final, 10, 1))) << 8)
		    | int(unpack("C", (substr($final, 5, 1)))), 4);
    $passwd .= to64(int(unpack("C", substr($final, 11, 1))), 2);

    $final = '';
    $Magic . $salt . '$' . $passwd;
}
