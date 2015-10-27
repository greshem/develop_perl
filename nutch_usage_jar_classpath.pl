#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash
#2011_02_22_06:57:49 add by greshem
#  获取 sdb1:\_x_file\_xfile_2011_02\nutch_lucene\apache-nutch-1.2-bin.tar.gz 
# 上传 解压 文件.
#cd 到nutch 的解压目录. 
# 把所有的 jar 都合并到一起.  形成 classpath.
######
## 另外  nutch 的 bin 目录 还有其他的命令 也可以 从 bash 脚本里面提取 并dump 成下面的命令. 

for each in $(find . |grep jar$); do classpath=$classpath:$each; done
 
#后买的这个 类名是  /tmp/nutch-1.2/bin/nutch 里面提取的, 所有命令的dump.  
 java -classpath  $classpath org.apache.nutch.indexer.IndexMerger
 java -classpath  $classpath org.apache.nutch.crawl.Crawl
 java -classpath  $classpath org.apache.nutch.crawl.Injector
 java -classpath  $classpath org.apache.nutch.crawl.Generator
 java -classpath  $classpath org.apache.nutch.tools.FreeGenerator
 java -classpath  $classpath org.apache.nutch.fetcher.Fetcher
 java -classpath  $classpath org.apache.nutch.fetcher.Fetcher2
 java -classpath  $classpath org.apache.nutch.parse.ParseSegment
 java -classpath  $classpath org.apache.nutch.crawl.CrawlDbReader
 java -classpath  $classpath org.apache.nutch.tools.compat.CrawlDbConverter
 java -classpath  $classpath org.apache.nutch.crawl.CrawlDbMerger
 java -classpath  $classpath org.apache.nutch.crawl.LinkDbReader
 java -classpath  $classpath org.apache.nutch.segment.SegmentReader
 java -classpath  $classpath org.apache.nutch.segment.SegmentReader
 java -classpath  $classpath org.apache.nutch.segment.SegmentMerger
 java -classpath  $classpath org.apache.nutch.crawl.CrawlDb
 java -classpath  $classpath org.apache.nutch.crawl.LinkDb
 java -classpath  $classpath org.apache.nutch.crawl.LinkDbMerger
 java -classpath  $classpath org.apache.nutch.indexer.Indexer
 java -classpath  $classpath org.apache.nutch.indexer.solr.SolrIndexer
 java -classpath  $classpath org.apache.nutch.indexer.DeleteDuplicates
 java -classpath  $classpath org.apache.nutch.indexer.solr.SolrDeleteDuplicates
 java -classpath  $classpath org.apache.nutch.indexer.IndexMerger
 java -classpath  $classpath org.apache.nutch.plugin.PluginRepository

