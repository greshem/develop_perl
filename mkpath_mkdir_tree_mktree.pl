#!/usr/bin/perl 
#use strict;
#use warnings;


#"mkpath" function of the File::Path module.
use File::Path  qw(make_path remove_tree mkpath);

#mkpath for windows 
mkpath("./tmp/a/b/c");

if (! -d "./tmp/a/b/c")
{
	die("create dir tree error\n");
}

#==========================================================================
#for windows mkdir 
mkpath(".\\tmp\\a\\b\\c");
if (! -d ".\\tmp\\a\\b\\c")
{
	die("create dir tree error\n");
}
