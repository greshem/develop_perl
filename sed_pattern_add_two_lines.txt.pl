#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
23:54 2010-7-16

1. 在<head> 这一行添加 <?php include("head.php"?> 这一行。 


sed '/<head>/a  <?php include("head.php")?>'  a.html

#########
添加两行， 可以用\n 进行分割。 
sed '/root/a test \n test \n" /etc/passwd 
