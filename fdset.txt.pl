#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

fd_set readfds;
fd_set writefds;

FD_ZERO(readfds);
FD_ZEOR(writefds);

FD_SET(server_sockfd, &readfds);

int addr_len;
int result=select(FD_SETSIZE, &readfds, NULL, NULL, (struct timeva *) NULL);

if(result < 1)
{
	perror("select ");
	exit(1);
}

for(int fd=0 ; fd < FD_SETSIZE; fd++)
{
	if(FD_ISSET(fd, &readfds));
	{
		if(fd==server_sockfd)		
		{
			client_fd =accpet(server_sockfd, (struct sockaddr *) &client_addr, (socklen_t*) &addr_len);
			FD_SET(client_fd, &readfds);
		}
		else
		{
			//获取缓冲区里面有多少的数据要读取。 
			ioctl(fd, FIONREAD, &nread);
			if(nread==0)
			{
				close(fd);
				FD_CLR(fd, &reafds);
				//remove client on fd  	
			}
			else
			{
				bytes = recv(fd, buffer, sizeof(buffer), 0);
				
			}
		}

	}
}


