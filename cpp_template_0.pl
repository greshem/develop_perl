#!/usr/bin/perl
#20100601, 添加lmy库的支持。 
use POSIX qw(strftime);
$file=$ARGV[0] or die("$0 filename \n");
if($file!~/cpp$/)
{
	$file.=".cpp";
}
$time=strftime("%Y_%m_%d", localtime(time()));
print $time;
open(FILE,">".$file) or die("open file error $!\n");
while(<DATA>)
{
	if(/__TEMPLATE__/)
	{
		$_=~s/__TEMPLATE__/$file/g;
		print FILE $_;
	}
	elsif(/__TIME__/)
	{
		$_=~s/__TIME__/$time/g;
		print FILE $_;
	}
	else
	{
		print FILE $_;
	}
}
close(FILE);

__DATA__
#include <stdlib.h>
//#include <MLmyUnit.hpp>
//#include <QzjUnit.hpp>
#include <Baselib.hpp>
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
//__TIME__ by qzj. 

template <typename T> class book {
private:
	string name;
	int 	sn;
	string 	path;
	public:
		book()
		{
			name="no name";
			sn=0;
			path="no path";
		};
	string getName()
	{
		return name;
	}
	int getSn()
	{
		return sn;
	}
	string getPath()
	{
		return path;
	}
	template <typename S> S  getOther()
	{
		return  !S();
	}
};

MLogFile<char> logger;
using namespace std;
int main(int argc, char *argv[])
{
	MString<char> str("__TEMPLATE__");
	logger.Instance(MString<char>(argv[0])+".log", 1000);
	logger.WriteError("test", "test");
	cout<<str.c_str()<<endl;
	cout<<"__TEMPLATE__"<<endl;
	return 0;
}
