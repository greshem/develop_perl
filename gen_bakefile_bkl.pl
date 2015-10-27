#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
<makefile>
<exe id="hello">
   <sources>$(fileList('src/*.cpp'))</sources>
</exe>
</makefile> 

