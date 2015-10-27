#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
echo \*.tar.gz >> .git/info/exclude
echo \*.tgz >> .git/info/exclude
echo \*.jpg >> .git/info/exclude
echo \*.tar >> .git/info/exclude
echo \*.zip >> .git/info/exclude
echo \*.bzip2 >> .git/info/exclude
echo \*.gz >> .git/info/exclude
echo .git >> .git/info/exclude

