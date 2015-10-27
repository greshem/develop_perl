#!/usr/bin/perl
open(FILE, "> hello.c") or die("ope file error\n");
for (<DATA>)
{
	print  FILE  $_;
}
close(FILE);
print "#hello.c have generated \n";
print  "/usr/bin/i686-pc-mingw32-gcc hello.c -o hello.exe -mwindows\n";

__DATA__
#include<windows.h>
int WINAPI WinMain (HINSTANCE hInstance, HINSTANCE hPrevInstance, PSTR szCmdLine, int iCmdShow)
{
	MessageBox (NULL, "Hello", "Hello Demo", MB_OK);
	return (0);
}

