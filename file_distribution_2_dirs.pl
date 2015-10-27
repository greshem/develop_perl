#!/usr/bin/perl
use File::Basename;
$file=shift or die("Usage: $0 file\n");
use File::Copy;
$name=basename($file);
copy($file,"/bin/".$name);
chmod (0755 , "/bin/".$name);

copy($file,"/root/".$name);

chmod (0755 , "/root/".$name);

copy($file,"/root/bin/".$name);
chmod (0755 , "/root/bin/".$name);

