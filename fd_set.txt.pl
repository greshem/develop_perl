#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
这是把fd_set相关的源代码汇总在一起。这样应该知道fd_set的实现详细原理

define FD_SETSIZE      1024
typedef unsigned long   fd_mask;

#define NBBY    8               /* number of bits in a byte */
#define NFDBITS (sizeof(fd_mask) * NBBY)        /* bits per mask */


#define howmany(x, y)   (((x) + ((y) - 1)) / (y))

typedef struct fd_set {
        fd_mask fds_bits[howmany(FD_SETSIZE, NFDBITS)];
} fd_set;

#define _fdset_mask(n)  ((fd_mask)1 << ((n) % NFDBITS))
#define FD_SET(n, p)    ((p)->fds_bits[(n)/NFDBITS] |= _fdset_mask(n))
#define FD_CLR(n, p)    ((p)->fds_bits[(n)/NFDBITS] &= ~_fdset_mask(n))
#define FD_ISSET(n, p)  ((p)->fds_bits[(n)/NFDBITS] & _fdset_mask(n))
#define FD_COPY(f, t)   bcopy(f, t, sizeof(*(f)))
#define FD_ZERO(p)      bzero(p, sizeof(*(p)))

fd_set master_set_read;

FD_SET(600,master_set_read);

=>  master_set_read->fds_bits[(600)/32] |= (1<<(600%32)); 

