#!/usr/bin/perl
use Test::More tests => 70;

#    substr(unpack("B32",pack("N",shift)) , -8);

########################################################################
#一个参数.
#       substr EXPR,OFFSET
$a="0123456789";
ok( ( substr($a, -4) eq  "6789") , "test");
ok( ( substr($a, -1) eq  "9") , "test");
ok( ( substr($a, -2) eq  "89") , "test");
ok( ( substr($a, 0) eq  "0123456789") , "test");


########################################################################
#两个参数的情况.
#       substr EXPR,OFFSET,LENGTH
$a="0123456789";
ok( ( substr($a, 0, 1) eq  "0") , "test");
ok( ( substr($a, 1, 1) eq  "1") , "test");
ok( ( substr($a, 2, 1) eq  "2") , "test");
ok( ( substr($a, 3, 1) eq  "3") , "test");


$a="0123456789";
ok( ( substr($a, 0, 1) eq  "0") , "test");
ok( ( substr($a, 1, 1) eq  "1") , "test");
ok( ( substr($a, 2, 1) eq  "2") , "test");
ok( ( substr($a, 3, 1) eq  "3") , "test");
ok( ( substr($a, 4, 1) eq  "4") , "test");
ok( ( substr($a, 5, 1) eq  "5") , "test");
ok( ( substr($a, 6, 1) eq  "6") , "test");
ok( ( substr($a, 7, 1) eq  "7") , "test");
ok( ( substr($a, 8, 1) eq  "8") , "test");
ok( ( substr($a, 9, 1) eq  "9") , "test");



$a="0123456789";
ok( ( substr($a, 0, 1) eq  "0") , "test");
ok( ( substr($a, 0, 2) eq  "01") , "test");
ok( ( substr($a, 0, 3) eq  "012") , "test");
ok( ( substr($a, 0, 4) eq  "0123") , "test");
ok( ( substr($a, 0, 5) eq  "01234") , "test");
ok( ( substr($a, 0, 6) eq  "012345") , "test");
ok( ( substr($a, 0, 7) eq  "0123456") , "test");
ok( ( substr($a, 0, 8) eq  "01234567") , "test");
ok( ( substr($a, 0, 9) eq  "012345678") , "test");
ok( ( substr($a, 0, 10) eq  "0123456789") , "test");

$a="aabbccddeeffgghhii";
ok( ( substr($a, 0, 2) eq  "aa") , "test");
ok( ( substr($a, 2, 2) eq  "bb") , "test");
ok( ( substr($a, 4, 2) eq  "cc") , "test");
ok( ( substr($a, 6, 2) eq  "dd") , "test");
ok( ( substr($a, 8, 2) eq  "ee") , "test");
ok( ( substr($a, 10, 2) eq  "ff") , "test");
ok( ( substr($a, 12, 2) eq  "gg") , "test");
ok( ( substr($a, 14, 2) eq  "hh") , "test");



########################################################################
#三个参数的情况,   
#substr 的replactment 的功能. 
#       substr EXPR,OFFSET,LENGTH,REPLACEMENT
$a="0123456789";
substr($a, 0, 1, "a"); is(  $a  , "a123456789");
substr($a, 0, 2, "ab"); is(  $a  , "ab23456789");
substr($a, 0, 9, "abcdefghi") eq  "abcdefghi"; is(  $a  , "abcdefghi9");

