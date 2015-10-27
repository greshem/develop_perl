#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
2c2
< rtiosrv_exe:     file format elf32-i386
---
> diskplt_exe:     file format elf32-i386
12472c12472
<  80572e6:	c7 45 c0 52 49 43 48 	movl   $0x48434952,-0x40(%ebp)
---
>  80572e6:	c7 45 c0 48 41 4e 47 	movl   $0x474e4148,-0x40(%ebp)
13823c13823
<  8058457:	c7 44 24 04 47 1d 00 	movl   $0x1d47,0x4(%esp)
---
>  8058457:	c7 44 24 04 05 0d 00 	movl   $0xd05,0x4(%esp)
14497c14497
<  8058e7c:	c7 44 24 10 47 1d 00 	movl   $0x1d47,0x10(%esp)
---
>  8058e7c:	c7 44 24 10 05 0d 00 	movl   $0xd05,0x10(%esp)
16045c16045
<  805a36f:	c7 44 24 04 47 1d 00 	movl   $0x1d47,0x4(%esp)
---
>  805a36f:	c7 44 24 04 05 0d 00 	movl   $0xd05,0x4(%esp)
19188c19188
<  805d0fb:	c7 44 24 04 22 b8 00 	movl   $0xb822,0x4(%esp)
---
>  805d0fb:	c7 44 24 04 11 5c 00 	movl   $0x5c11,0x4(%esp)
20711c20711
<  805e6c1:	e8 4e a6 01 00       	call   8078d14 <_Z19IOGC_GetDlxpRunModev>
---
>  805e6c1:	e8 4e a6 01 00       	call   8078d14 <_Z19IOGC_GetDiskRunModev>
51890c51890
< 08078d14 <_Z19IOGC_GetDlxpRunModev>:
---
> 08078d14 <_Z19IOGC_GetDiskRunModev>:
51930c51930
<  8078d94:	eb 02                	jmp    8078d98 <_Z19IOGC_GetDlxpRunModev+0x84>
---
>  8078d94:	eb 02                	jmp    8078d98 <_Z19IOGC_GetDiskRunModev+0x84>
63332c63332
<  8082522:	c7 00 52 49 43 48    	movl   $0x48434952,(%eax)
---
>  8082522:	c7 00 48 41 4e 47    	movl   $0x474e4148,(%eax)
65760c65760
<  808466a:	c7 00 52 49 43 48    	movl   $0x48434952,(%eax)
---
>  808466a:	c7 00 48 41 4e 47    	movl   $0x474e4148,(%eax)
66378c66378
<  8084ee5:	c7 00 52 49 43 48    	movl   $0x48434952,(%eax)
---
>  8084ee5:	c7 00 48 41 4e 47    	movl   $0x474e4148,(%eax)

