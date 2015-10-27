#!/usr/bin/perl
#2010_08_06 by qzj. 
use PerlQzjLib;
#copyWithMTime("/etc/passwd", "bb");
foreach(<DATA>)
{
	print $_
}
__DATA__
#include <fstream>
#include <dirent.h>
#include <string> 
#include <iostream>
#include <string.h>
#include <stdio.h>
#include <QzjUnit.hpp>
//#include <MLmyUnit.hpp>
#include <map>
#include <iostream> 
#include <algorithm>
#include <vector> 
#include <iterator>  
#include <stdlib.h>
#ifdef TESTUNITMAIN
int main ()
{
	printf ("fatclone test\n");
	return 0;
};
#endif
