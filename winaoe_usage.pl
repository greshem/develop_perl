#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2010_12_15_04:20:56 add by qzj
#1.  aoe �İ汾�� /root/aoe/src/gpxe-1.0.1.tar.gz
��ѹ�����֮�� 	
�ѱ��������      bin/undionly.kpxe �ļ��ŵ�/tftpboot Ŀ¼���棬 
���� pxelinux.0 ��������֮��
sanboot aoe:e1.1 �Ϳ��Գɹ�ִ���ˡ� 
2. winxp �Ŀͻ��˵������� ���Բغ�etherboot.org ������ĵ��� AOE �����������ÿ��Բο� /root/aoe/netcard_reg/ �����ע����ļ�. 


################################################################################################################################################

 2010-7-20 
1. ���������Ҫע�⣬ 
	 ��Ҫ��grub, �����Լ��Ĺ۲������� grub  ���°� 16λ���ж������������Լ��趨���ˣ� ���У� grub ���Լ���������ȷ������ 

�����ж����������⣬ ���Ժúÿ���16λ��DOS����BIOS�Ĵ��롣 

2. gpxe ������aoe.0 ��ʵ�ֵĹ�����һ���ģ� ��Ӧ��aoe ��ʵ�ֵĴ�����

int boot_root_path ( const char *root_path ) {
root/src/usr/autoboot.c ��

        /* Quick hack */
        if ( strncmp ( root_path, "iscsi:", 6 ) == 0 ) {
                return iscsiboot ( root_path );
        } else if ( strncmp ( root_path, "aoe:", 4 ) == 0 ) {
                return aoeboot ( root_path );
        }

        return -ENOTSUP;
}
�������棬 
aoe�����Ĺ�����aoe:eN.M 

3. WINDOWS �ľ�����������ʹ������ķ�ʽ, ��mbr ����������ʹ�õ��ж������� ��͸����,   ��������fdisk ���������������� һ��mbr, һ��dos �����ĳ��� Ȼ����GHOST ���а�װ�� ��WINDOWS �İ�װ��ʽ̫���ˣ� ������ʹ�ã� Ȼ�� vbload eth0 0 0 sda �Ϳ����ÿͻ��������ˣ� ͨ��livecd ���������̿����� ��������cp /dev/sda /nfs/sda 


4 gpxe ʹ�õ�ʱ�� �ѱ��������      undionly.kpxe �ļ��ŵ�/tftpboot Ŀ¼���棬 
  gpxe ���������  aoe ���ӹ��ܺ� aoe.0 ����鲻�࣬ �������°汾��winaoe ������Щ���⣬ ����ʹ�� aoe.0 ������£� ����ʹ��gpxe . 

5.  gpxe �������� sanboot aoe:e1.1 ʧЧ��ʱ�� ���Խ�һ��ʹ�� dhcp 
   config ����Ķ������������֮�� sanboot aoe:e1.1 �Ϳ��Գɹ�ִ���ˡ� 
   config net0 ���� config eth0 


4. ����aoe�� �������� �ͻ����ǲ�������ͬһ���������ϵģ� ����һ��Ҫ����һ̨������, 
5. 
