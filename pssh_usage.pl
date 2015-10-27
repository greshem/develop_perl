#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
  	Connect to host1 and host2, and print "hello, world" from each:
	      pssh -i -H "host1 host2" echo "hello, world"

       Print "hello, world" from each host specified in the file hosts.txt:
	      pssh -i -h hosts.txt echo "hello, world"

       Run a command as root with a prompt for the root password:
	      pssh -i -h hosts.txt -A -l root echo hi

       Run a long command without timing out:
	      pssh -i -h hosts.txt -t 0 sleep 10000

       If  the	file  hosts.txt	 has  a	 large number of entries, say 100, then the parallelism option may also be set to 100 to
       ensure that the commands are run concurrently:
	      pssh -i -h hosts.txt -p 100 -t 0 sleep 10000

       Run a command without checking or saving host keys:
	      pssh -i -H host1 -H host2 -x "-O StrictHostKeyChecking=no	 -O  UserKnownHostsFile=/dev/null  -O  GlobalKnownHosts-
	      File=/dev/null" echo hi

       Print the node number for each connection (this will print 0, 1, and 2):
	      pssh -i -H host1 -H host1 -H host2 'echo $PSSH_NODENUM'


