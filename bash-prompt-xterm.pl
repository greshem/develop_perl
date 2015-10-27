#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}"; echo -ne "\007"; echo $(pwd)>> /root/bash_pwd

