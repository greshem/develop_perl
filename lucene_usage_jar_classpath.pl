#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_02_10_ add by greshem

lucene-2.0.0 有本来就编译好的jar 类, 
f13 64bit 下 ant   是失败的. 

查看类
jar -tf lucene-demos-2.0.0.jar
果然里面有 demo 里面的函数， 确认里面有好几个 类 并且有main 函数. 

通过 jar 的方式加载
java -jar  lucene-demos-2.0.0.jar  org/apache/lucene/demo/IndexFiles.class
java -jar  lucene-demos-2.0.0.jar  org.apache.lucene.demo.IndexFiles
java -jar  lucene-demos-2.0.0.jar  IndexFiles
都失败了 。 

通过 classpath 的方式加载, 
java -classpath  lucene-demos-2.0.0.jar  org.apache.lucene.demo.IndexFiles
java -classpath  lucene-demos-2.0.0.jar:lucene-core-2.0.0.jar;  org.apache.lucene.demo.IndexFiles
java -classpath  lucene-demos-2.0.0.jar:lucene-core-2.0.0.jar  org.apache.lucene.demo.IndexFiles
成功

所以对于制作成jar 的包 通过 classpath 的方式进行 加载运行， 


使用
strace java -classpath  lucene-demos-2.0.0.jar:lucene-core-2.0.0.jar  org.apache.lucene.demo.IndexFiles src/
对 代码进行索引， 生成在index 目录. 


java -classpath  lucene-demos-2.0.0.jar:lucene-core-2.0.0.jar  org.apache.lucene.demo.SearchFiles 
对文件进行搜索. 用index关键词 很容易得到结果.  


