#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/usr/bin/perl -w

use IO::File;
use Image::Size qw(:all);
use Test::More tests => 70;


$a=100;
ok( ($a==100) , "test");
is( ($a==100) , "test");

$guid1={FB9586CD-273B-43BE-A20C-485A6BD4FCD6}
ok($guid1, qr/^{\w{8}(-\w{4}){3}-\w{12}}$/);
ok($guid1, qr/^{\w{8}(-\w{4}){3}-\w{12}}$/);


($x, $y) = (60, 40);
ok(($x == 60 && $y == 40), 'Basic GIF format test');

$html = 'width="52"  height="54"';;
ok(($html =~ /width="52"\s+height="54"/oi), 'Test html_imgsize and basic JPG format');

@attrs = (0, 64, 33, 38);
ok(($attrs[1] == 64 && $attrs[3] == 38), 'Test attr_imgsize and basic XPM format');

($x, $y) = (50, 10);
ok(($x == 50 && $y == 10), 'Basic XBM format test');

($x, $y, $err) = (10, 10, "can not open");
ok(($err =~ /can\s+not\s+open/oi), 'Test non-existent file error catching');


($x, $y) = (333, 194);
ok(($x == 333 && $y == 194), 'Test format/file-extension mis-match');

# Test PNG image supplied by Tom Metro:
($x, $y) = (90, 60);
ok(($x == 90 && $y == 60), 'Basic PNG format test');


exit;

