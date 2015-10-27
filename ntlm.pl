
#! /usr/bin/perl

use strict;
use warnings;
#use Test::More tests => 12;

use Authen::NTLM qw(lmEncrypt);
use MIME::Base64;
use     Convert::BinHex ;

my $H2B = Convert::BinHex->hex2bin;    # get a converter object
my $output=lmEncrypt("123456") ;
print  $H2B->next($output);          # convert some more input
print $H2B->done;               # no more input: finish up


print join(' ',map {sprintf "%X",$_} unpack("C*",$output)); 

#print "%x" lmEncrypt("123456");

#    ntlm_user($username);
#    ntlm_password($password);
