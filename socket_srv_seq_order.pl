#!/usr/bin/perl
#20100715
#server 
print "###############SERVER############\n";
print 'socket(AF_INET, SOCK_STREM)\n';
print "\n";
print "struct sockaddr_in addr;\n";
print "addr.sin_family=AF_INET;\n"; 
print "addr.sin_port=htons(2345)\n";
print "addr.sin_addr.s_addr=htonl(INADDR_ANY)\n";
print "\n";
print "bind( fd, &addr, sizeof(addr));\n";

print "\n";
print "listen(fd, 3)\n";

print "client=accept(fd, &addr, &addr_len)\n";

print "while ( (count=read(fd, buffer, sizeof(buffer) )) > 0)\n";
print "{\n";
print "write(2, buffer, count);\n";
print "} \n";
