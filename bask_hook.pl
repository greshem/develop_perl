#!/usr/bin/perl
################################################################################

if ( ! -f "/etc/sysconfig/bash-prompt-xterm")
{
open(FILE, ">/etc/sysconfig/bash-prompt-xterm") or die("open file errro");
print FILE $DATA;
}
__DATA__
echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}"; echo -ne "\007"; echo $(pwd)>> /root/bash_pwd
