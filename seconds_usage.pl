#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
########################################################################
#½øÖÆ×ª»».
1Ãë=1000ºÁÃë(ms), 1ºÁÃë=1£¯1000Ãë(s)£»
1Ãë=1000000 Î¢Ãë(¦Ìs), 1Î¢Ãë=1£¯1000000Ãë(s)£»
1Ãë=1000000000 ÄÉÃë(ns),1ÄÉÃë=1£¯1000000000Ãë(s)£»
1Ãë=1000000000000Æ¤Ãë 1Æ¤Ãë==1/1000000000000Ãë¡£ 


########################################################################
#Ó¢ÎÄ.
ºÁÃë£ºmillisecond,
Î¢Ãë£ºmicrosecond,
ÄÉÃë£ºnanosecond , ÓÃÓÚÄÚ´æÈ¡Ö·



########################################################################
#³£¼û½á¹¹.
struct timeval {
time_t      tv_sec;     /* seconds */
suseconds_t tv_usec;    /* microseconds */
};


º¯Êı:

int select(int nfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, struct timeval *timeout);
int gettimeofday(struct timeval *tv, struct timezone *tz);
usleep - sleep some number of microseconds Î¢Ãî. 
	usleep 1000000 Ò»Ãë.


