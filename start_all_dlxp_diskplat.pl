#!/usr/bin/perl
while(1)
{
	stop();
	start();
	sleep(150);
}

sub  start ()
{
	for (glob("C:\\home_work\\vmware_app\\dlxp_*\\*.vmx"))
	{
		#print $_."\n";
		print "   vmrun -T ws    start \"$_\"   \n";
		system("   vmrun -T ws    start \"$_\"   \n");
		#sleep(30);
	}
}

sub stop()
{
	for (glob("C:\\home_work\\vmware_app\\dlxp_*\\*.vmx"))
	{
		#print $_."\n";
		print "   vmrun -T ws    stop  \"$_\"   \n";
		system("   vmrun -T ws    stop \"$_\"   \n");
	}
}
