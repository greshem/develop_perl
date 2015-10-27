#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#!/bin/bash
#['/sbin/mksquashfs', '/var/tmp/imgcreate-Oakqee/iso-91VKrC/LiveOS/osmin', '/var/tmp/imgcreate-Oakqee/iso-91VKrC/LiveOS/osmin.img', '-no-progress']
#################mksquashfs() ###########################################
#['/sbin/mksquashfs', '/var/tmp/imgcreate-Oakqee/tmp-UuSHNE', '/var/tmp/imgcreate-Oakqee/iso-91VKrC/LiveOS/squashfs.img', '-no-progress']
############################### mkisofs ###############
#['/usr/bin/mkisofs', '-J', '-r', '-hide-rr-moved', '-hide-joliet-trans-tbl', '-V', 'fedora-minimal-i686-201008300438', '-o', '/var/tmp/imgcreate-Oakqee/out/livecd-fedora-minimal_v3-201008300438.iso', '-b', 'isolinux/isolinux.bin', '-c', 'isolinux/boot.cat', '-no-emul-boot', '-boot-info-table', '-boot-load-size', '4', '/var/tmp/imgcreate-Oakqee/iso-91VKrC']
#####################################################################################################################
#####################################################################################################################
#####################################################################################################################

#/sbin/mksquashfs   ext3_img/  iso-91VKrC/LiveOS/squashfs.img  -no-progress
#
#2010_08_30_10:40:46 add by greshem
#上面都是 用 /usr/bin/livecd-creator 的dump的过程. 对每次的 mksquash mkisofs 进行调用 的完整的命令行, 可以都不看.
##############################
##############################
##############################
##############################
#注意 mkisofs 使用的-V 的选项, 和 iso-linux/isolinux/isolinux.cfg 里面 的 root=live:CDLABEL=fedora-minimal-i686-201008300438  要相同, 否则不能启动. 
#还有注意 livecd-creator  -c livecd-fedora-minimal_v3.ks   这一步的时候， 假如出现中断设置的是中文的话， python  直接用 fd 来操作中断导致错误， write(stderr, unicode_str) 最后修改成 print unicode_str就可以了。 
 
#1. 用vim 把  /usr/lib/python2.6/site-packages/imgcreate/ 打开
#2. 安装 Grep 插件.  
#3. 对每一行的rmtree 进行注释, 打印, python 的打印可以参考 /root/develop_python/print.py 的语法. 
#4. 把iso-* 重新命名为 iso-linux 
mv iso-6dV33r/ iso-linux
#5 把 tmp-* 重新命名为 ext3_img. 
mv tmp-h9pyex/ ext3_img

rm -f iso-linux/LiveOS/squashfs.img  

/sbin/mksquashfs   ext3_img/  iso-linux//LiveOS/squashfs.img  

cd iso-linux/
/usr/bin/mkisofs -J -r -hide-rr-moved  -hide-joliet-trans-tbl  -V  fedora-minimal-i686-201008300438  -o  /tmp/livecd-fedora-minimal_v3-201008300438.iso  -b  isolinux/isolinux.bin  -c  isolinux/boot.cat  -no-emul-boot  -boot-info-table  -boot-load-size  4  $(pwd)/


