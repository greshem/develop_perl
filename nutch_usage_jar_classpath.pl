#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash
#2011_02_22_06:57:49 add by greshem
#  ��ȡ sdb1:\_x_file\_xfile_2011_02\nutch_lucene\apache-nutch-1.2-bin.tar.gz 
# �ϴ� ��ѹ �ļ�.
#cd ��nutch �Ľ�ѹĿ¼. 
# �����е� jar ���ϲ���һ��.  �γ� classpath.
######
## ����  nutch �� bin Ŀ¼ �������������� Ҳ���� �� bash �ű�������ȡ ��dump �����������. 

for each in $(find . |grep jar$); do classpath=$classpath:$each; done
 
#�������� ������  /tmp/nutch-1.2/bin/nutch ������ȡ��, ���������dump.  
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

