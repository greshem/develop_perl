#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#########
# ������� 2.8.10 �汾�ġ� 
#����ע������汾�� ������ f13 ������ȷ�ı��룬 ��Ϊgsockgtk �Ľӿ��Ѿ�����ˣ� ���Կ���ͨ�� ����gtk �ĵײ�������ʵ�֣� 
#ͨ�� ./configure --with-x11 ���Ե�

######����������ı���ķ�ʽ�� 
# ���˵ĺ� ������� 2.8.10 �汾�ġ� 

if [ ! -f /tmp/wxWidgets-2.8.11.tar.gz ];then
	echo "Usage wxWidgets not exists \n";
	exit 
fi
cd /tmp/
tar -xzvf wxWidgets-2.8.10.tar.gz -C . 
cd /tmp/wxWidgets-2.8.10
mkdir buildgtk
cd buildgtk
../configure --with-gtk --enable-unicode --disable-shared
make
make install
cd /etc/ld.so.conf.d
echo "/usr/lib" > wx.conf
ldconfig

