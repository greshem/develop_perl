#!/usr/bin/perl
#qw 里面去 注释  还是 失效的 
# 本来 想在   iso_db_path 添加 有没有 备份过的注释 应该是不行了 . 
my @array=qw(
aa #comment
bb #comment
cc);

for(@array)
{
print $_;
}
