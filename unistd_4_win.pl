#!/usr/bin/perl

if($^O eq "linux")
{
	die("this tools used in windows\n");
}
@array=(<DATA> );
if($^O =~ "MSWIN")
{
	@path=("C:\\Program Files\\Microsoft Visual Studio", 
		"C:\\Program Files\\Microsoft Visual Studio 8",
	"C:\\Program Files\\Microsoft Visual Studio 9.0",
	"C:\\Program Files\\Microsoft Visual Studio .NET 2003");
}
else if($^O=="cygwin")
{
	@cyg_path=("/cygdrive/c/Program Files/Microsoft Visual Studio",
	"/cygdrive/c/Program Files/Microsoft Visual Studio 8",
	"/cygdrive/c/Program Files/Microsoft Visual Studio 9.0",
	"/cygdrive/c/Program Files/Microsoft Visual Studio .NET 2003");
}

foreach  (@path)
{
	print $_."\n";
}
foreach  (@cyg_path)
{
	print $_."\n";
}


# for($i=0; $i<=10; $i++)
# {
# 	print "####\n";
# 	print @array;
# }

__DATA__
#ifndef _UNISTD_H  
#define _UNISTD_H  
#include <io.h>  
#include <process.h>  
#endif /* _UNISTD_H */  
