#!/usr/bin/perl 


use strict;
use warnings;


use Win32::Registry::File;
$reg = new Win32::Registry::File('system.reg');
print $reg->get(['system', 'path']);
$oldpath = $reg->put(['system', 'path', 'C:\\windows']);
if ($reg->exists(['system', 'path'])) ...
$reg->delete(['system', 'path']);

$reg->save;

