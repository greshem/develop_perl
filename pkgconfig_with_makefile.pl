#!/usr/bin/perl
@files=glob("/usr/share/pkgconfig/*.pc");

@tmp=glob("/usr/lib/pkgconfig/*.pc");
push(@files, @tmp);

@tmp=glob("/usr/lib64/pkgconfig/*.pc");
push(@files, @tmp);

for (@files)
{
	print $_,"\n";
}
