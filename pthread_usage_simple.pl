#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#include <stdlib.h>
#include <MLmyUnit.hpp>
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
using namespace std;
void * fun(void *in)
{
	while(1)
	{
		cout<<"sleep 1"<<endl;
		sleep(1);
	}
}
int main(int argc, char *argv[])
{
	pthread_t t;
	//pthread_attr_t attr; 
	pthread_create(&t, NULL, fun, NULL);
	while(1)
	{
		cout<<"parent 1"<<endl;
		sleep(1);
	}
	return 1;
}


