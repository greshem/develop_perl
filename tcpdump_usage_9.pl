#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

dhcpd  ��
tcpdump  port  67 -s 0 -i eth0 -w dhcpd.pcap

ץȡdhcp����������. 
tcpdump -s 1518 -lenx port bootps or port bootpc | dhcpdump


NFS Э����� 
 tcpdump port 2049 -s 0  -i lo  -w nfs_proto_copy_file.pcap   

ץȡ���е�tcp���� �����ų�ssh ��Ӱ��. 
tcpdump ip and port not 22 -s 0    -i lo -w http.pcap

httpd ��. 
tcpdump ip and port 80  -s 0    -i eth0  -w http.pcap

not ��. 
tcpdump ip and port not 22 -s 0    -i lo -w http.pcap


//########################################################################
�����İ�
���� -s 0 �Ϳ��԰� nfs �İ���ץ������. 
 tcpdump port 2049 -s 0  -i lo  -w nfs_proto_copy_file.pcap   
����ֻ��ץ ȡһ��������. 
 tcpdump port 2049  -i lo  -w nfs_proto_copy_file.pcap  

ipx��
tcpdump ipx -s 0 -i eth0 -w ipx.pcap

host �ƶ�ip �Ļ���.  
tcpdump -w greshem.pcap -s  0 host 192.168.0.234 

ĳ̨������ĳ���˿�
tcpdump -w greshem_port.pcap -s  0 host 192.168.0.234 and port 3333 

���� gateway  ftp ����. 
 tcpdump 'gateway 192.168.0.1  and (port ftp or ftp-data)'



