#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
15:53 2010-7-27 �ż���

һ�廯��������Ҫ��

һ�廯�������Զ�����̣� ��Ҫ����: 
    kickstart�����Զ���װ���Լ���װ���Զ���������isolinux����ļ�
    ���������mini linuxϵͳ��ʹ���Զ����kernel+initrd�ļ�(������bootos+rtnc)
    ʹ�ýű�����ϵͳ
    �ٴ����������rhelϵͳ���Զ���������
    

    һ�廯���̿��԰�װ�������������ڵڶ��׶�ѡ��װ
    ��Ҫ���������� rtnc��pack.zip�ϣ������ú��俽����cd /isolinux/����. ��Ȼ����bootos, �����ں��ļ����汾��2.6.29(fedora 10), �Ǵ���������ʾ�������ںˡ�����
    ԭ���.

    �����Ļ���ks.cfg�ļ�������kickstart�����ļ��� ��Ϊ����ʵ�����Զ���װ��post�ű���
    /isolinux���滹��һ��isolinux.cfg�����ļ��� ���������˵��������ļ���û������ks.cfgҲû���ã�����Ҳ���޸Ĺ���
    /isolinux/grub.conf1 grub.conf2�ֱ�������grub���ã���Ӧ����boot�����ֿ���û�зֿ������
    disk.tgz��һ��ѹ�������⾵���ļ���ԭ����С��2G.

    ks.cfg�ļ��ŵ����̵ĸ�Ŀ¼��

    �ź�֮����ultroiso����Ϳ�����.

    ѹ��pack.zip
    zip -P http://www.richtech.net.cn.2010 -r pack pack/
    uncompress:
    unzip -P http://www.richtech.net.cn.2010 pack.zip -d /root



������һ��������Ҫ���±���һ���µ�kernel rpm, ��Ҫ����kernel-src rpm, Ȼ����룬��������cd.

1: ����kernel-src rpm
2: ��װkernel-src rpm ( rpm -vih kernel-src.rpm, rpmbuild -bp kernel.spec)
3: ��/usr/src/redhat/SOURCE�ｫ���е�config�ļ��ﶼ��CONFIG_IPX��Ϊy,���򶼲������
4: cd to SPEC, ִ��rpmbuild -ba kernel.spec --target=i686
5: ����õ��ں���RPM/i686/���棬���滹���м����ļ�������debuginfo����4���ļ���ÿ��170m���ң���Ҫ������������Ҫ������cd����ServerĿ¼���滻ԭ���ļ�
6: У��cd, �����У�飬��װʱ�������ĳЩrpm��������. ��Ҫ��װcreaterepo�����. ��������:

  mkdir -p /var/rhel/{Cluster,ClusterStorage,Server,VT}
  ����rpm������ϵ������Ϣ����RHEL 5��ÿ��Ŀ¼�µ�repodataĿ¼�¶���һ��repomd.xml�����ļ��оͼ�¼��rpm����������ϵ������һ��comps-rhel5-*.xml�ļ�������ļ���Ҫ��¼�������������yum�ֿ�ʱ����Ҫ���ؽ����ļ�. 
  # createrepo -o /var/rhel/Cluster -g /media/rhel/Cluster/repodata/comps-rhel5-cluster.xml /media/rhel/Cluster
  # createrepo -o /var/rhel/ClusterStorage -g /media/rhel/ClusterStorage/repodata/comps-rhel5-cluster-st.xml /media/rhel/ClusterStorage
  # createrepo -o /var/rhel/Server -g /media/rhel/Server/repodata/comps-rhel5-server-core.xml /media/rhel/Server 
  # createrepo -o /var/rhel/VT -g /media/rhel/VT/repodata/comps-rhel5-vt.xml /media/rhel/VT
  ��������ִ����֮����/var/rhel/�����ÿ��Ŀ¼�ﶼ��һ��repodataĿ¼������4��repodata��������cd���滻ԭ�е�repodataĿ¼���Ϳ��Գ�������һ������ipx�Ĺ����ˣ���Ȼ���������ݻ�û���޸ġ�


