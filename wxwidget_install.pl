#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#########
# 锐起的是 2.8.10 版本的。 
#不过注意这个版本， 不能在 f13 上面正确的编译， 因为gsockgtk 的接口已经变掉了， 所以可以通过 不用gtk 的底层驱动来实现， 
#通过 ./configure --with-x11 可以的

######下面是锐起的编译的方式。 
# 个人的和 锐起的是 2.8.10 版本的。 

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

