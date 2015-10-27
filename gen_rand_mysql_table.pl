#!/usr/bin/perl
#���ﴦ�� mysql �������, �ķ�ʽ, ������һ��, Ҫ��֤���һ��pattern ģʽ�������һ���Ϳ�����. 

#2010_08_26_21:39:43 add by qzj
#�޸������ mysql �����һ�� ", " ���ŵ� ���⡣ 

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

#���������pattern �� fields  һ���Ķࡣ 
while(scalar(@pattern) < scalar(@fields))
{
	push(@pattern, '\d{4}-\d{2}-\d{2}' );
	
	if( scalar(@pattern) == scalar(@fields))
	{
		#���һ���޸ĵ��� 
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
		#���������һ���ֶ�, �Ͳ�Ӧ���ٸ��϶��ſ�, ��֪ mysql < output.sql ��ʱ��ᷢ��,�﷨����. 
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
