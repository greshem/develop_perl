#!/usr/bin/perl 
use File::Copy::Recursive qw(fcopy rcopy dircopy fmove rmove dirmove);
fcopy("/etc/passwd", "/tmp/bbb/bbb/bbbZ");

#assert( file_exists("/tmp/bbb/bbb/bbbZ"));

