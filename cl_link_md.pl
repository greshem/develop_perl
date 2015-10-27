#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
                                 -链接-
/MD 与 MSVCRT.LIB 链接 		           /MDd 与 MSVCRTD.LIB 调试库链  |DEBUG
/ML 与 LIBC.LIB 链接   单线程           /MLd 与 LIBCD.LIB 调试库链接 DEBUG
/MT 与 LIBCMT.LIB 链接  多线程          /MTd 与 LIBCMTD.LIB 调试库链 多线程 DEBUG 
/LD 创建 .DLL                           /F<num> 设置堆栈大小
/LDd 创建 .DLL 调试库                   /link [链接器选项和库]

