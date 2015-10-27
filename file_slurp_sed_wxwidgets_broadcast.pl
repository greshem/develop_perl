#!/usr/bin/perl
	use File::Slurp qw(edit_file read_file);

	my $socket_header='C:\works\wxWidgets-2.8.10\include\wx\socket.h';
	my $text = read_file( $socket_header ) ;
	if($text=~/wxSOCKET_BROADCAST/)
	{
			print "#已经添加  wxSOCKET_BROADCAST = 16 \n";
	}
	else
	{
		#添加 wxSOCKET_BROADCAST = 16
		edit_file { s/.*wxSOCKET_REUSEADDR.*=.*8/  wxSOCKET_REUSEADDR = 8,\n  wxSOCKET_BROADCAST = 16/g }  $socket_header; 
	}

  #
  ###########
  $text=  read_file('C:\works\wxWidgets-2.8.10\include\wx\sckaddr.h' ) ;
  if($text=~/BroadcastAddress/)
  {
	  	print "#BroadcastAddress , 函数已经添加 \n"
	}
else
{
  edit_file { s/~wxIPV4address\(\);/  ~wxIPV4address();\n   bool BroadcastAddress(); \n  /g} 'C:\works\wxWidgets-2.8.10\include\wx\sckaddr.h';
  edit_file { s/wxIPV4address::~wxIPV4address\(\)/    bool wxIPV4address::BroadcastAddress() \n {\n return 0; \n }\n wxIPV4address::~wxIPV4address\(\)/g}  'C:\works\wxWidgets-2.8.10\src\common\sckaddr.cpp';
  }
