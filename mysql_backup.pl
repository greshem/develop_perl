#!/usr/bin/perl
#use strict;
use DBI;
my $host='localhost';
my $port='3306';
my $user="root";
my $passwd='q********************n';
my $dsn="dbi:mysql:hostname=$host:port=$port:";
my $backup="/tmp/backup";
my $dbh= DBI->connect($dsn,$user,$passwd);
my %database;
unless ($dbh)
{
        print "Connect error!\n";

}
my ($sec,$min,$hour,$mday,$mon,$year,$wday)=localtime(time);
$mon = $mon+1;
$year = $year+1900;
my $terday = sprintf("%04d-%02d-%02d",$year,$mon,$mday);
#print "cd $backup\n";
my $sql="show databases";
my $sth= $dbh->prepare("$sql");
$sth->execute;
while (my @row=$sth->fetchrow_array())
{
#        print "mkdir $row[0]_$terday && cd $row[0]_$terday\n";
	print STDERR $row[0],"\n";
	print "mysqldump -pq********************n $row[0]|gzip > $row[0].sql.gz\n";
        $dbh->do("use $row[0]");
	$database{$row[0]}=[];
        my $show_table="show tables";
        my $sth_table= $dbh->prepare("$show_table");
        $sth_table->execute;
}
__END__
        while ( my @rr = $sth_table->fetchrow_array())
        {
               # print "mysqldump --opt $row[0] $rr[0]>$row[0]_$rr[0].sql.gz\n";
		print "-->", $rr[0],"\n";
		push @{$database{$row[0]}}, $rr[0];
		
		my $tth_table=$dbh->prepare("describe $rr[0]");
		$tth_table->execute;
		my @fields=();
		while( my @array= $tth_table->fetchrow_array())
		{
			print "----->", $array[0],"\n";
			push(@fields, $array[0]);
		}
		
			print "Function ",$row[0], $rr[0],"\n";
			print  "|",@fields,"\n";
			gen_list_php($row[0], $rr[0], @fields);
		
		
        }
}
$dbh->disconnect();


sub gen_list_php($,$,@)
{
	my $db;
	my $table;
	my @filed;
	($db, $table, @field)=@_;
$file=$db."_".$table."_list.php";
open(FILE, ">".$file);

print FILE <<EOF
<html>
<?php 
include("head.php");
?>
<body bgcolor="#ebebeb">
<table align=center cellpadding="4" cellspacing="1" width="600" border="0" bgcolor="#999999">
<tbody>

<?   
  \$db_host="localhost";   
  \$db_user="root";   
  \$db_password="q********************n";   
  \$db_name="$db";   
  mysql_connect(\$db_host,\$db_user,\$db_password);   
  mysql_select_db(\$db_name);   

  \$query_string="select * from $table  ";   
  \$db_data=mysql_query(\$query_string);   


  \$i=0;   
  while (list(
EOF
;
for(@field)
{
  print FILE "\$".$_.",";
}
#\$$name,\$$summary,\$$catalog,\$$prog_lang
print FILE <<EOF
)=mysql_fetch_row(\$db_data))   
  {   
    #\$menu_content[\$i]=\$id."/".\$content."/".\$main_menu."/".\$sub_menu;   
    #echo \$menu_content[\$i],"\\n";
EOF
;
print FILE "echo \"<tr>";
for (@field)
{
   if($_ eq $field[0])
   {
   print FILE <<EOF2
    <td>\$$_<a href=add$table.php?$field[0]=\$$_>���&nbsp;</a><a href=modify$table.php?id=\$$_>�޸�&nbsp;</a></td>
EOF2
;
   }
   else
   {
	print FILE <<EOF3
	<td>\$$_</td>
EOF3
;
   }
}

  print FILE "</tr>\";\n}";
  
print FILE <<EOF4
 # my_menu(\$menu_content,\$i,1,\$menu_superior_temp);   

  /* �����ݿ�ṹ��ģ������   
  # phpMyAdmin MySQL-Dump   
  #   
  # ����: localhost ���ݿ� : test   
  # --------------------------------------------------------   
   
  #   
  # ���ݱ�Ľṹ 'menu'   
  #   

  CREATE TABLE menu (   
  menu_id int(11) NOT NULL auto_increment,   
  menu varchar(20) NOT NULL,   
  menu_grade int(11) NOT NULL,   
  menu_superior int(11) NOT NULL,   
  UNIQUE menu_id (menu_id)   
  );   

  #   
  # ������������ݿ����� 'menu'   
  #   
						
  INSERT INTO menu VALUES( '1', '��ҳ����', 	'1', 	'0');   
  INSERT INTO menu VALUES( '2', '��˾����', 	'1', 	'1');   
  INSERT INTO menu VALUES( '3', '�ɹ�����', 	'2', 	'0');   
  INSERT INTO menu VALUES( '4', '�й�����', 	'2', 	'1');   
  INSERT INTO menu VALUES( '5', '�й�ʯ��', 	'2', 	'2');   
  INSERT INTO menu VALUES( '6', '�й�ʯ��', 	'2', 	'3');   
  INSERT INTO menu VALUES( '7', '��Ա��Ƹ', 	'3', 	'4');   
  INSERT INTO menu VALUES( '8', 'php��Ƹ', 	'3', 	'0');   
  INSERT INTO menu VALUES( '9', 'java��Ƹ', 	'3', 	'1');   
  INSERT INTO menu VALUES( '10', '��˾��Ʒ', 	'4', 	'2');   
  INSERT INTO menu VALUES( '11', '��װ��Ʒ', 	'4', 	'3');   
  INSERT INTO menu VALUES( '12', 'c++����', 	'4', 	'4');   
  INSERT INTO menu VALUES( '13', '������Ŀ', 	'4', 	'5');   
  INSERT INTO menu VALUES( '14', 'java����', 	'4', 	'6');   
  INSERT INTO menu VALUES( '15', 'php����', 	'4', 	'7');   
  INSERT INTO menu VALUES( '16', 'mysql����', 	'4', 	'8');   
*/   
?>
</tbody>
</table>
</body>
</html>
EOF4
;
}
