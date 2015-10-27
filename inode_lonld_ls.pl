#!/usr/bin/perl

print $0."\n";
$cmd="ls -l  -i /vld/sys/ml45/program/lond  >>   ".$0;
if ( -d  "/vld/sys/ml45/program/lond")
{
	system($cmd);
	
} 

print $cmd."\n";
open(FILE, ">>".$0);
print FILE "##################################################################\n";
close(FILE);
__DATA__
total 2584
835655 drwxr-xr-x 2 root root    4096 Dec 26 15:23 bakup
835650 -rwxr-xr-x 1 root root   33024 Dec 26 16:02 bgi16.dll
835647 -rwxr-xr-x 1 root root   50576 Dec 26 15:23 dpmi16bi.ovl
835654 -rwxr-xr-x 1 root root   53898 Dec 26 15:23 lon.exe
835653 -rwxr-xr-x 1 root root      50 Dec 26 15:46 lon1.bat
835652 -rwxr-xr-x 1 root root      58 Dec 26 15:23 lon2.bat
835651 -rwxr-xr-x 1 root root      56 Dec 26 15:46 lon3.bat
835645 -rwxr-xr-x 1 root root 1095134 Dec 26 16:01 lond.exe
835644 -rwxr-xr-x 1 root root  128182 Dec 26 15:46 lonhq.exe
835649 -rwxr-xr-x 1 root root 1090434 Dec 26 15:46 lonvd.exe
835646 -rwxr-xr-x 1 root root   10678 Dec 26 15:46 recvtsr.exe
835648 -rwxr-xr-x 1 root root  120853 Dec 26 15:23 rtm.exe
########################################################################
