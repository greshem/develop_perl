#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
tar -czf system_init_linux_v2.tar.gz system_init_linux_v2
tar -czf bin.tar.gz bin
tar -czf trunk.tar.gz trunk
tar -czf vim_common.tar.gz vim_common
tar -czf develop_vim.tar.gz develop_vim

