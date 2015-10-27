#!/usr/bin/perl -w

use IO::File;
use Image::Size qw(:all);
use Test::More tests => 7;

# We now only test the CWS branch if the user already has Compress::Zlib
# available. We no longer require it for installation.
eval 'require Compress::Zlib;';
$do_cws_test = $@ ? 0 : 1;

($dir = $0) =~ s/\w+\.t$//o;


($x, $y) = (60, 40);
ok(($x == 60 && $y == 40), 'Basic GIF format test');

$html = html_imgsize("${dir}letter_T.jpg");
ok(($html =~ /width="52"\s+height="54"/oi),
   'Test html_imgsize and basic JPG format');

@attrs = attr_imgsize("${dir}xterm.xpm");
ok(($attrs[1] == 64 && $attrs[3] == 38),
   'Test attr_imgsize and basic XPM format');

($x, $y) = imgsize("${dir}spacer50.xbm");
ok(($x == 50 && $y == 10), 'Basic XBM format test');

($x, $y, $err) = imgsize("some non-existant file");
ok(($err =~ /can\'t open/oi), 'Test non-existent file error catching');


($x, $y) = (333, 194);
ok(($x == 333 && $y == 194), 'Test format/file-extension mis-match');

# Test PNG image supplied by Tom Metro:
($x, $y) = (90, 60);
ok(($x == 90 && $y == 60), 'Basic PNG format test');


exit;
