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
	 
	fun(a);// ��� I ˵���� int ��
	fun(b);// ��� c ˵���� char ��
	fun(c);// ��� d ˵���� double ��
	return 0;
}

  

