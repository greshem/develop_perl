#!/usr/bin/perl
#2011_02_13_15:59:32 add by greshem
# ��� mac  ��ַ ��ת��. ũ���µ�����.   
#2011_02_11_13:23:20 add by greshem



sub pstree_nwconn()
{
	%ret;
   open(FILE, "pstree -pa |") or die("open pstre pipe eror\n");                         
                                                                                         
    for(<FILE>)
    {
        if($_=~/nwconn,(\d+)\s+.*:(.*):.*/)
        {
            $pid=$1;                                                                     
            $mac=$2;                                                                     
			if($mac_nwconn{$mac})
			{
				$suffix= $mac_nwconn{$mac};
				$ret{$mac}=$pid."_".$suffix;
			}
        }
    }                  

	return %ret;
}

%mac_nwconn_all= pstree_nwconn();;

%mac_nwconn_win=(
"f0.7d.68.16.50.5c"=>"sf_back",
"0.1.6c.72.54.7a"=>"sf_main",
"90.fb.a6.9a.1b.e1"=>"ar_main",
"90.fb.a6.9a.1b.49"=>"ar_back",
#"0.21.97.69.bf.f8"=>"dzh_dcd",
"0.e0.4c.83.ac.8b"=>"qihuo",
"0.1.6c.72.54.93"=>"iptv",
"0.24.1.2.33.71"=>"ETF",
);


sub get_nwconn__comand_line($)
{
	($pid)=@_;
	#ps -lf  -p 1402
	open(FILE, "ps -lf -p $pid |") or die("open pipe error\n");
	for (<FILE>)
	{
		if($_=~/.*nwconn.*:(.*):.*/)
		{
			$mac=$1;
		}
	}
	return $mac;	
}
########################################################################
#mainloop 
kill_straces();

#open(FILE, "ps -elf |") or die("pipe open error\n");
open(FILE, "ps -el |") or die("pipe open error\n");

$log_path= "strace_log";
mkdir ($log_path);
chdir($log_path);
$self_pid=$$;

foreach  (<FILE>)
{
	
	@array=split(/\s+/, $_);

	$pid=$array[3];
	$name=$array[$#array];
	if(  $name=~/^nwconn|smb|^nwser|^nwbind/)
	{}else
	{next;}
	#print "pid=",$pid,"\t", "name=", $name,"\n";

	# ���ڽ��� mac ��ַ������
	$append=undef;	

	if($name=~/nwconn/)
	{
		$mac=get_nwconn__comand_line($pid);		
		if($mac_nwconn_win{$mac})
		{
			$append=$mac_nwconn_win{$mac};
		}
		else
		{
			print "# $mac ��û�б�Ҫ׷�ٵ�n_w_c_onn \n";
			next;
		}
	}

 	$command =<<EOF
strace -f  -e trace=open -p  $pid  >> $name\_$pid\_$append.log  2>&1  &
EOF
;
	print $command;
	if( $pid eq $self_pid)
	{
		print "ERROR �������� ����strace \n";
		next;
	}
	if( $name eq "strace")
	{
		print "ERROR ����strace , ����strace \n";
		next;
	}

	system($command);
}

#print "will sleep 60\n";
#sleep(60);

#kill_straces();

sub kill_straces()
{
	system("pkill strace");
}
