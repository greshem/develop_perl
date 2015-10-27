#!/usr/bin/perl
use File::Copy::Recursive qw(fcopy rcopy dircopy fmove rmove dirmove);

fmove($_, $to);
