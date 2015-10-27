#!/usr/bin/perl

$filename="mtime_stat.pl";
($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat $filename;
@array=stat($filename);
$mtime=$array[9]."\n";
$time=time();


#==========================================================================
my $mode = (stat($filehane))[2];
my $mtime= (stat($filehane))[9];


