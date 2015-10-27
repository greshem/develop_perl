#!/usr/bin/perl    
use Win32::Daemon;
    Win32::Daemon::StartService();
    # ...process Perl code...
	while(1)
	{
		#print("test \n");
		sleep(1);
	}
    Win32::Daemon::StopService();

