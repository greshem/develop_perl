#!/usr/bin/perl
##注意:  getqipu13_test.php 的匹配模式 下一次 需要变化: 
my $count=shift;

if($count!~/\d+/)
{
	die("$0 n_day \n");
}

get_all_duiju_list($count);


#deal_with_one_duiju_list("/tmp/tmp_4");
for (glob("/tmp/duiju_list_*html"))
{
	#print "Deal with $_\n";
	deal_with_one_duiju_list($_);
}

print "perl xingbo_change_to_multigo.pl \n";
print "perl xingbo_get_eden_wins.pl |sh \n";
print "mv 钱奕程* /tmp/\n";

########################################################################
sub get_all_duiju_list($)
{
	(my $count)=@_;
	for $each (1..$count)
	{
		if( ! -f "/tmp/duiju_list_$each.html")
		{
		system("wget -k  \"http://61.129.77.195//newhistory/history1_test.php?hname=&user_name=XINBO145657&curpage=$each&type=&school_id=756&curpage1=&sortby=\" -O tmp.html");
	#vim today.html 

		system("sed 's/td>/td>\\\n/g' tmp.html  -i ");
		system("cp  tmp.html /tmp/duiju_list_$each.html ");
		}
		else
		{
			print " /tmp/duiju_list_$each.html 已经下载过了\n";
		}
	}

}
sub get_today_duiju_list()
{
	system("wget -k  \"http://61.129.77.195//newhistory/history1_test.php?hname=&user_name=XINBO145657&curpage=1&type=&school_id=756&curpage1=&sortby=\" -O today.html");
#vim today.html 

	system("sed 's/td>/td>\\\n/g' today.html  -i ");
	system("cp  today.html /tmp/duiju_list.html ");

}

sub deal_with_one_duiju_list($)
{
	(my $input_file)=@_;
	open(FILE , $input_file)   or die("open file error \n");
	for(<FILE>)
	{
		get_main_key_from_url($_);
	}
}
sub get_main_key_from_url()
{
	(my $input_url)=@_;	
	my $line=$_;
	#if($line=~/getqipu13_test.php\?gameinfo=(\d+)\|.*\|(20..-..-..).*(..:..:..)\|(.*)\|(.*)\|(.*)\|.*/)
	if($line=~/getqipu19_test.php\?gameinfo=(\d+)\|.*\|(20..-..-..).*(..:..:..)\|(.*)\|(.*)\|(.*)\|.*/)
	{
	my	$id=$1;
	my	$date=$2;
	my	$time=$3;
	my	$result=$4;
	my	$black=$5;
	my	$white=$6;

		$time=~s/:/-/g;
		$black=~s/\[//g;
		$black=~s/\]//g;
		$white=~s/\[//g;
		$white=~s/\]//g;

		my $local_file= "${date}_${time}_${result}_${black}_${white}_${id}";
		use POSIX qw(strftime);
		my $today=POSIX::strftime('%Y-%m-%d',localtime(time()));   #2013-12-03

		if($line=~/(http:.*)\"><img.*/)
		{
			my $url=$1;
			if($line=~/2014-..-../) #20
			#if($line=~/$today/) #20
			{
				$url=~s/\&\#32;/ /g;  #去除 html 的字符.
				$url=~s/amp;//g;      #去除 html 的amp 
				print "wget \"$url\"  -O  $local_file.txt \n";
				print "cp   $local_file.txt  $local_file.utf8.txt \n";
				print "/bin/utf8_to_gb2312.sh  $local_file.txt > /tmp/tmp \n";
				print "mv /tmp/tmp     $local_file.txt \n";
			}
		}
		else
		{
			print "不匹配\n";
		}
		#print "wget 
	}
}
__DATA__

wget -k  "http://61.129.77.195//newhistory/history1_test.php?hname=&user_name=XINBO145657&curpage=1&type=&school_id=756&curpage1=&sortby=" -O today.html
#vim today.html 
sed 's/td>/td>\n/g' today.html  -i
cp  today.html /tmp/duiju_list.html

grep gameinfo today.html > /tmp/tmp
urlveiw.pl  /tmp/tmp |sed 's/^/"/g' |sed 's/$/"/g' |sed 's/^/wget /g'  > /tmp/tmp2


#wget "http://61.129.77.195//newhistory/getqipu13_test.php?gameinfo=9974994|吃子练习：先吃5子为胜|2013-11-27 19:11:19|白中盘胜|顾涵元[20k]|钱奕程[20k]|1+&qipu=9974994"   -O  9974994.html
#vim 9974994.html 
#utf8_to_gb2312.sh  9974994.html 

