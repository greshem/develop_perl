#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2010_12_15_04:20:56 add by qzj
#1.  aoe 的版本是 /root/aoe/src/gpxe-1.0.1.tar.gz
解压编译好之后， 	
把编译出来的      bin/undionly.kpxe 文件放到/tftpboot 目录下面， 
进入 pxelinux.0 的命令行之后
sanboot aoe:e1.1 就可以成功执行了。 
2. winxp 的客户端的制作， 可以藏好etherboot.org 里面的文档， AOE 的网卡的设置可以参考 /root/aoe/netcard_reg/ 里面的注册表文件. 


################################################################################################################################################

 2010-7-20 
1. 镜像的制作要注意， 
	 不要用grub, 按照自己的观察来看， grub  重新把 16位的中断向量，重新自己设定掉了， 所有， grub 连自己都不能正确启动， 

对于中断向量的问题， 可以好好看看16位的DOS，和BIOS的代码。 

2. gpxe 基本和aoe.0 的实现的功能是一样的， 对应的aoe 的实现的代码在

int boot_root_path ( const char *root_path ) {
root/src/usr/autoboot.c 的

        /* Quick hack */
        if ( strncmp ( root_path, "iscsi:", 6 ) == 0 ) {
                return iscsiboot ( root_path );
        } else if ( strncmp ( root_path, "aoe:", 4 ) == 0 ) {
                return aoeboot ( root_path );
        }

        return -ENOTSUP;
}
函数里面， 
aoe启动的规则是aoe:eN.M 

3. WINDOWS 的镜像的制作最好使用下面的方式, 是mbr 的启动程序使用的中断向量， 被透明化,   所以先用fdisk 把整个磁盘制作成 一个mbr, 一个dos 分区的程序， 然后用GHOST 进行安装， 用WINDOWS 的安装方式太慢了， 不建议使用， 然后 vbload eth0 0 0 sda 就可以让客户端启动了， 通过livecd 把整个磁盘拷贝到 服务器上cp /dev/sda /nfs/sda 


4 gpxe 使用的时候， 把编译出来的      undionly.kpxe 文件放到/tftpboot 目录下面， 
  gpxe 代码里面的  aoe 的子功能和 aoe.0 里面查不多， 但是最新版本的winaoe 还是有些问题， 不能使用 aoe.0 的情况下， 可以使用gpxe . 

5.  gpxe 不能启动 sanboot aoe:e1.1 失效的时候， 可以进一步使用 dhcp 
   config 里面的东西都填充完了之后， sanboot aoe:e1.1 就可以成功执行了。 
   config net0 不是 config eth0 


4. 还有aoe， 服务器， 客户端是不可能在同一个服务器上的， 所以一定要单独一台服务器, 
5. 
