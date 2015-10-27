#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH


umask 022
export ORACLE_BASE=/home/oracle/app
export ORACLE_HOME=$ORACLE_BASE/oracle/product/11.2.0/dbhome_1
export ORACLE_SID=esbdb
export PATH=$PATH:$HOME/bin:$ORACLE_HOME/bin
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:/usr/lib

