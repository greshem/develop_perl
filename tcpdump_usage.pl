#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
ipx usage; \
 ncp.func == 0x57
 ############################
  ncp.func == 0x16 ;下面 还有 更多的函数. 
  ncp.func == 0x16 && ncp.subfunc == 0x12 ;获取 长期的dir handle 
  ncp.func == 0x16 && ncp.subfunc == 0x14 ; 释放 dir handle.
  ncp.func == 0x16 && ncp.subfunc == 0x15 ; 获取 卷
  ncp.func == 0x16 && ncp.subfunc == 0x0a ; 创建目录	
  ncp.func == 0x16 && ncp.subfunc == 0xf ; rename 
  ############################
ipx.packet_type == 0x11 ncp 协议的包.
ipx.dst contains "505c" or ipx.src contains "505c"

dhcpd  包
tcpdump  port  67 -s 0 -i eth0 -w dhcpd.pcap

抓取dhcp包并供解析. 
tcpdump -s 1518 -lenx port bootps or port bootpc | dhcpdump


NFS 协议包。 
 tcpdump port 2049 -s 0  -i lo  -w nfs_proto_copy_file.pcap   

抓取所有的tcp包， 但是排除ssh 的影响. 
tcpdump ip and port not 22 -s 0    -i lo -w http.pcap

httpd 包. 
tcpdump ip and port 80  -s 0    -i eth0  -w http.pcap

not 否定. 
tcpdump ip and port not 22 -s 0    -i lo -w http.pcap


//########################################################################
完整的包 截断 
这里 -s 0 就可以把 nfs 的包都抓下来了. 
 tcpdump port 2049 -s 0  -i lo  -w nfs_proto_copy_file.pcap   
这里只能抓 取一点点的数据. 
 tcpdump port 2049  -i lo  -w nfs_proto_copy_file.pcap  

ipx包
tcpdump ipx -s 0 -i eth0 -w ipx.pcap

host 制定ip 的机子.  
tcpdump -w greshem.pcap -s  0 host 192.168.0.234 

某台机器的某个端口
tcpdump -w greshem_port.pcap -s  0 host 192.168.0.234 and port 3333 

网关 gateway  ftp 数据. 
 tcpdump 'gateway 192.168.0.1  and (port ftp or ftp-data)'



