#!/usr/bin/perl
#lsof -i:3333 -P
#diskplat 30503 root   31u  IPv4 130795      0t0  TCP 192.168.21.137:3333->192.168.21.203:5297 (ESTABLISHED)
#diskplat 30503 root   32u  IPv4 130085      0t0  TCP 192.168.21.137:3333->192.168.21.203:5298 (ESTABLISHED)
#diskplat 30503 root   39u  IPv4 128586      0t0  TCP 192.168.21.137:3333->192.168.21.199:5304 (ESTABLISHED)
#diskplat 30503 root   42u  IPv4 130007      0t0  TCP 192.168.21.137:3333->192.168.21.203:5296 (ESTABLISHED)
#diskplat 30503 root   46u  IPv4 128800      0t0  TCP 192.168.21.137:3333->192.168.21.204:5296 (ESTABLISHED)
#diskplat 30503 root   49u  IPv4 131845      0t0  TCP 192.168.21.137:3333->192.168.21.190:5297 (ESTABLISHED)
#diskplat 30503 root   51u  IPv4 131874      0t0  TCP 192.168.21.137:3333->192.168.21.191:5297 (ESTABLISHED)
open(PIPE, "lsof -i:3333 -P -n|sort -k9 |") or die("open lsof error \n");

for(<PIPE>)
{
	if($_=~/.*TCP\s+(\S+)\:(.*)->(.*)\:(.*)\s+\(.*/)
	{
		#print $1."\t".$2."\t". $3."\t".$4."\n ";
		print "tcpdump -i eth1  dst port  $4 # $3 \n";
	}
}

