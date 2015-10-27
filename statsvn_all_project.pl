#!/usr/bin/perl

use File::Basename;

#$username=shift;

for (glob("/home/svn/*") )
{
	if( -d $_)
	{
		$url=$_;
		$url=~s/\/home//g;
		#print "svn co http://192.168.0.234/".$url."\t". basename($_)." \n";
		$project_name=  basename($_);
		print "############################################\n";
		print "svn  --username root   --password q********************n  co http://192.168.1.73/".$url."\t". $project_name." \n";

		#print " svn log -v --xml   http://192.168.1.73/svn/$project_name/trunk  > $project_name.log \n";
		print " svn log -v --xml   http://192.168.1.73/svn/$project_name/  > $project_name.log \n";

		print "java -jar   ~/statsvn_log/statsvn-0.7.0/statsvn.jar   -verbose -output-dir /var/www/html/statsvn/$project_name/ $project_name.log /tmp/$project_name \n" ;

		if(defined($username))
		{
			#print "svn  --username $username  --password $username   co http://192.168.1.73/".$url."\t". basename($_)." \n";
		}
		else
		{
			#print "svn co http://192.168.1.73/".$url."\t". basename($_)." \n";
		}
	}
}
