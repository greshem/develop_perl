#!/usr/bin/perl
use File::Basename;
$file=shift or die("Usage: $0 file\n");
use File::Copy;
$name=basename($file);
copy($file,"/bin/".$name);
copy($file,"/root/".$name);
copy($file,"/root/bin/".$name);
