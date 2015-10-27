#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_01_24_ add by greshem
########################################################################
1. $_
$ARG，常常是一个默认变量

2. @_
@ARG，子例程参数表

3. {row.content}
$PROGRAM_NAME，本程序的名字

4. @ARGV
本程序的命令行参数表

5. $"
$LIST_SEPARATOR，数组内插到双引号字符串中时所用的分隔符，
默认为空格

6. $,
$OFS，或$OUTPUT_FIELD_SEPARATOR，用于print的输出字段分隔符，
即一个print语句中用逗号分隔的部分之间用什么分隔，默认为无

7. $
$ORS，或$OUTPUT_RECORD_SEPARATOR，用于print的输出记录分隔符，
即一个print语句结束时末尾添加什么，默认为无

8. $/
$RS，或$INPUT_RECORD_SEPARATOR，输入记录分隔符，改变了readline，
<FH>和chomp对于“行”的看法，默认为换行符

9. $.
$NR，或$INPUT_LINE_NUMBER，最后读取的“行”号(注意行的概念可能
被8所改变)

10. $|
$AUTOFLUSH，或$OUTPUT_AUTOFLUSH，输出缓冲区开关，默认为0，即关

11. $$
$PID，或$PROCESS_ID，本脚本的进程号(PID)

12. $!
$ERRNO，或$OS_ERROR，上一次系统调用错误值

13. $@
$EVAL_ERROR，上一次eval操作错误值

14. $^I
$INPLACE_EDIT，现场编辑的备份文件扩展名

15. %ENV
当前环境变量

16. 与正则表达式相关的几个量
|<-($`)->|<-($&)->|<-($')->|
/ ------- mmmmmmmm ++++++++/ => 正则表达式(注意：空格不代表实际空格)
|       |匹配部分|
0  ($-[0])      ($+[0])

17. $^O
操作系统名称。
或者
use English;
print $OSNAME;
或者
use Config;
print $Config{'osname'};  
########################################################################

