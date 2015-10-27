#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_03_17_14:17:31   星期四   add by greshem
1. 甘特图的中文的问题， 一般用  SetFont(FF_CUSTOM) 变成 SetFont(
2. 两个中文字体的 已经带进去了 在windows 的c:\\windows\\system32\\fonts
目录有. 经存放在 
./lib/fonts/vera/simsun.ttc
./lib/fonts/vera/simhei.ttf

3. 安装的时候 放在linux 上 解压， WINDOWS 上没有测试，还有很多 未知的东西，
不建议放到 windows 搭建环境. 
4. 安装好了 ms 的项目工程的导入的 插件.  modules/projectimporter/ 插件. 

5. 中文包也已经安装好了, locales/cn/ 注意语言的注册要通过 
		locales/cn/lang.php 文件来注册.  

6. 原来的包没有  lib/jpgraph/src/jpgraph_gb2312.php  这里也添加好了. 

8. 对于具体的甘特图修改了什么地方， 可以通过  安装好 两个插件 配置好配置文件
连个目录再 diff 一下 就可以看出具体修改了什么地方过了. 

