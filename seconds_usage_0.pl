#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
########################################################################
#����ת��.
1��=1000����(ms), 1����=1��1000��(s)��
1��=1000000 ΢��(��s), 1΢��=1��1000000��(s)��
1��=1000000000 ����(ns),1����=1��1000000000��(s)��
1��=1000000000000Ƥ�� 1Ƥ��==1/1000000000000�롣 


########################################################################
#Ӣ��.
���룺millisecond,
΢�룺microsecond, һ��320G SATA��Ӳ�̴�ȡʱ����10MS��
���룺nanosecond , �����ڴ�ȡַ һ���Ǽ�����.



########################################################################
#�����ṹ.
struct timeval {
time_t      tv_sec;     /* seconds */
suseconds_t tv_usec;    /* microseconds */
};


����:

int select(int nfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, struct timeval *timeout);
int gettimeofday(struct timeval *tv, struct timezone *tz);
usleep - sleep some number of microseconds ΢��. 
	usleep 1000000 һ��.


