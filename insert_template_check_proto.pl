#!/usr/bin/perl
#2011_04_12_14:05:54   星期二   add by greshem
use strict;

sub check_main_sub($)
{
	(my $main)=@_;
	open(FILE, "> /tmp/$main") or die("open file error $!\n");
	select(FILE);		
print  <<EOF
	REQUEST header;
	FRAME frame;
	memcpy(&header, data, sizeof(REQUEST));
	int main_function=$main;
	int sub_function=header.sub_function;
	int build_len=0;
	int send_len=0;

	int error_code=0;

	if(header.main_function != main_function )
	{
		log::Instance()->logger("PANIC: %s %d  \\n", "main sub 请求号错误, 协议投递错误, main= " , main_function );
		error_code=1;
	}

	if(header.sub_function < 0 || header.sub_function> m_sub_protocol_dict.getMax(main_function) )
	{
		log::Instance()->logger("错误:  %s\\n", "sub 请求号错误, 副协议 %d  超过最大值 ", sub_function);
		error_code<<=1;

	}

	if(header.size != data_len)
	{
		log::Instance()->logger("错误:  %s\\n", "请求包的大小 不一致");
		error_code<<=1;

	}	
	if(error_code)
	{
		build_len=build_protocol_error_frame(frame);
		send_len =send_one_frame(fd, frame);
		assert(build_len == send_len);
	}
	else
	{
		return main_1_to_402(fd, data, data_len);
	}
	return -1;
EOF
;
	select(STDOUT);
	close(FILE);
	
}

#check_main_sub(1,1);
my @files=glob("*.cpp");
for (@files)
{
	#print $_."\n";
	if($_=~/main_(\d+)_.*/)
	{
		my $main=$1;
		#print "main\t".$main."\n";
		#print $_."\n";
		my $file_name=$_;
		check_main_sub($main);
		#sed '3  r /tmp/02' main_02_SERVERNAME.cpp 
		print <<EOF
sed '3  r /tmp/$main'  $file_name   -i

EOF
;
	}
}
