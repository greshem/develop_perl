#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#include <stdio.h>
#include <stdlib.h>
#include "qldc.h"
#include <Baselib.hpp>
int main()
{
	CQlDC mydc;
	mydc.Init();
	mydc.ClearScreen();
	while(1)
	{
		//mydc.SetBgColor(i);
		//mydc.PutPixel(rand()%640, rand()%480, rand());
		//mydc.DrawLine(rand()%640, rand()%480, rand()%640, rand()%480, rand());
		//mydc.PutAsciiChar(rand()%640, rand()%480, rand(), rand()%256);
		mydc.PutChineseChar(rand()%mydc.m_vinfo.xres, rand()%mydc.m_vinfo.yres, rand(), rand()%256, rand()%256);
		mydc.PutChineseString(0 , 24*0 , rand()%256,  "日照香炉生紫烟", 7);
		mydc.PutChineseString(0 , 24*1 , rand()%256,  "遥看瀑布挂前川", 7);
		mydc.PutChineseString(0 , 24*2 , rand()%256,  "飞流直下三千尺", 7);
		mydc.PutChineseString(0 , 24*3 , rand()%256,  "疑是银河落九天", 7);

		usleep(100000);
	}
	mydc.Stop();

	return 1;
}

