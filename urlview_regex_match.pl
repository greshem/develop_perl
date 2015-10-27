#!/usr/bin/perl
#define DEFAULT_REGEXP "(((https?|ftp|gopher)://|(mailto|file|news):)[^' \t<>\"]+|(www|web|w3)\\.[-a-z0-9.]+)[^' \t.,;<>\"\\):]"
#define DEFAULT_REGEXP "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}\\ $"

$url_regex= "(((https?|ftp|gopher)://|(mailto|file|news):)[^' \t<>\"]+|(www|web|w3)\\.[-a-z0-9.]+)[^' \t.,;<>\"\\):]";

$url="http://www.baidu.com/a.jpg";
if($url =~/$url_regex/)
{
	print "ok \n";
}
else
{
	print "not ok \n";
}
