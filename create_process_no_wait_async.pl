#!/usr/bin/perl -w
 
use Win32;
use Win32::Process;

for(1..10)
{
	create_vncviewer();
}

#==========================================================================
sub create_vncviewer()
{
	$ApplicationName = 'c:\\bin\\vncviewer.exe';
	$CommandLine     = 'notepad';
	 
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
