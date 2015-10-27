#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#整个as5 已经弄成了 yum 的方式 所以 comps.xml 表述组 group 的配置文件是需要的 。 
PYTHONPATH=/usr/lib/anaconda
export PYTHONPATH
PATH=$PATH:/usr/lib/anaconda-runtime
RHROOT=$(pwd);
RPMDIR=${RHROOT}/Server/
find $RHROOT -name TRANS.TBL -exec rm -f {} \;
rpm -ivh $RPMDIR/bogl-0*.rpm --force 
rpm -ivh $RPMDIR/booty-0*.rpm --force
rpm -ivh $RPMDIR/anaconda{,-runtime}*.rpm $RPMDIR/anaconda-help*.noarch.rpm -force 
rpm -ivh $RPMDIR/mkisofs*.rpm --force 
rpm -ivh $RPMDIR/cdrecord*.rpm --force 
export PYTHONPATH=/usr/lib/anaconda
export PATH=$PATH:/usr/lib/anaconda-runtime

rm -rf ${RHROOT}-disc1
pkgorder $RHROOT i686  . > $RHROOT/pkgorder-i686.txt 
genhdlist --fileorder $RHROOT/pkgorder-i686.txt --productpath RedHat $RHROOT

buildinstall    --comp dist-4.0 --pkgorder $RHROOT/pkgorder-i386.txt --prodpath RedHat --release "QIANLONG-Linux2.4.2" --product "QIANLONG-Linux2.4.2" --version 4.0 $RHROOT

rm -rf ${RHROOT}-disc1
splittree.py --arch=i386 --total-discs=1 --bin-discs=1 --src-discs=1 --release-string='QIANLONG-Linux2.4.2' --pkgorderfile=$RHROOT/pkgorder-i386.txt --distdir=$RHROOT --srcdir=$RHROOT/SRPMS --productpath=RedHat

#yes |cp ${RHROOT}/RedHat/RPMS/lonld* ${RHROOT}-disc1/RedHat/RPMS/
yes |cp ${RHROOT}/RedHat/RPMS/dhcp* ${RHROOT}-disc1/RedHat/RPMS/
yes |cp ${RHROOT}/RedHat/RPMS/bogl-bterm* ${RHROOT}-disc1/RedHat/RPMS/
yes |cp ${RHROOT}/RedHat/RPMS/zhcon* ${RHROOT}-disc1/RedHat/RPMS/
#yes |cp ${RHROOT}/RedHat/RPMS/tftpboot* ${RHROOT}-disc1/RedHat/RPMS/
yes |cp ${RHROOT}/RedHat/RPMS/fuse* ${RHROOT}-disc1/RedHat/RPMS/
yes |cp ${RHROOT}/RedHat/RPMS/nfsroot4* ${RHROOT}-disc1/RedHat/RPMS/
yes |cp ${RHROOT}/RedHat/RPMS/heartbeat* ${RHROOT}-disc1/RedHat/RPMS/
yes |cp ${RHROOT}/RedHat/RPMS/MySQL* ${RHROOT}-disc1/RedHat/RPMS/
genhdlist --withnumbers --fileorder $RHROOT/pkgorder-i386.txt --productpath RedHat ${RHROOT}-disc1
yes |cp isolinux/isolinux_ks.cfg ${RHROOT}-disc1/isolinux/isolinux_ks.cfg
yes |cp isolinux/ks1.cfg         ${RHROOT}-disc1/isolinux/ks1.cfg
yes |cp isolinux/ks3.cfg         ${RHROOT}-disc1/isolinux/ks3.cfg
yes |cp isolinux/isolinux.cfg	 ${RHROOT}-disc1/isolinux/isolinux.cfg
yes |cp isolinux/isolinux_ks.cfg ${RHROOT}-disc1/isolinux/isolinux.cfg

RHROOT=$(pwd);
mkisofs -r -N -L -d -J -T -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot  -V "richtech_full_disk" -boot-load-size 4 -boot-info-table  -o /tmp/as5.iso $(pwd)

#cdrecord -tao customel4.iso


########################################################################
createrepo -g Server/repodata/comps-rhel5-server-core.xml /tmp2/as5_rich_distribution
#添加 一个新的rpm 包, zhcon 从f13 上满获取srpm 之后 rpmbuild -ba 之后再 把生成的rpm 拷贝到  Server/下.  
cd Server/
createrepo -g repodata/comps-rhel5-server-core.xml $(pwd)

