#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
string 使用方便功能强，我们一直用它！

6 附录
string 函数列表
函数名 	描述
begin 	得到指向字符串开头的Iterator
end 	得到指向字符串结尾的Iterator
rbegin 	得到指向反向字符串开头的Iterator
rend 	得到指向反向字符串结尾的Iterator
size 	得到字符串的大小
length 	和size函数功能相同
max_size 	字符串可能的最大大小
capacity 	在不重新分配内存的情况下，字符串可能的大小
empty 	判断是否为空
operator[] 	取第几个元素，相当于数组
c_str 	取得C风格的const char* 字符串
data 	取得字符串内容地址
operator= 	赋值操作符
reserve 	预留空间
swap 	交换函数
insert 	插入字符
append 	追加字符
push_back 	追加字符
operator+= 	+= 操作符
erase 	删除字符串
clear 	清空字符容器中所有内容
resize 	重新分配空间
assign 	和赋值操作符一样
replace 	替代
copy 	字符串到空间
find 	查找
rfind 	反向查找
find_first_of 	查找包含子串中的任何字符，返回第一个位置
find_first_not_of 	查找不包含子串中的任何字符，返回第一个位置
find_last_of 	查找包含子串中的任何字符，返回最后一个位置
find_last_not_of 	查找不包含子串中的任何字符，返回最后一个位置
substr 	得到字串
compare 	比较字符串
operator+ 	字符串链接
operator== 	判断是否相等
operator!= 	判断是否不等于
operator< 	判断是否小于
operator>> 	从输入流中读入字符串
operator<< 	字符串写入输出流
getline 	从输入流中读入一行 
