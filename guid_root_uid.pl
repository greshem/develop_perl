#!/usr/bin/perl
if($> != 0)
{
	die("not root user \n");
}
else
{
	print "i am root \n";
}
