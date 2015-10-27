#!/usr/bin/perl
use Win32;
use Win32::Process;

my $ok=undef;
while(1)
{
	if( is_vnc_ok())
	{
		print "#vnc 连接正常\n";
	}
	else
	{
		print "#vnc 连接不正常\n";
		#system(" vncviewer.exe   172.16.3.52:0  ");	
		create_vncviewer();
	}
	sleep(10);
}

#==========================================================================
sub is_vnc_ok()
{
	open(PIPE, " netstat -na |") or die("netstat -na error\n");
	for(<PIPE>)
	{
		if($_=~/172.16.3.52.5900.*ESTABLISHED/)
		{
			return 1;
			#$ok=1;
		}
	}
	return undef;
}

sub create_vncviewer()
{
	$ApplicationName = 'c:\\bin\\vncviewer.exe';
	$CommandLine     = '"c:\\bin\\vncviewer.exe"  "172.16.3.52:0"';
	 
	$CreateOptions = NORMAL_PRIORITY_CLASS | DETACHED_PROCESS;
	Win32::Process::Create($ProcessObj,$ApplicationName,$CommandLine,
		0, # Don't inherit.
		$CreateOptions,
		".")   # current dir.
		or die print_error();
	 
	#$ProcessObj->Wait(INFINITE) or warn print_error();
	 
	$ProcessObj->GetExitCode($ExitCode) or warn print_error();
	 
	print "[$CommandLine] exited with $ExitCode\n";
} 

sub print_error {
    print Win32::FormatMessage( Win32::GetLastError() );
}

__DATA__
C:\Users\Administrator\Desktop\快捷方式_all>netstat -na |grep 5900
  TCP    192.168.1.12:21435     172.16.3.52:5900       ESTABLISHED 
