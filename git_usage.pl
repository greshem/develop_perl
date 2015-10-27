#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
git init
git add  . 
git commit  //提交所有的文件
git status 
最初的库的建设。 
#################
vim test.file 

git commit 有把test.file 文件进行提交了。 

git show test.file 就显示了 test.file 的所有的版本的修改的记录。 

#########
更多的资料可以参考。 
http://progit.org/book/zh/ 

