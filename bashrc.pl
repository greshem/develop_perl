#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
. /bin/bash_completion

alias yum="yum -y" 

alias debuginfo-install="debuginfo-install -y " 
