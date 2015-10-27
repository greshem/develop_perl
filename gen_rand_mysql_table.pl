#!/usr/bin/perl
#这里处理 mysql 插入语句, 的方式, 特殊了一点, 要保证最后一个pattern 模式和其他额不一样就可以了. 

#2010_08_26_21:39:43 add by qzj
#修改里面的 mysql 语句多出一个 ", " 逗号的 问题。 

use Template;
use String::Random;

use rand_word;

###############################################################################
# if ( -f "/bin/rand_word" )
# {
# 		system("/bin/rand_word > list ");
# }
###############################################################################
#open(FILE, $file) or die("open file error\n");
#@fields=qw( name  time content   add_time last_modify_time );
#@fields=map{ chomp; $_} (<FILE>);
@fields=rand_word_array(int(rand(16))+4);
@pattern=('\w{8}'  , '\d{4}-\d{2}-\d{2}' , '\w{100}' ,  '\d{4}-\d{2}-\d{2}' , '\d{4}-\d{2}-\d{2}-\d');

#随机的正则pattern 和 fields  一样的多。 
while(scalar(@pattern) < scalar(@fields))
{
	push(@pattern, '\d{4}-\d{2}-\d{2}' );
	
	if( scalar(@pattern) == scalar(@fields))
	{
		#最后一个修改掉。 
		$pattern[$#pattern]= '\d{4}-\d{2}-\d{10}';
		last;
	}
}


$table=shift or die("Usage: $0  table_name\n");
my $vars={ 
	db=>"qianzhongjie", 
	table=>$table,
	fields=>\@fields
};
my $template=Template->new();

$template->process(\*DATA, $vars, $table.".sql")
	||die $template->error();
#######################################
#insert data

$str_rand=new String::Random;
my $i;
open(OUTPUT, ">>".$table.".sql");
for($i=0;$i<=rand(100);$i++)
{
	print OUTPUT  "insert $table values (";
	print OUTPUT " 0",",\t";
	
	$j=0;
	for(@pattern)
	{
		#假如是最后一个字段, 就不应该再跟上逗号可, 否知 mysql < output.sql 的时候会发生,语法错误. 
		if($j == $#pattern )
		{
			print OUTPUT  "\'", $str_rand->randregex($_)," \' \t";	
		}
		else
		{
			print OUTPUT  "\'", $str_rand->randregex($_),"\',", " \t";	
		}
		$j++;
	}
	print OUTPUT  ");\n";
 }
close(OUTPUT);
__DATA__
use [%db%];
drop table  if exists [%table%];
create table [%table%](
id int(11) NOT NULL auto_increment,
[%FOREACH field IN fields%] 
 [%field%] text NOT NULL, 
[%END%]
unique id(id)
);
