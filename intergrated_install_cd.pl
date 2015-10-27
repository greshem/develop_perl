#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
15:53 2010-7-27 张俭亮

一体化光盘制作要点

一体化光盘是自定义光盘， 主要包括: 
    kickstart启动自动安装，以及安装后自动拷贝光盘isolinux里的文件
    启动后进入mini linux系统，使用自定义的kernel+initrd文件(这里是bootos+rtnc)
    使用脚本设置系统
    再次重启后进入rhel系统，自动启动服务
    

    一体化光盘可以安装主副服务器。在第二阶段选择安装
    主要工作在制作 rtnc跟pack.zip上，制作好后将其拷贝到cd /isolinux/里面. 当然还有bootos, 这是内核文件。版本是2.6.29(fedora 10), 是打完中文显示补丁的内核。不是
    原版的.

    其他的还有ks.cfg文件，这是kickstart定制文件， 因为它才实现了自动安装跟post脚本。
    /isolinux里面还有一个isolinux.cfg配置文件， 这是启动菜单的配置文件，没有它有ks.cfg也没有用，这里也是修改过的
    /isolinux/grub.conf1 grub.conf2分别是两种grub配置，对应的是boot分区分开和没有分开的情况
    disk.tgz是一个压缩的虚拟镜像文件，原来大小是2G.

    ks.cfg文件放到光盘的跟目录。

    放好之后用ultroiso保存就可以了.

    压缩pack.zip
    zip -P http://www.richtech.net.cn.2010 -r pack pack/
    uncompress:
    unzip -P http://www.richtech.net.cn.2010 pack.zip -d /root



新制作一个光盘需要重新编译一个新的kernel rpm, 需要下载kernel-src rpm, 然后编译，重新制作cd.

1: 下载kernel-src rpm
2: 安装kernel-src rpm ( rpm -vih kernel-src.rpm, rpmbuild -bp kernel.spec)
3: 到/usr/src/redhat/SOURCE里将所有的config文件里都把CONFIG_IPX改为y,否则都不会编译
4: cd to SPEC, 执行rpmbuild -ba kernel.spec --target=i686
5: 编译好的内核在RPM/i686/里面，里面还会有几个文件，除带debuginfo（共4个文件，每个170m左右）不要拷贝，其他都要拷贝到cd里面Server目录里替换原有文件
6: 校验cd, 如果不校验，安装时将会出现某些rpm错误的情况. 需要安装createrepo软件包. 方法如下:

  mkdir -p /var/rhel/{Cluster,ClusterStorage,Server,VT}
  生成rpm依赖关系及组信息，在RHEL 5中每个目录下的repodata目录下都有一个repomd.xml，该文件中就记录了rpm包的依赖关系，还有一个comps-rhel5-*.xml文件，这个文件主要记录分组情况，建立yum仓库时，需要先重建该文件. 
  # createrepo -o /var/rhel/Cluster -g /media/rhel/Cluster/repodata/comps-rhel5-cluster.xml /media/rhel/Cluster
  # createrepo -o /var/rhel/ClusterStorage -g /media/rhel/ClusterStorage/repodata/comps-rhel5-cluster-st.xml /media/rhel/ClusterStorage
  # createrepo -o /var/rhel/Server -g /media/rhel/Server/repodata/comps-rhel5-server-core.xml /media/rhel/Server 
  # createrepo -o /var/rhel/VT -g /media/rhel/VT/repodata/comps-rhel5-vt.xml /media/rhel/VT
  上述命令执行完之后，在/var/rhel/下面的每个目录里都有一个repodata目录，将这4个repodata都拷贝到cd里替换原有的repodata目录，就可以初步制作一个带有ipx的光盘了，当然其他的内容还没有修改。


