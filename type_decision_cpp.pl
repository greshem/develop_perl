#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
//########################################################################
//#include <QzjUnit.hpp>
//#include <MLmyUnit.hpp>
#include <Baselib.hpp>
#include <gtest/gtest.h>
#include <fstream>
#include <string> 
#include <iostream>
#include <map>
#include <iostream> 
#include <algorithm>
#include <vector> 
#include <iterator>  
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <dirent.h>
using namespace std;
template T fun(T a)
{
    cout<<typeid(T).name()<<endl;;
}

int main()
{
	int a;
	char b;
	double c;
	 
	fun(a);// 输出 I 说明是 int 型
	fun(b);// 输出 c 说明是 char 型
	fun(c);// 输出 d 说明是 double 型
	return 0;
}

  

