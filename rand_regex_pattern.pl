#!/usr/bin/perl
use String::Random;
$foo = new String::Random;
#$guid= $foo->randregex("[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}");

$guid= $foo->randregex("#\\s*include\\s*mthread\\.h");
print  $guid;


