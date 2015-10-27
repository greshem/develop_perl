#!/usr/bin/perl

print get_username();
sub get_username()
{
	my  $Sys_name = $^O;
	my $name;
	if ($Sys_name =~ /MSWin32/)
	{
	   #print $ENV{'USERNAME'},"\n";
	   $name=$ENV{'USERNAME'};
	}
	else {
		 if($Sys_name =~ /linux/)
		{
			  #print $ENV{'USER'},"\n";
			  $name=$ENV{'USER'};
		}
		else
		{
			 #print "Unknow\n";
			$name="Unknow";
		}
	}
	return $name;
}
