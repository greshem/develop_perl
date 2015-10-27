#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

perl -pi -e 's/^\s*3\s+/bbbbb/g' bb.c
#  	-i[extension]     edit <> files in place (makes backup if extension supplied)
# 	-p                assume loop like -n but print line also, like sed
#	-e program        one line of program (several -e's allowed, omit programfile)



