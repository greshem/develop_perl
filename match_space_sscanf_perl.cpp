#include <stdlib.h>
//#include <unitlib.h>
//#include <QzjUnit.hpp>
//#include <Baselib.hpp>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include <string> 
#include <dirent.h>
#include <fstream>
#include <iterator>  
#include <vector> 
#include <algorithm>
#include <iostream> 
#include <map>
#include <gtest/gtest.h>
//2011_04_06 by greshem. 


using namespace std;
int main(int argc, char *argv[])
{
	// char line[1024]="test1 test2  test3 test4 test5 test6 test3 test4 test5 test6 test3 test4 test5 test6\0";
	// char *tmp_eee=(char*)malloc(1024);
	// memcpy(tmp_eee, line, sizeof(line));
	//
	
	char *tmp_eee= "test1 test2  test3 test4 test5 test6 test3 test4 test5 test6 test3 test4 test5 test6\0";


	//char tmp[1024]="test1 test2  test3 test4 test5 test6 test3 test4 test5 test6 test3 test4 test5 test6";
	//char tmp[1024]="rtest test test test \n";
	char *test[32];
	char ptr[1024];
	for(int i=0; i< sizeof(test)/sizeof(test[0]); i++)
	{
		test[i]=(char*) malloc(32);
		memset(test[i], '\0', 32);
	}

	//这样的用法相当于 是perl 的 $~=/(\S+)\s+(\S+)\s+/ 
	sscanf(tmp_eee, "%s%s%s%s%s%s%s%s%s%s", test[0],  test[1], test[2], test[3],test[4], test[5], test[6], test[7], test[8]);
	printf("%s\n", tmp_eee);
	printf("%s\n", test[0]);
	printf("%s\n", test[1]);
	printf("%s\n", test[2]);

}
