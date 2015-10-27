#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
########################################################################
#进制转换.
1秒=1000毫秒(ms), 1毫秒=1／1000秒(s)；
1秒=1000000 微秒(μs), 1微秒=1／1000000秒(s)；
1秒=1000000000 纳秒(ns),1纳秒=1／1000000000秒(s)；
1秒=1000000000000皮秒 1皮秒==1/1000000000000秒。 


########################################################################
#英文.
毫秒：millisecond,
微秒：microsecond, 一般320G SATA的硬盘存取时间在10MS的
纳秒：nanosecond , 用于内存取址 一般是几纳秒.



########################################################################
#常见结构.
struct timeval {
time_t      tv_sec;     /* seconds */
suseconds_t tv_usec;    /* microseconds */
};


函数:

int select(int nfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, struct timeval *timeout);
int gettimeofday(struct timeval *tv, struct timezone *tz);
usleep - sleep some number of microseconds 微妙. 
	usleep 1000000 一秒.


