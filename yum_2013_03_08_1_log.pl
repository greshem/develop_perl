#!/usr/bin/perl
$pattern=shift;
foreach (<DATA>)
{
	print $_ if($_=~/$pattern/i);
}
__DATA__
Feb 01 13:16:28 Installed: nspr-devel-4.9.4-1.fc18.i686
Feb 01 13:16:29 Installed: spice-protocol-0.12.3-1.fc18.noarch
Feb 01 13:16:30 Installed: 2:libogg-devel-1.3.0-2.fc18.i686
Feb 01 13:16:31 Updated: nss-util-3.14.1-2.fc18.i686
Feb 01 13:16:32 Installed: nss-util-devel-3.14.1-2.fc18.i686
Feb 01 13:16:33 Installed: celt051-devel-0.5.1.3-5.fc18.i686
Feb 01 13:16:34 Updated: 2:libcacard-1.2.2-2.fc18.i686
Feb 01 13:16:35 Installed: spice-glib-devel-0.15.3-1.fc18.i686
Feb 01 13:16:36 Updated: nss-softokn-freebl-3.14.1-5.fc18.i686
Feb 01 13:16:36 Installed: nss-softokn-freebl-devel-3.14.1-5.fc18.i686
Feb 01 13:16:37 Installed: spice-gtk3-devel-0.15.3-1.fc18.i686
Feb 01 13:16:38 Updated: nss-softokn-3.14.1-5.fc18.i686
Feb 01 13:16:39 Installed: nss-softokn-devel-3.14.1-5.fc18.i686
Feb 01 13:16:40 Installed: nss-devel-3.14.1-3.fc18.i686
Feb 01 13:16:40 Installed: 2:libcacard-devel-1.2.2-2.fc18.i686
Feb 01 13:16:43 Installed: telepathy-haze-0.6.0-2.fc18.i686
Feb 01 13:16:44 Installed: cegui06-0.6.2-12.fc18.i686
Feb 01 13:17:10 Installed: spicebird-0.7.1-6.fc18.i686
Feb 01 13:17:10 Installed: spice-server-devel-0.12.2-1.fc18.i686
Feb 01 13:17:11 Installed: spice-gtk3-vala-0.15.3-1.fc18.i686
Feb 01 13:17:11 Installed: spice-gtk-devel-0.15.3-1.fc18.i686
Feb 01 13:17:12 Installed: spice-gtk-tools-0.15.3-1.fc18.i686
Feb 01 13:17:13 Installed: spice-parent-15-6.fc18.noarch
Feb 01 13:17:14 Installed: spice-client-0.12.2-1.fc18.i686
Feb 01 13:17:16 Updated: spice-vdagent-0.12.1-1.fc18.i686
Feb 01 13:17:17 Installed: spice-xpi-2.8-1.fc18.i686


install system-config
system-config-date-1.10.5-1.fc18.noarch
system-config-firewall-base-1.2.29-8.fc18.noarch
32:bind-license-9.9.2-6.P1.fc18.noarch
system-config-firewall-tui-1.2.29-8.fc18.noarch
system-config-nfs-1.4.1-1.fc18.noarch
yelp-xsl-3.6.1-1.fc18.noarch
python-iwlib-1.2-1.fc18.i686
system-config-language-1.3.5-19.fc18.noarch
system-config-users-1.3.3-1.fc18.noarch
python-nss-0.12-4.fc18.i686
system-config-samba-1.2.99-1.fc18.noarch
1:yelp-libs-3.6.2-1.fc18.i686
1:yelp-3.6.2-1.fc18.i686
libhbaapi-2.2-15.fc18.i686
dracut-024-23.git20130118.fc18.i686
dracut-network-024-23.git20130118.fc18.i686
kexec-tools-2.0.3-64.fc18.i686
libhbalinux-1.0.14-4.fc18.i686
32:bind-libs-9.9.2-6.P1.fc18.i686
32:bind-9.9.2-6.P1.fc18.i686
makebootfat-1.4-14.fc18.i686
gamin-python-0.1.10-13.fc18.i686
system-config-services-0.101.8-1.fc18.noarch
glade-libs-3.14.2-2.fc18.i686
anaconda-widgets-18.37.11-1.fc18.i686
lldpad-0.9.45-2.fc18.i686
python-pyblock-0.53-3.fc18.i686
cracklib-python-2.8.22-2.fc18.i686
device-mapper-multipath-libs-0.4.9-36.fc18.i686
device-mapper-multipath-0.4.9-36.fc18.i686
fcoe-utils-1.0.24-1.fc18.i686
cryptsetup-python-1.5.1-1.fc18.i686
system-config-rootpassword-1.99.6-5.fc18.noarch
system-config-services-docs-1.1.9-4.fc18.noarch
system-config-bind-4.0.15-6.fc18.noarch
system-config-kdump-2.0.10-1.fc18.noarch
system-config-samba-docs-1.0.9-4.fc18.noarch
system-config-date-docs-1.0.11-2.fc18.noarch
system-config-nfs-docs-1.0.9-4.fc18.noarch
system-config-users-docs-1.0.9-4.fc18.noarch
system-config-network-1.6.10-1.fc18.noarch
system-config-firewall-1.2.29-8.fc18.noarch
system-config-boot-1.0-3.fc18.i686
5:system-config-httpd-1.5.5-4.fc18.noarch
system-config-lvm-1.1.18-1.fc18.noarch
anaconda-18.37.11-1.fc18.i686
system-config-kickstart-2.8.10-2.fc18.noarch
32:bind-libs-lite-9.9.2-6.P1.fc18.i686
system-config-audit-0.4.21-1.fc18.i686

#2013-02-01_13:31:52 
/usr/bin/yum
-y
list

#2013-02-01_13:33:27 
/usr/bin/yum
-y
install
allegro*

#2013-02-01_13:41:42 
/usr/bin/yum
-y
install
allegro*
Feb 01 13:43:03 Installed: allegro-4.4.2-4.fc18.i686
Feb 01 13:43:07 Installed: allegro-devel-4.4.2-4.fc18.i686
Feb 01 13:43:08 Installed: allegro5-addon-audio-5.0.3-5.fc18.i686
Feb 01 13:43:09 Installed: allegro5-addon-audio-devel-5.0.3-5.fc18.i686
Feb 01 13:43:10 Installed: dumb-0.9.3-14.fc18.i686
Feb 01 13:43:11 Installed: allegro5-addon-acodec-5.0.3-5.fc18.i686
Feb 01 13:43:12 Installed: jpgalleg-4.4.2-4.fc18.i686
Feb 01 13:43:13 Installed: allegro-loadpng-4.4.2-4.fc18.i686
Feb 01 13:43:14 Installed: allegro-logg-4.4.2-4.fc18.i686
Feb 01 13:43:15 Installed: allegro5-addon-dialog-5.0.3-5.fc18.i686
Feb 01 13:43:16 Installed: allegro5-addon-ttf-5.0.3-5.fc18.i686
Feb 01 13:43:17 Installed: physfs-2.0.2-3.fc18.i686
Feb 01 13:43:18 Installed: allegro5-addon-physfs-5.0.3-5.fc18.i686
Feb 01 13:43:19 Installed: allegro5-addon-image-5.0.3-5.fc18.i686
Feb 01 13:43:19 Installed: allegro5-addon-image-devel-5.0.3-5.fc18.i686
Feb 01 13:43:20 Installed: allegro5-addon-physfs-devel-5.0.3-5.fc18.i686
Feb 01 13:43:21 Installed: allegro5-addon-ttf-devel-5.0.3-5.fc18.i686
Feb 01 13:43:22 Installed: allegro5-addon-dialog-devel-5.0.3-5.fc18.i686
Feb 01 13:43:23 Installed: allegro-logg-devel-4.4.2-4.fc18.i686
Feb 01 13:43:23 Installed: allegro-loadpng-devel-4.4.2-4.fc18.i686
Feb 01 13:43:24 Installed: allegro5-addon-acodec-devel-5.0.3-5.fc18.i686
Feb 01 13:43:25 Installed: allegro-tools-4.4.2-4.fc18.i686
Feb 01 13:43:26 Installed: allegro-jack-plugin-4.4.2-4.fc18.i686

#2013-02-01_13:49:01 
/usr/bin/yum
-y
install
iw

#2013-02-01_13:49:09 
/usr/bin/yum
-y
install
iw-devl

#2013-02-01_13:49:16 
/usr/bin/yum
-y
install
iw-devel

#2013-02-01_13:50:46 
/usr/bin/yum
-y
install
anaconda*
Feb 01 13:51:10 Installed: glade-3.14.2-2.fc18.i686
Feb 01 13:51:10 Installed: anaconda-widgets-devel-18.37.11-1.fc18.i686
Feb 01 13:51:11 Installed: anaconda-dracut-18.37.11-1.fc18.noarch

#2013-02-01_14:14:03 
/usr/bin/yum
-y
install
koules*
svga*
Feb 01 14:14:21 Installed: svgalib-1.9.25-11.fc18.i686
Feb 01 14:14:22 Installed: koules-svgalib-1.4-12.fc18.i686
Feb 01 14:14:22 Installed: koules-sound-1.4-12.fc18.i686
Feb 01 14:14:23 Installed: koules-x11-1.4-12.fc18.i686
Feb 01 14:14:24 Installed: koules-1.4-12.fc18.i686
Feb 01 14:14:25 Installed: svgalib-devel-1.9.25-11.fc18.i686

#2013-02-01_14:15:39 
/usr/bin/yum
-y
install
prboom
Feb 01 14:16:16 Installed: SDL_net-1.2.8-2.fc18.i686
Feb 01 14:16:21 Installed: freedoom-0.7-3.fc18.noarch
Feb 01 14:16:22 Installed: prboom-2.5.0-7.fc18.i686

#2013-02-01_14:17:24 
/usr/bin/yum
-y
install
opengrok*
Feb 01 14:18:40 Installed: xml-commons-apis-1.4.01-8.fc18.noarch
Feb 01 14:18:41 Installed: lucene-3.6.0-11.fc18.noarch
Feb 01 14:18:43 Installed: lucene-contrib-3.6.0-11.fc18.noarch
Feb 01 14:18:44 Installed: xml-commons-resolver-1.2-10.fc18.noarch
Feb 01 14:18:45 Installed: xalan-j2-2.7.1-17.fc18.noarch
Feb 01 14:18:47 Installed: xerces-j2-2.11.0-11.fc18.noarch
Feb 01 14:18:48 Installed: ant-1.8.4-5.fc18.noarch
Feb 01 14:18:49 Installed: javacc-5.0-7.fc18.noarch
Feb 01 14:18:50 Installed: jakarta-oro-2.0.8-11.fc18.noarch
Feb 01 14:18:50 Installed: swing-layout-1.0.4-5.fc18.noarch
Feb 01 14:18:51 Installed: regexp-1.5-9.fc18.noarch
Feb 01 14:18:53 Installed: bcel-5.2-13.fc18.noarch
Feb 01 14:18:54 Installed: opengrok-0.9-4.fc18.noarch
Feb 01 14:18:56 Installed: opengrok-javadoc-0.9-4.fc18.noarch

#2013-02-01_14:20:04 
/usr/bin/yum
-y
install
blender*
Feb 01 14:21:31 Installed: 1:blender-rpm-macros-2.65a-1.fc18.noarch
Feb 01 14:21:46 Updated: 1:blender-2.65a-1.fc18.i686
Feb 01 14:21:49 Installed: 1:blenderplayer-2.65a-1.fc18.i686

#2013-02-01_14:22:55 
/usr/bin/yum
-y
install
sheepdog

#2013-02-01_15:16:08 
/usr/bin/yum
-y
install
xchm.i686
audacity.i686
DivFix++.i686
mingw64-wxWidgets.noarch
mingw32-wxWidgets.noarch
mingw64-wxWidgets-static.noarch
mingw32-wxWidgets-static.noarch
wxsqlite3.i686
wxpropgrid.i686
wxGTK-gl.i686
wxBase.i686
wxGTK.i686
wxpdfdoc.i686
wxMaxima.i686
wxGTK-media.i686
wxpdfdoc-devel.i686
wxGlade.noarch
libasync.i686
simdock.i686
perl-Wx.i686
perl-Alien-wxWidgets.i686
erlang-wx.i686
EekBoek-gui.noarch
Feb 01 15:20:19 Installed: EekBoek-2.02.00-1.fc18.noarch
Feb 01 15:20:21 Installed: jsmath-fonts-20090708-5.fc18.noarch
Feb 01 15:20:22 Installed: cl-asdf-20101028-4.fc18.noarch
Feb 01 15:20:24 Installed: erlang-kernel-R15B-03.2.fc18.i686
Feb 01 15:20:24 Installed: erlang-crypto-R15B-03.2.fc18.i686
Feb 01 15:20:25 Installed: erlang-compiler-R15B-03.2.fc18.i686
Feb 01 15:20:26 Installed: erlang-hipe-R15B-03.2.fc18.i686
Feb 01 15:20:27 Installed: erlang-syntax_tools-R15B-03.2.fc18.i686
Feb 01 15:20:28 Installed: erlang-stdlib-R15B-03.2.fc18.i686
Feb 01 15:20:30 Installed: erlang-erts-R15B-03.2.fc18.i686
Feb 01 15:20:31 Installed: common-lisp-controller-7.4-5.fc18.noarch
Feb 01 15:20:40 Installed: sbcl-1.1.2-1.fc18.i686
Feb 01 15:20:42 Installed: wxpdfdoc-0.9.3-1.fc18.i686
Feb 01 15:20:43 Installed: libid3tag-0.15.1b-13.fc18.i686
Feb 01 15:20:53 Installed: wxPython-2.8.12.0-3.fc18.i686
Feb 01 15:20:54 Installed: vamp-plugin-sdk-2.4-1.fc18.i686
Feb 01 15:20:56 Installed: rlwrap-0.37-4.fc18.i686
Feb 01 15:21:15 Installed: maxima-5.29.1-1.fc18.i686
Feb 01 15:21:22 Installed: maxima-runtime-sbcl-5.29.1-1.fc18.i686
Feb 01 15:21:27 Installed: wxGlade-0.6.3tip20100625-5.fc18.noarch
Feb 01 15:21:29 Installed: wxpdfdoc-devel-0.9.3-1.fc18.i686
Feb 01 15:21:30 Installed: EekBoek-gui-2.02.00-1.fc18.noarch
Feb 01 15:21:31 Installed: wxMaxima-12.09.0-1.fc18.i686
Feb 01 15:21:36 Installed: audacity-2.0.2-2.fc18.i686
Feb 01 15:21:39 Installed: erlang-wx-R15B-03.2.fc18.i686
Feb 01 15:21:40 Installed: DivFix++-0.34-14.fc18.i686
Feb 01 15:21:44 Installed: xchm-1.21-1.fc18.i686
Feb 01 15:21:45 Installed: simdock-1.2-15.fc18.i686
Feb 01 15:21:46 Installed: 2:libasync-0.18.2-4.fc17.i686

#2013-02-04_14:43:13 
/usr/bin/yum
-y
install
iftop

#2013-02-04_14:44:22 
/usr/bin/yum
-y
install
iftop

#2013-02-04_14:44:40 
/usr/bin/yum
-y
install
iftop
Feb 04 14:46:09 Installed: iftop-1.0-0.3.pre2.fc18.i686

#2013-02-04_15:26:10 
/usr/bin/yum
-y
install
python*

#2013-02-04_16:05:25 
/usr/bin/yum
-y
install
python*

#2013-02-04_16:09:42 
/usr/bin/yum
-y
install
python*
--force

#2013-02-04_16:10:07 
/usr/bin/yum
-y
install
python*
--skip-broken
python3-matplotlib

#2013-02-04_16:11:18 
/usr/bin/yum
-y
install
--help

#2013-02-04_16:11:29 
/usr/bin/yum
-y
install
--help

#2013-02-04_16:11:52 
/usr/bin/yum
-y
install
python*
-x
python3-matplotlib
-x
pcp

#2013-02-04_16:12:36 
/usr/bin/yum
-y
install
python*
-x
pcp

#2013-02-04_16:14:02 
/usr/bin/yum
-y
install
python*
-x
pcp
-x
librapi

#2013-02-04_16:19:19 
/usr/bin/yum
-y
install
python*
-x
pcp
-x
librapi
--skip-broken
Feb 04 16:20:29 Installed: python-django-1.4.3-3.fc18.noarch
Feb 04 16:20:30 Installed: python-httplib2-0.7.7-1.fc18.noarch
Feb 04 16:20:31 Installed: python3-setuptools-0.6.28-3.fc18.noarch
Feb 04 16:20:33 Installed: python-routes-1.12.3-4.fc18.noarch
Feb 04 16:20:34 Installed: python-openid-2.2.5-4.fc18.noarch
Feb 04 16:20:35 Installed: python-prettytable-0.6.1-1.fc18.noarch
Feb 04 16:20:41 Updated: libsolv-0.2.3-1.gitf663ca2.fc18.i686
Feb 04 16:20:42 Installed: python-iso8601-0.1.4-5.fc18.noarch
Feb 04 16:20:44 Installed: python-jinja2-2.6-5.fc18.noarch
Feb 04 16:20:45 Installed: python-kombu-2.4.7-1.fc18.noarch
Feb 04 16:20:46 Installed: erlang-mnesia-R15B-03.2.fc18.i686
Feb 04 16:20:47 Installed: python-anyjson-0.3.3-2.fc18.noarch
Feb 04 16:20:52 Installed: python-migrate-0.7.2-4.fc18.noarch
Feb 04 16:20:53 Installed: python-oauth2-1.5.211-3.fc18.noarch
Feb 04 16:20:53 Installed: python-mozinfo-0-0.4.gitb077641.fc18.noarch
Feb 04 16:20:55 Installed: python3-devel-3.3.0-1.fc18.i686
Feb 04 16:20:56 Installed: python-netaddr-0.7.5-5.fc18.noarch
Feb 04 16:20:57 Installed: python-ldap-2.4.6-3.fc18.i686
Feb 04 16:20:59 Installed: python-zope-event-3.5.1-4.fc18.noarch
Feb 04 16:21:00 Updated: python-zope-interface-4.0.2-3.fc18.i686
Feb 04 16:21:01 Installed: python-repoze-who-1.0.18-7.fc18.noarch
Feb 04 16:21:02 Installed: python-transaction-1.1.1-5.fc18.noarch
Feb 04 16:21:03 Installed: python-zope-sqlalchemy-0.6.1-4.fc18.noarch
Feb 04 16:21:04 Installed: python3-tkinter-3.3.0-1.fc18.i686
Feb 04 16:21:05 Installed: python3-six-1.2.0-1.fc18.noarch
Feb 04 16:21:06 Installed: python-amqplib-1.0.2-6.fc18.noarch
Feb 04 16:21:07 Installed: python-zope-schema-3.8.1-3.fc18.noarch
Feb 04 16:21:08 Installed: 1:python-keystoneclient-0.1.3.9-1.fc18.noarch
Feb 04 16:21:09 Installed: python3-nose-1.2.1-1.fc18.noarch
Feb 04 16:21:11 Installed: erlang-xmerl-R15B-03.2.fc18.i686
Feb 04 16:21:11 Installed: 1:python-BeautifulSoup-3.2.1-4.fc18.noarch
Feb 04 16:21:12 Installed: python-weberror-0.10.3-4.fc18.noarch
Feb 04 16:21:14 Installed: python-sprox-0.6.11-3.fc18.noarch
Feb 04 16:21:15 Installed: python-robofab-1.2.0-5.svn226.fc18.noarch
Feb 04 16:21:16 Installed: python-coverage-3.5.3-2.fc18.i686
Feb 04 16:21:18 Installed: libkolabxml-0.8.1-2.fc18.i686
Feb 04 16:21:19 Installed: erlang-gs-R15B-03.2.fc18.i686
Feb 04 16:21:20 Installed: python-virtualenv-1.7.2-1.fc18.noarch
Feb 04 16:21:21 Installed: python-tornado-2.2.1-3.fc18.noarch
Feb 04 16:21:23 Installed: python-py-1.4.12-1.fc18.noarch
Feb 04 16:21:25 Installed: python3-pyparsing-1.5.6-6.fc18.noarch
Feb 04 16:21:26 Installed: python3-tools-3.3.0-1.fc18.i686
Feb 04 16:21:27 Installed: python-repoze-who-friendlyform-1.0.8-4.fc18.noarch
Feb 04 16:21:27 Installed: python-repoze-who-plugins-sa-1.0.1-2.fc18.noarch
Feb 04 16:21:28 Installed: python-repoze-who-testutil-1.0.1-3.fc18.noarch
Feb 04 16:21:29 Installed: python-repoze-what-1.0.9-4.fc18.noarch
Feb 04 16:21:30 Installed: python-zope-component-4.0.1-1.fc18.noarch
Feb 04 16:21:31 Installed: python-mozprocess-0-0.4.gitb077641.fc18.noarch
Feb 04 16:21:32 Installed: 1:python-novaclient-2.10.0-1.fc18.noarch
Feb 04 16:21:34 Installed: python3-pygments-1.4-7.fc18.noarch
Feb 04 16:21:35 Installed: python3-py-1.4.12-1.fc18.noarch
Feb 04 16:21:37 Installed: python-django-south-0.7.5-4.fc18.noarch
Feb 04 16:21:39 Installed: python-django-registration-0.8-2.fc18.noarch
Feb 04 16:21:40 Installed: python-zbase32-1.1.3-3.fc18.noarch
Feb 04 16:21:41 Installed: pyutil-1.9.1-2.fc18.noarch
Feb 04 16:21:42 Installed: python-bottle-0.10.7-2.fc18.noarch
Feb 04 16:21:42 Installed: python-manifestdestiny-0-0.4.gitb077641.fc18.noarch
Feb 04 16:21:43 Installed: python-mozprofile-0-0.4.gitb077641.fc18.noarch
Feb 04 16:21:44 Installed: python-mozrunner-0-0.4.gitb077641.fc18.noarch
Feb 04 16:21:45 Installed: python-ZConfig-2.9.2-2.fc18.noarch
Feb 04 16:21:46 Installed: python-memcached-1.47-4.fc18.noarch
Feb 04 16:21:47 Installed: python-zope-i18nmessageid-3.5.3-6.fc18.i686
Feb 04 16:21:48 Installed: python-dns-1.10.0-1.fc18.noarch
Feb 04 16:21:51 Installed: python-docutils-0.10-0.6.20120824svn7502.fc18.noarch
Feb 04 16:21:55 Installed: python-sphinx-1.1.3-5.fc18.noarch
Feb 04 16:21:56 Installed: python-simplegeneric-0.8-5.fc18.noarch
Feb 04 16:22:00 Installed: python-ufl-1.0.0-4.fc18.noarch
Feb 04 16:22:01 Installed: python-werkzeug-0.8.3-2.fc18.noarch
Feb 04 16:22:02 Installed: 1:python-flask-0.9-5.fc18.noarch
Feb 04 16:22:03 Installed: mpi4py-common-1.3-5.fc18.noarch
Feb 04 16:22:04 Installed: python-ply-3.4-3.fc18.noarch
Feb 04 16:22:05 Installed: python3-zope-event-3.5.1-4.fc18.noarch
Feb 04 16:22:06 Installed: python3-zope-interface-4.0.2-3.fc18.i686
Feb 04 16:22:07 Installed: python-restauth-common-0.5.1-6.fc18.noarch
Feb 04 16:22:07 Installed: python-speaklater-1.2-6.fc18.noarch
Feb 04 16:22:08 Installed: python-tw2-core-2.0.5-3.fc18.noarch
Feb 04 16:22:10 Installed: python-tw2-forms-2.0.2-4.fc18.noarch
Feb 04 16:22:11 Installed: python-tw2-jquery-2.0.3-4.fc18.noarch
Feb 04 16:22:13 Installed: python-tw2-jqplugins-ui-2.0.1-4.fc18.noarch
Feb 04 16:22:14 Installed: python-tw2-excanvas-2.0.2-3.fc18.noarch
Feb 04 16:22:15 Installed: pyPdf-1.13-4.fc18.noarch
Feb 04 16:22:16 Installed: python-swiftclient-1.2.0-3.fc18.noarch
Feb 04 16:22:17 Installed: python-testtools-0.9.21-1.fc18.noarch
Feb 04 16:22:18 Installed: python-suds-0.4.1-3.fc18.noarch
Feb 04 16:22:19 Installed: python-bson-2.3-5.fc18.i686
Feb 04 16:22:21 Installed: python-pymongo-2.3-5.fc18.i686
Feb 04 16:22:22 Installed: PyPAM-0.5.0-16.fc18.i686
Feb 04 16:22:23 Installed: portmidi-217-7.fc18.i686
Feb 04 16:22:44 Installed: python-basemap-data-0.99.4-5.fc18.noarch
Feb 04 16:22:45 Installed: python-translationstring-1.1-2.fc18.noarch
Feb 04 16:22:46 Installed: python-kiwi-1.9.26-5.fc18.noarch
Feb 04 16:22:48 Installed: shared-desktop-ontologies-0.10.0-3.fc18.noarch
Feb 04 16:22:48 Installed: python-jsonschema-0.2-2.fc18.noarch
Feb 04 16:22:49 Installed: python-oauth-1.0.1-5.fc18.noarch
Feb 04 16:22:50 Installed: python3-markupsafe-0.11-7.fc18.i686
Feb 04 16:22:51 Installed: python3-jinja2-2.6-5.fc18.noarch
Feb 04 16:22:52 Installed: python-tracing-0.6-3.fc18.noarch
Feb 04 16:22:53 Installed: python-larch-1.20121006-1.fc18.noarch
Feb 04 16:22:54 Installed: python-warlock-0.4.0-2.fc18.noarch
Feb 04 16:22:55 Installed: 1:python-glanceclient-0.5.1-1.fc18.noarch
Feb 04 16:22:57 Installed: gazpacho-0.7.2-11.fc18.noarch
Feb 04 16:22:59 Installed: python-kiwi-gazpacho-1.9.26-5.fc18.noarch
Feb 04 16:23:00 Installed: python-tw2-jqplugins-flot-2.0.1-4.fc18.noarch
Feb 04 16:23:01 Installed: python-tw2-jqplugins-gritter-2.0.1-3.fc18.noarch
Feb 04 16:23:02 Installed: python-tw2-dynforms-2.0.1-4.fc18.noarch
Feb 04 16:23:03 Installed: python-tw2-sqla-2.0.1-4.fc18.noarch
Feb 04 16:23:04 Installed: python-tw2-jit-2.0.3-5.fc18.noarch
Feb 04 16:23:05 Installed: python-restauth-0.5.1-6.fc18.noarch
Feb 04 16:23:06 Installed: python3-zope-exceptions-4.0.3-1.fc18.noarch
Feb 04 16:23:09 Installed: python-flask-silk-0.1.2-1.fc18.noarch
Feb 04 16:23:10 Installed: python-xmpp-0.5.0-0.6.rc1.fc18.noarch
Feb 04 16:23:11 Installed: python-zope-configuration-3.7.2-4.fc18.noarch
Feb 04 16:23:12 Installed: python-zdaemon-2.0.4-6.fc18.noarch
Feb 04 16:23:13 Installed: python-repoze-what-plugins-sql-1.0.1-4.fc18.noarch
Feb 04 16:23:14 Installed: python-repoze-what-quickstart-1.0.9-3.fc18.noarch
Feb 04 16:23:21 Installed: python3-test-3.3.0-1.fc18.i686
Feb 04 16:23:24 Installed: python3-debug-3.3.0-1.fc18.i686
Feb 04 16:23:27 Installed: pytest-2.3.4-1.fc18.noarch
Feb 04 16:23:28 Installed: python-virtualenv-clone-0.2.4-2.fc18.noarch
Feb 04 16:23:28 Installed: python-virtualenvwrapper-3.5-3.fc18.noarch
Feb 04 16:23:29 Installed: python-tgext-crud-0.3.11-3.fc18.noarch
Feb 04 16:23:30 Installed: python-tgext-admin-0.3.11-3.fc18.noarch
Feb 04 16:23:31 Installed: python-catwalk-2.0.2-6.fc18.noarch
Feb 04 16:23:31 Installed: python-tahrir-api-0.1.7-1.fc18.noarch
Feb 04 16:23:32 Installed: python-repoze-tm2-1.0-0.11.b1.fc18.noarch
Feb 04 16:23:33 Installed: python-zope-exceptions-4.0.3-1.fc18.noarch
Feb 04 16:23:34 Installed: python-ldaptor-0.0.44-1.20120515git29a06fa.fc18.noarch
Feb 04 16:23:35 Installed: python-chameleon-2.7.0-3.fc18.noarch
Feb 04 16:23:36 Installed: python-mozinstall-0-0.4.gitb077641.fc18.noarch
Feb 04 16:23:39 Installed: python-celery-3.0.11-1.fc18.noarch
Feb 04 16:23:40 Installed: hawkey-0.3.6-1.gitc8365fa.fc18.i686
Feb 04 16:23:41 Updated: libsolv-tools-0.2.3-1.gitf663ca2.fc18.i686
Feb 04 16:23:42 Installed: python-cloudservers-1.2-5.fc18.noarch
Feb 04 16:23:45 Installed: python-cinderclient-0.2.26-1.fc18.noarch
Feb 04 16:23:46 Installed: python-webhelpers-1.3-2.fc17.noarch
Feb 04 16:23:47 Installed: python3-ply-3.4-3.fc18.noarch
Feb 04 16:23:48 Installed: python-remoteobjects-1.1-5.fc18.noarch
Feb 04 16:23:49 Installed: python-batchhttp-1.1-5.fc18.noarch
Feb 04 16:23:50 Installed: python-django-extra-form-fields-0.0.1-5.fc18.noarch
Feb 04 16:23:51 Installed: python-django-staticfiles-0.3.2-7.fc18.noarch
Feb 04 16:23:52 Installed: python-django-dajaxice-0.2-2.fc18.noarch
Feb 04 16:23:53 Installed: python-django-mptt-0.5.4-1.fc18.noarch
Feb 04 16:23:54 Installed: python-django-pipeline-1.2.24-1.fc18.noarch
Feb 04 16:23:57 Installed: python-sqlalchemy0.5-0.5.8-10.fc18.noarch
Feb 04 16:23:58 Installed: python3-restauth-common-0.5.1-6.fc18.noarch
Feb 04 16:23:58 Installed: 1:autocorr-zh-3.6.3.2-8.fc18.noarch
Feb 04 16:24:00 Installed: python-dulwich-0.8.7-1.fc18.i686
Feb 04 16:24:11 Installed: PyXB-1.1.2-3.fc18.noarch
Feb 04 16:24:24 Installed: oxygen-icon-theme-4.9.5-1.fc18.noarch
Feb 04 16:24:25 Installed: python-odict-1.5.0-4.fc18.noarch
Feb 04 16:24:27 Installed: python3-pytz-2012d-2.fc18.noarch
Feb 04 16:24:28 Installed: python-liblarch-2.1.0-1.fc18.noarch
Feb 04 16:24:29 Installed: python-mutagen-1.20-4.fc18.noarch
Feb 04 16:24:30 Installed: python-clientform-0.2.10-4.fc18.noarch
Feb 04 16:24:31 Installed: python-import-utils-0.0.1-3.fc18.noarch
Feb 04 16:24:32 Installed: python-mechanize-0.2.5-4.fc18.noarch
Feb 04 16:24:33 Installed: python-sudsds-1.0.1-1.fc18.noarch
Feb 04 16:24:35 Installed: python-logilab-common-0.58.3-1.fc18.noarch
Feb 04 16:24:36 Installed: python-logilab-astng-0.24.1-1.fc18.noarch
Feb 04 16:24:38 Installed: pylint-0.26.0-1.fc18.noarch
Feb 04 16:24:38 Installed: hyphen-en-2.8.5-2.fc18.noarch
Feb 04 16:24:39 Installed: odfpy-0.9.2-5.fc18.noarch
Feb 04 16:24:43 Installed: python3-decorator-3.4.0-1.fc18.noarch
Feb 04 16:24:43 Installed: python-mglob-0.4-7.fc18.noarch
Feb 04 16:24:46 Installed: python-ipython-console-0.13.1-1.fc18.noarch
Feb 04 16:24:47 Installed: python-ipython-gui-0.13.1-1.fc18.noarch
Feb 04 16:24:49 Installed: python-ipython-notebook-0.13.1-1.fc18.noarch
Feb 04 16:24:49 Installed: python-louie-1.1-11.fc18.noarch
Feb 04 16:24:51 Installed: python-feedcache-1.3.1-3.fc18.noarch
Feb 04 16:24:51 Installed: python-repoze-lru-0.4-2.fc18.noarch
Feb 04 16:24:52 Installed: python-webflash-0.1-0.7.a9.fc18.noarch
Feb 04 16:24:53 Installed: pysendfile-2.0.0-4.fc18.i686
Feb 04 16:24:54 Installed: python3-tornado-2.2.1-3.fc18.noarch
Feb 04 16:24:58 Installed: python3-sqlalchemy-0.7.9-1.fc18.i686
Feb 04 16:24:59 Installed: python-redis-2.4.9-3.fc18.noarch
Feb 04 16:25:00 Installed: python-functest-0.8.8-3.fc18.noarch
Feb 04 16:25:01 Installed: python-xlib-0.15-0.7.rc1.fc18.noarch
Feb 04 16:25:04 Installed: python-4Suite-XML-1.0.2-15.fc18.i686
Feb 04 16:25:05 Installed: bitstream-vera-fonts-common-1.10-21.fc18.noarch
Feb 04 16:25:08 Installed: bitstream-vera-sans-fonts-1.10-21.fc18.noarch
Feb 04 16:25:08 Installed: python-kmod-0.1-4.fc18.i686
Feb 04 16:25:11 Installed: python-rtslib-2.1.fb28-1.fc18.noarch
Feb 04 16:25:12 Installed: python-sqlite3dbm-0.1.4-3.fc18.noarch
Feb 04 16:25:13 Installed: python-apipkg-1.2-1.fc18.noarch
Feb 04 16:25:16 Installed: zarafa-common-7.0.9-1.fc18.noarch
Feb 04 16:25:17 Installed: python-termcolor-1.1.0-1.fc18.noarch
Feb 04 16:25:18 Installed: 1:autocorr-en-3.6.3.2-8.fc18.noarch
Feb 04 16:25:20 Installed: python3-docutils-0.10-0.6.20120824svn7502.fc18.noarch
Feb 04 16:25:21 Installed: python-blessings-1.5-1.fc18.noarch
Feb 04 16:25:22 Installed: graphviz-python-2.28.0-26.fc18.i686
Feb 04 16:25:23 Installed: python3-beaker-1.5.4-6.fc18.noarch
Feb 04 16:25:24 Installed: python3-mako-0.5.0-5.fc18.noarch
Feb 04 16:25:25 Installed: python-mimeparse-0.1.3-4.fc18.noarch
Feb 04 16:25:26 Installed: python-django-tastypie-0.9.12-0.1.alpha.fc18.noarch
Feb 04 16:25:28 Installed: python-simpleparse-2.1.1-5.fc18.i686
Feb 04 16:25:31 Installed: python-tools-2.7.3-13.fc18.i686
Feb 04 16:25:32 Installed: python-subvertpy-0.9.0-1.fc18.i686
Feb 04 16:25:33 Installed: python-Scriptaculous-1.8.2-8.fc18.noarch
Feb 04 16:25:34 Installed: python-whisper-0.9.10-2.fc18.noarch
Feb 04 16:25:35 Installed: python-wsgi-jsonrpc-0.2.9-2.fc18.noarch
Feb 04 16:25:39 Installed: certmaster-0.28-4.fc18.noarch
Feb 04 16:25:42 Installed: func-0.30-1.fc18.noarch
Feb 04 16:25:43 Installed: python-zope-deprecation-3.5.1-1.fc18.noarch
Feb 04 16:25:43 Installed: python-simpy-2.3.1-2.fc18.noarch
Feb 04 16:25:45 Installed: python-webob1.2-1.2.3-2.fc18.noarch
Feb 04 16:25:45 Installed: python-polib-1.0.0-1.fc18.noarch
Feb 04 16:25:46 Installed: python-anykeystore-0.2-2.fc18.noarch
Feb 04 16:25:47 Installed: amqp-1.0.819819-4.fc18.noarch
Feb 04 16:25:48 Installed: python-venusian-1.0-0.4.a3.fc18.noarch
Feb 04 16:25:52 Installed: python-pyramid-1.4-1.fc18.noarch
Feb 04 16:25:53 Installed: python-pyramid-tm-0.4-2.fc18.noarch
Feb 04 16:25:54 Installed: python-zmq-tests-2.2.0.1-1.fc18.i686
Feb 04 16:25:55 Installed: python-wtforms-1.0.2-1.fc18.noarch
Feb 04 16:25:57 Installed: 6:kdelibs-common-4.9.5-2.fc18.i686
Feb 04 16:26:05 Installed: python3-scipy-0.11.0-1.fc18.i686
Feb 04 16:26:05 Installed: python-socketpool-0.3.0-3.fc18.noarch
Feb 04 16:26:06 Installed: python-multi-registry-0.0.2-3.fc18.noarch
Feb 04 16:26:07 Installed: xapian-bindings-1.2.12-2.fc18.i686
Feb 04 16:26:08 Installed: xapian-bindings-python-1.2.12-2.fc18.i686
Feb 04 16:26:09 Installed: kde-l10n-4.9.5-1.fc18.noarch
Feb 04 16:26:09 Installed: python-mozhttpd-0-0.4.gitb077641.fc18.noarch
Feb 04 16:26:10 Installed: python-blinker-1.1-3.fc18.noarch
Feb 04 16:26:11 Installed: python-zc-lockfile-1.0.0-8.fc18.noarch
Feb 04 16:26:12 Installed: python-svg-0.2.2b-2.fc18.noarch
Feb 04 16:26:13 Installed: python-condorutils-1.5-6.fc18.noarch
Feb 04 16:26:14 Installed: python-isodate-0.4.7-2.fc18.noarch
Feb 04 16:26:15 Installed: python-rdflib-3.2.3-1.fc18.noarch
Feb 04 16:26:16 Installed: kde-settings-4.9-16.fc18.1.noarch
Feb 04 16:26:18 Installed: malaga-suomi-voikko-1.12-2.fc18.i686
Feb 04 16:26:19 Installed: python-datanommer-models-0.2.0-6.fc18.noarch
Feb 04 16:26:20 Installed: python-cmd2-0.6.4-4.fc18.noarch
Feb 04 16:26:21 Installed: python-http-parser-0.7.5-3.fc18.i686
Feb 04 16:26:22 Installed: python-restkit-4.1.2-3.fc18.noarch
Feb 04 16:26:23 Installed: erlang-eunit-R15B-03.2.fc18.i686
Feb 04 16:26:24 Installed: python3-zmq-2.2.0.1-1.fc18.i686
Feb 04 16:26:27 Installed: python-fuzzywuzzy-0.1-3.fc18.noarch
Feb 04 16:26:28 Installed: python3-bson-2.3-5.fc18.i686
Feb 04 16:26:29 Installed: python-colorama-0.2.4-1.fc18.noarch
Feb 04 16:26:30 Installed: python-vcstools-0.1.24-1.20121026gitba30262.fc18.noarch
Feb 04 16:26:30 Installed: python3-blessings-1.5-1.fc18.noarch
Feb 04 16:26:31 Installed: python-mozlog-0-0.4.gitb077641.fc18.noarch
Feb 04 16:26:32 Installed: python-mozdevice-0-0.4.gitb077641.fc18.noarch
Feb 04 16:26:33 Installed: phonon-devel-4.6.0-5.fc18.i686
Feb 04 16:26:34 Installed: python3-dateutil-2.0-4.fc18.noarch
Feb 04 16:26:36 Installed: 1:libreoffice-opensymbol-fonts-3.6.3.2-8.fc18.noarch
Feb 04 16:26:38 Installed: python-myghty-1.2-4.fc18.noarch
Feb 04 16:26:40 Installed: python-pylons-1.0-4.fc17.noarch
Feb 04 16:26:40 Installed: python-repoze-what-pylons-1.0-8.fc18.noarch
Feb 04 16:26:41 Installed: TurboGears2-2.1.4-4.fc18.noarch
Feb 04 16:26:42 Installed: antlr-python-2.7.7-22.fc18.noarch
Feb 04 16:26:44 Installed: saslwrapper-0.16-2.fc18.i686
Feb 04 16:26:44 Installed: sip-macros-4.14.2-1.fc18.i686
Feb 04 16:26:45 Installed: python-django-appconf-0.5-1.fc18.noarch
Feb 04 16:26:46 Installed: python-EnthoughtBase-3.0.6-4.fc18.noarch
Feb 04 16:26:47 Installed: python-pycha-0.6.0-4.fc18.noarch
Feb 04 16:26:48 Installed: python-relatorio-0.5.5-4.fc18.noarch
Feb 04 16:26:49 Installed: python-shove-0.3.3-3.fc18.noarch
Feb 04 16:26:51 Installed: python3-requests-0.14.1-1.fc18.noarch
Feb 04 16:26:52 Installed: python-pydns-2.3.3-9.fc18.noarch
Feb 04 16:26:53 Installed: python-qpid-qmf-0.18-6.fc18.i686
Feb 04 16:26:54 Installed: python-wordpress-xmlrpc-1.5-3.fc18.noarch
Feb 04 16:26:55 Installed: python-rope-0.9.4-2.fc18.noarch
Feb 04 16:26:56 Installed: python-ropemode-0.1-0.4.rc2.fc18.noarch
Feb 04 16:26:58 Installed: python3-html5lib-0.95-3.fc18.noarch
Feb 04 16:26:59 Installed: python-versiontools-1.9.1-3.fc18.noarch
Feb 04 16:27:02 Installed: python-django-compressor-1.2-2.fc18.noarch
Feb 04 16:27:03 Installed: python-django-authenticator-0.1.5-2.fc18.noarch
Feb 04 16:27:04 Installed: python-wallaby-0.16.0-1.fc18.noarch
Feb 04 16:27:04 Installed: python-pyspf-2.0.5-8.fc18.noarch
Feb 04 16:27:05 Installed: python3-python-pkgwat-api-0.3-5.fc18.noarch
Feb 04 16:27:07 Installed: python-moksha-wsgi-1.0.6-1.fc18.noarch
Feb 04 16:27:08 Installed: python-saslwrapper-0.16-2.fc18.i686
Feb 04 16:27:09 Installed: python-xlwt-0.7.4-2.fc18.noarch
Feb 04 16:27:11 Installed: python-tg-devtools-2.1.1-5.fc18.noarch
Feb 04 16:27:11 Installed: python-fedora-turbogears2-0.3.29-2.fc18.noarch
Feb 04 16:27:12 Installed: python-mozbase-0-0.4.gitb077641.fc18.noarch
Feb 04 16:27:13 Installed: python3-nose-progressive-1.3-3.fc18.noarch
Feb 04 16:27:14 Installed: python-rosinstall-0.6.19-2.fc18.noarch
Feb 04 16:27:15 Installed: python-openstack-nose-plugin-0.11-1.fc18.noarch
Feb 04 16:27:16 Installed: python3-pymongo-2.3-5.fc18.i686
Feb 04 16:27:18 Installed: python-lettuce-0.2.5-3.fc18.noarch
Feb 04 16:27:19 Installed: python3-zmq-tests-2.2.0.1-1.fc18.i686
Feb 04 16:27:20 Installed: python-django-roa-1.7-2.fc18.noarch
Feb 04 16:27:21 Installed: python-datanommer-consumer-0.2.0-4.fc18.noarch
Feb 04 16:27:21 Installed: python-rdfextras-0.1-3.fc18.noarch
Feb 04 16:27:22 Installed: python-wallabyclient-5.0.3-1.fc18.noarch
Feb 04 16:27:23 Installed: python-svg-doc-0.2.2b-2.fc18.noarch
Feb 04 16:27:25 Installed: python-flatland-0.0.2-3.fc18.noarch
Feb 04 16:27:28 Installed: kde-l10n-Chinese-4.9.5-1.fc18.noarch
Feb 04 16:27:30 Installed: python-xappy-0.6.0-0.3.svn624.fc18.noarch
Feb 04 16:27:31 Installed: python-flask-wtf-0.8-1.fc18.noarch
Feb 04 16:27:32 Installed: python-ipython-tests-0.13.1-1.fc18.noarch
Feb 04 16:27:33 Installed: python-tahrir-0.1.6-2.fc18.noarch
Feb 04 16:27:36 Installed: python-velruse-1.0.3-3.fc18.noarch
Feb 04 16:27:37 Installed: python-txamqp-0.3-3.fc18.noarch
Feb 04 16:27:39 Installed: python-simpy-doc-2.3.1-2.fc18.noarch
Feb 04 16:27:42 Installed: python-windmill-1.7-0.3.git4304ee7.fc18.noarch
Feb 04 16:27:44 Installed: python-carbon-0.9.10-2.fc18.noarch
Feb 04 16:27:45 Installed: python-Lightbox-2.1-8.fc18.noarch
Feb 04 16:27:46 Installed: python-anyvc-0.3.7.1-2.fc18.noarch
Feb 04 16:27:47 Installed: python-django-tastypie-doc-0.9.12-0.1.alpha.fc18.noarch
Feb 04 16:27:49 Installed: python3-alembic-0.3.4-4.fc18.noarch
Feb 04 16:27:50 Installed: python-nose-progressive-1.3-3.fc18.noarch
Feb 04 16:27:53 Installed: python3-sphinx-1.1.3-5.fc18.noarch
Feb 04 16:27:53 Installed: python-rtslib-doc-2.1.fb28-1.fc18.noarch
Feb 04 16:27:55 Installed: python-amara-1.2.0.2-10.fc18.noarch
Feb 04 16:27:55 Installed: python-xlib-doc-0.15-0.7.rc1.fc18.noarch
Feb 04 16:27:56 Installed: python-retask-0.3-1.fc18.noarch
Feb 04 16:27:58 Installed: python3-tornado-doc-2.2.1-3.fc18.noarch
Feb 04 16:28:00 Installed: python-Coherence-0.6.6.2-5.fc18.noarch
Feb 04 16:28:02 Installed: python-ipython-0.13.1-1.fc18.noarch
Feb 04 16:28:02 Installed: python-django-lint-0.13-14.fc18.noarch
Feb 04 16:28:04 Installed: python-dslib-3.0-1.fc18.noarch
Feb 04 16:28:05 Installed: python-twill-0.9-8.fc18.noarch
Feb 04 16:28:06 Installed: python-liblarch_gtk-2.1.0-1.fc18.noarch
Feb 04 16:28:07 Installed: python-slimit-0.7.4-3.fc18.noarch
Feb 04 16:28:08 Installed: python-rhev-1.0-15.rc1.fc18.2.noarch
Feb 04 16:28:09 Installed: python3-restauth-0.5.1-6.fc18.noarch
Feb 04 16:28:12 Installed: python-migrate0.5-0.5.4-4.fc18.noarch
Feb 04 16:28:14 Installed: python-djblets-0.7.9-1.fc18.noarch
Feb 04 16:28:15 Installed: python-django-dpaste-0.2.4-10.fc18.noarch
Feb 04 16:28:16 Installed: python-django-dajax-0.8.4-8.fc18.noarch
Feb 04 16:28:17 Installed: python-django-addons-0.6.4-8.fc18.noarch
Feb 04 16:28:18 Installed: python-typepad-2.0-1.fc18.noarch
Feb 04 16:28:20 Installed: python3-pyke-1.1.1-9.fc18.noarch
Feb 04 16:28:21 Installed: python-cloudservers-doc-1.2-5.fc18.noarch
Feb 04 16:28:22 Updated: libsolv-devel-0.2.3-1.gitf663ca2.fc18.i686
Feb 04 16:28:22 Installed: python-hawkey-0.3.6-1.gitc8365fa.fc18.i686
Feb 04 16:28:24 Installed: python-django-celery-3.0.11-1.fc18.noarch
Feb 04 16:28:25 Installed: python-ldaptor-tools-0.0.44-1.20120515git29a06fa.fc18.noarch
Feb 04 16:28:25 Installed: python-zope-testing-4.1.1-1.fc18.noarch
Feb 04 16:28:26 Installed: python-virtualenvcontext-0.1.6-1.fc18.noarch
Feb 04 16:28:27 Installed: python-django-pytest-0.2.0-2.fc18.noarch
Feb 04 16:28:28 Installed: python-jabberbot-0.14-2.fc18.noarch
Feb 04 16:28:29 Installed: python-flask-autoindex-0.4.1-6.fc18.noarch
Feb 04 16:28:30 Installed: python3-zope-testing-4.1.1-1.fc18.noarch
Feb 04 16:28:31 Installed: python-restauth-doc-0.5.1-6.fc18.noarch
Feb 04 16:28:32 Installed: python-larch-doc-1.20121006-1.fc18.noarch
Feb 04 16:28:33 Installed: python-tracing-doc-0.6-3.fc18.noarch
Feb 04 16:28:34 Installed: python3-pyp2rpm-0.5.1-5.fc18.noarch
Feb 04 16:28:35 Installed: python-kiwi-docs-1.9.26-5.fc18.noarch
Feb 04 16:28:36 Installed: python-colander-0.9.9-2.fc18.noarch
Feb 04 16:28:41 Installed: python-basemap-data-hires-0.99.4-5.fc18.noarch
Feb 04 16:28:42 Installed: python-portmidi-217-7.fc18.i686
Feb 04 16:28:43 Installed: python-gofer-0.74-1.fc18.noarch
Feb 04 16:28:44 Installed: python-asyncmongo-0.1.3-3.fc18.noarch
Feb 04 16:28:47 Installed: python3-pymongo-gridfs-2.3-5.fc18.i686
Feb 04 16:28:48 Installed: python-pymongo-gridfs-2.3-5.fc18.i686
Feb 04 16:28:49 Installed: python-vatnumber-1.0-3.fc18.noarch
Feb 04 16:28:50 Installed: python-psphere-0.1.4-3.fc18.noarch
Feb 04 16:28:51 Installed: python-fixtures-0.3.12-1.fc18.noarch
Feb 04 16:28:52 Installed: python-testtools-doc-0.9.21-1.fc18.noarch
Feb 04 16:28:53 Installed: python-xhtml2pdf-0.0.3-4.fc18.noarch
Feb 04 16:28:54 Installed: python-tw2-d3-0.0.8-3.fc18.noarch
Feb 04 16:28:55 Installed: python-flask-babel-0.8-4.fc18.noarch
Feb 04 16:28:56 Installed: python-restauth-common-doc-0.5.1-6.fc18.noarch
Feb 04 16:28:57 Installed: python3-zope-component-4.0.1-1.fc18.noarch
Feb 04 16:28:58 Installed: python-cli-1.2-3.fc18.noarch
Feb 04 16:29:00 Installed: python3-mpi4py-openmpi-1.3-5.fc18.i686
Feb 04 16:29:01 Installed: python3-mpi4py-mpich2-1.3-5.fc18.i686
Feb 04 16:29:02 Installed: 1:python-flask-doc-0.9-5.fc18.noarch
Feb 04 16:29:05 Installed: python-werkzeug-doc-0.8.3-2.fc18.noarch
Feb 04 16:29:05 Installed: python-ufl-demo-1.0.0-4.fc18.noarch
Feb 04 16:29:07 Installed: python-ufl-test-1.0.0-4.fc18.noarch
Feb 04 16:29:08 Installed: python-cloud-sptheme-1.5-1.fc18.noarch
Feb 04 16:29:10 Installed: python-sphinx-doc-1.1.3-5.fc18.noarch
Feb 04 16:29:11 Installed: python-sleekxmpp-1.0-0.11.beta2.fc18.noarch
Feb 04 16:29:13 Installed: python-zope-i18n-3.7.4-5.fc18.noarch
Feb 04 16:29:14 Installed: python-bottle-sqlite-0.1-1.fc18.noarch
Feb 04 16:29:15 Installed: python-django-authopenid-1.0.1-5.fc18.noarch
Feb 04 16:29:17 Installed: python-django-dynamite-0.4.1-5.fc18.noarch
Feb 04 16:29:18 Installed: python3-pytest-2.3.4-1.fc18.noarch
Feb 04 16:29:19 Installed: python3-pycmd-1.0-7.fc18.noarch
Feb 04 16:29:22 Installed: python3-bpython-0.11-4.fc18.noarch
Feb 04 16:29:23 Installed: python-repoze-what-docs-1.0.9-4.fc18.noarch
Feb 04 16:29:24 Installed: python3-cmd2-0.6.4-4.fc18.noarch
Feb 04 16:29:25 Installed: python-tox-1.4.2-7.fc18.noarch
Feb 04 16:29:26 Installed: python-tornado-doc-2.2.1-3.fc18.noarch
Feb 04 16:29:27 Installed: python-kolabformat-0.8.1-2.fc18.i686
Feb 04 16:29:28 Installed: python-coverage-test-runner-1.8-2.fc18.noarch
Feb 04 16:29:29 Installed: python-nose-xcover-1.0.7-1.fc18.noarch
Feb 04 16:29:30 Installed: python-fontMath-0.2-6.fc18.noarch
Feb 04 16:29:30 Installed: python-xgoogle-1.4-5.fc18.noarch
Feb 04 16:29:31 Installed: python-imdb-4.8.2-3.fc18.i686
Feb 04 16:29:33 Installed: python3-nose-exclude-0.1.9-2.fc18.noarch
Feb 04 16:29:33 Installed: python3-nose-cover3-0.1.0-4.fc18.noarch
Feb 04 16:29:34 Installed: python-django-openstack-auth-1.0.2-1.fc18.noarch
Feb 04 16:29:35 Installed: python-zope-filerepresentation-3.6.1-2.fc18.noarch
Feb 04 16:29:36 Installed: python3-taskw-0.4.3-2.fc18.noarch
Feb 04 16:29:37 Installed: python3-ansi2html-0.9.2-1.fc18.noarch
Feb 04 16:29:38 Installed: python3-easygui-0.96-5.fc18.noarch
Feb 04 16:29:39 Installed: python-zope-processlifetime-1.0-3.fc18.noarch
Feb 04 16:29:40 Installed: python-ldappool-1.0-1.fc18.noarch
Feb 04 16:29:40 Installed: python-ldaphelper-1.0.1-7.fc18.noarch
Feb 04 16:29:42 Installed: python-django-socialregistration-0.5.5-4.fc18.noarch
Feb 04 16:29:42 Installed: python-twitter-0.8.2-3.fc18.noarch
Feb 04 16:29:43 Installed: python-django-kombu-0.9.4-1.fc18.noarch
Feb 04 16:29:44 Installed: python-ladon-0.7.5-1.fc18.noarch
Feb 04 16:29:46 Installed: python-coffin-0.3.5-4.fc18.noarch
Feb 04 16:29:47 Installed: python-py2pack-0.3.17-3.fc18.noarch
Feb 04 16:29:48 Installed: python-solv-0.2.3-1.gitf663ca2.fc18.i686
Feb 04 16:29:49 Installed: python-django-federated-login-0.3.1-1.fc18.noarch
Feb 04 16:29:50 Installed: python-flask-openid-1.0.1-4.fc18.noarch
Feb 04 16:29:51 Installed: python-django-openid-auth-0.4-2.fc18.noarch
Feb 04 16:29:52 Installed: python3-gunicorn-0.17.2-1.fc18.noarch
Feb 04 16:29:53 Installed: python3-execnet-1.1-3.fc18.noarch
Feb 04 16:29:56 Installed: python3-pip-1.2.1-2.fc18.noarch
Feb 04 16:29:57 Installed: python3-coverage-3.5.3-2.fc18.i686
Feb 04 16:29:58 Installed: python3-d2to1-0.2.7-2.fc18.noarch
Feb 04 16:29:59 Installed: python-django-tables2-0.10.0-2.fc18.noarch
Feb 04 16:30:00 Installed: python-django-devserver-0.3.1-3.fc18.noarch
Feb 04 16:30:02 Installed: python-django-robots-0.8.1-3.fc18.noarch
Feb 04 16:30:03 Installed: python-django-avatar-2.0a1-2.20120609git097ed8.fc18.noarch
Feb 04 16:30:04 Installed: python-django-contact-form-0.3-9.fc18.hg97559a887345.noarch
Feb 04 16:30:05 Installed: python-django-evolution-0.6.7-5.fc18.noarch
Feb 04 16:30:06 Installed: python-django-threaded-multihost-1.4.0-4.20120717hg80ee24.fc18.noarch
Feb 04 16:30:06 Installed: python-django-profiles-0.2-6.fc18.noarch
Feb 04 16:30:07 Installed: python-django-ajax-selects-1.2.4-2.fc18.noarch
Feb 04 16:30:09 Installed: python-django-profile-0.6-0.1.20110216svnr458.fc18.noarch
Feb 04 16:30:10 Installed: python-django-debug-toolbar-0.9.4-1.fc18.noarch
Feb 04 16:30:11 Installed: python-django-mako-0.1.5-0.2.pre.fc18.noarch
Feb 04 16:30:12 Installed: python-django-filter-0.5.3-1.fc18.noarch
Feb 04 16:30:13 Installed: python-django-select2-3.1.4-1.fc18.noarch
Feb 04 16:30:15 Installed: python-django-tracking-0.3.7-9.fc18.noarch
Feb 04 16:30:16 Installed: python-django-pagination-1.0.7-3.fc18.noarch
Feb 04 16:30:17 Installed: python-django-annoying-0.7.6-3.20120609hga0de8b.fc18.noarch
Feb 04 16:30:18 Installed: python-django-helpdesk-0.1.7b-3.fc18.noarch
Feb 04 16:30:19 Installed: python-django-followit-0.0.3-4.fc18.noarch
Feb 04 16:30:22 Installed: python-django-doc-1.4.3-3.fc18.noarch
Feb 04 16:30:23 Installed: python-django-picklefield-0.2.1-2.fc18.noarch
Feb 04 16:30:24 Installed: python-django-piston-0.2.3-4.fc18.noarch
Feb 04 16:30:25 Installed: python-django-tagging-0.3.1-6.fc18.noarch
Feb 04 16:30:26 Installed: python-django-reversion-1.6.2-1.fc18.noarch
Feb 04 16:30:27 Installed: python-django-sorting-0.1-6.fc18.noarch
Feb 04 16:30:28 Installed: python-django-pylibmc-0.2.3-3.20120609git28874f.fc18.noarch
Feb 04 16:30:29 Installed: python-django-setuptest-0.1.2-3.fc18.noarch
Feb 04 16:30:31 Installed: python-django-bootstrap-toolkit-2.5.11-1.fc18.noarch
Feb 04 16:30:33 Installed: python-django-threadedcomments-0.5.3-6.fc18.noarch
Feb 04 16:30:34 Installed: python-django-authority-0.4-3.fc18.noarch
Feb 04 16:30:35 Installed: python-django-keyedcache-1.4.6-3.fc18.noarch
Feb 04 16:30:37 Installed: python-django-notification-0.2-3.fc18.noarch
Feb 04 16:30:38 Installed: python-fedora-django-0.3.29-2.fc18.noarch
Feb 04 16:30:39 Installed: python-django-countries-1.3-1.fc18.noarch
Feb 04 16:30:40 Installed: python-django-nose-1.0-4.fc18.noarch
Feb 04 16:30:41 Installed: python3-cement-2.0.2-1.fc18.noarch
Feb 04 16:30:43 Installed: python-icalendar-3.0.1-0.2.b2.fc18.noarch
Feb 04 16:30:45 Installed: python-twisted-core-doc-12.1.0-2.fc18.i686
Feb 04 16:30:46 Installed: python-setupdocs-1.0.5-4.fc18.noarch
Feb 04 16:30:47 Installed: python-keybinder-0.3.0-1.fc18.i686
Feb 04 16:30:48 Installed: python-docopt-0.5.0-1.fc18.noarch
Feb 04 16:30:48 Installed: python3-uinput-0.9-2.fc18.i686
Feb 04 16:30:49 Installed: python-gzipstream-1.7.1-2.fc18.noarch
Feb 04 16:30:50 Installed: python-mtTkinter-0.4-5.fc18.noarch
Feb 04 16:30:53 Installed: python-nevow-0.10.0-7.fc18.noarch
Feb 04 16:30:54 Installed: python-nose-docs-1.2.1-1.fc18.noarch
Feb 04 16:30:55 Installed: python-rpmfluff-0.3-9.fc18.noarch
Feb 04 16:30:56 Installed: python-pyquery-0.6.1-5.fc18.noarch
Feb 04 16:30:57 Installed: python-logutils-0.3.2-1.fc18.noarch
Feb 04 16:30:58 Installed: python-dtopt-0.1-10.fc18.noarch
Feb 04 16:30:59 Installed: python3-pygpgme-0.3-5.fc18.i686
Feb 04 16:31:00 Installed: python-textile-2.1.4-7.fc18.noarch
Feb 04 16:31:00 Installed: python3-logutils-0.3.2-1.fc18.noarch
Feb 04 16:31:01 Installed: python-html2text-3.200.3-2.fc18.noarch
Feb 04 16:31:02 Installed: python3-logging-tree-1.1-2.fc18.noarch
Feb 04 16:31:03 Installed: python-debian-0.1.21-4.fc18.noarch
Feb 04 16:31:04 Installed: python-prioritized-methods-0.2.1-9.fc18.noarch
Feb 04 16:31:06 Installed: python-testosterone-0.4.1-6.fc18.noarch
Feb 04 16:31:07 Installed: python3-dirq-1.2.2-3.fc18.noarch
Feb 04 16:31:08 Installed: python-dialog-2.7-16.fc18.noarch
Feb 04 16:31:09 Installed: python-pybloomfiltermmap-0.3.2-1.fc18.i686
Feb 04 16:31:10 Installed: python-unidecode-0.04.7-7.fc18.noarch
Feb 04 16:31:12 Installed: python3-markdown-2.2.1-1.fc18.noarch
Feb 04 16:31:13 Installed: python3-apsw-3.7.11.r1-8.fc18.i686
Feb 04 16:31:14 Installed: python-rpyc-3.0.7-3.noarch
Feb 04 16:31:15 Installed: python-hwdata-1.7.3-2.fc18.noarch
Feb 04 16:31:17 Installed: python3-kombu-2.4.7-1.fc18.noarch
Feb 04 16:31:18 Installed: python-gflags-1.5.1-3.fc18.noarch
Feb 04 16:31:18 Installed: python-straight-plugin-1.1.1-0.10.20111110.git57ef11c.fc18.noarch
Feb 04 16:31:19 Installed: python-logging-tree-1.1-2.fc18.noarch
Feb 04 16:31:20 Installed: python-alsa-1.0.26-1.fc18.i686
Feb 04 16:31:21 Installed: python3-feedparser-5.1.2-4.fc18.noarch
Feb 04 16:31:22 Installed: python-metar-1.3.0-10.fc18.noarch
Feb 04 16:31:23 Installed: python-nufw-2.4.3-6.fc18.i686
Feb 04 16:31:23 Installed: python-cpio-0.1-14.fc18.noarch
Feb 04 16:31:24 Installed: python-uinput-0.9-2.fc18.i686
Feb 04 16:31:25 Installed: python-concurrentloghandler-0.8.4-7.fc18.noarch
Feb 04 16:31:26 Installed: python3-pyproj-1.9.2-5.20120712svn300.fc18.i686
Feb 04 16:31:27 Installed: python-zope-sequencesort-3.4.0-2.fc18.noarch
Feb 04 16:31:28 Installed: python-pyotp-1.3.1-2.fc18.noarch
Feb 04 16:31:29 Updated: python-txzmq-0.6.1-3.fc18.noarch
Feb 04 16:31:30 Installed: python-openvswitch-1.7.3-6.fc18.noarch
Feb 04 16:31:31 Installed: python-ipython-doc-0.13.1-1.fc18.noarch
Feb 04 16:31:33 Installed: python-llfuse-0.37.1-11.fc18.i686
Feb 04 16:31:34 Installed: python-pottymouth-2.2.1-3.fc18.noarch
Feb 04 16:31:34 Installed: python3-flexmock-0.9.4-3.fc18.noarch
Feb 04 16:31:35 Installed: python-futures-2.1.3-1.fc18.noarch
Feb 04 16:31:36 Installed: python-xmlbuilder-1.0-2.fc18.noarch
Feb 04 16:31:38 Installed: python-lamson-1.1-4.fc18.noarch
Feb 04 16:31:39 Installed: python-paver-1.1.1-2.fc18.noarch
Feb 04 16:31:42 Installed: python-alembic-0.3.4-4.fc18.noarch
Feb 04 16:31:43 Installed: python-power-1.1-2.20121103git2cfe611.fc18.noarch
Feb 04 16:31:44 Installed: python-nose-cover3-0.1.0-4.fc18.noarch
Feb 04 16:31:46 Installed: python-simplemediawiki-1.1.1-2.fc18.noarch
Feb 04 16:31:47 Installed: python-zc-buildout-1.5.2-3.fc18.noarch
Feb 04 16:31:48 Installed: python-imaging-devel-1.1.7-7.fc18.i686
Feb 04 16:31:49 Installed: python-postman-0.6.0-4.fc18.noarch
Feb 04 16:31:50 Installed: python3-dogpile-core-0.4.0-2.fc18.noarch
Feb 04 16:31:51 Installed: python3-pyxdg-0.24-1.fc18.noarch
Feb 04 16:31:52 Installed: python-hcs_utils-1.1.1-6.fc18.noarch
Feb 04 16:31:53 Installed: python-setuptools_trial-0.5.12-4.fc18.noarch
Feb 04 16:31:54 Installed: python3-amqplib-1.0.2-6.fc18.noarch
Feb 04 16:31:55 Installed: python-zope-dottedname-3.4.6-5.fc18.noarch
Feb 04 16:31:56 Installed: 1:python-libguestfs-1.20.1-3.fc18.i686
Feb 04 16:31:57 Installed: python-keyczar-0.71c-1.fc18.noarch
Feb 04 16:31:58 Installed: python-xmltramp-2.17-10.fc18.noarch
Feb 04 16:31:59 Installed: python3-enchant-1.6.5-7.fc18.noarch
Feb 04 16:32:00 Installed: python-cagraph-1.2-11.fc18.noarch
Feb 04 16:32:01 Installed: python-hl7-0.2.0-4.fc18.noarch
Feb 04 16:32:02 Installed: python-plumbum-0.9.0-2.fc18.noarch
Feb 04 16:32:03 Installed: python-dogpile-cache-0.4.0-3.fc18.noarch
Feb 04 16:32:04 Installed: python3-zope-fixers-1.0-4.fc18.noarch
Feb 04 16:32:05 Installed: python-instant-1.0.0-2.fc18.noarch
Feb 04 16:32:06 Installed: python-nova-adminclient-0.1.8-3.fc18.noarch
Feb 04 16:32:07 Installed: python-mock-0.8.0-4.fc18.noarch
Feb 04 16:32:09 Installed: python-oasa-0.13.1-6.fc18.noarch
Feb 04 16:32:10 Installed: python-mygpoclient-1.6-3.fc18.noarch
Feb 04 16:32:11 Installed: python-altgraph-0.10.1-1.fc18.noarch
Feb 04 16:32:12 Installed: python-ferari-0.2.0-6.fc18.noarch
Feb 04 16:32:13 Installed: python-pyvfs-0.2.7-1.fc18.noarch
Feb 04 16:32:16 Installed: python-ssh-1.7.14-2.fc18.noarch
Feb 04 16:32:17 Installed: python-yolk-0.4.1-6.fc18.noarch
Feb 04 16:32:18 Installed: python-restsh-0.1-2.fc18.noarch
Feb 04 16:32:20 Installed: python3-llfuse-0.37.1-11.fc18.i686
Feb 04 16:32:23 Updated: python-meh-0.20-1.fc18.noarch
Feb 04 16:32:24 Installed: python-scripttest-1.0.4-6.fc18.noarch
Feb 04 16:32:25 Installed: python-zope-contenttype-3.5.5-3.fc18.noarch
Feb 04 16:32:25 Installed: python-babel-BabelGladeExtractor-0.2-0.5.r288.fc18.noarch
Feb 04 16:32:26 Installed: 1:python-novaclient-doc-2.10.0-1.fc18.noarch
Feb 04 16:32:27 Installed: python-dingus-0.3.4-2.fc18.noarch
Feb 04 16:32:28 Installed: python-simpletal-4.3-4.fc18.noarch
Feb 04 16:32:29 Installed: python3-pbs-4.3.3-3.fc18.i686
Feb 04 16:32:30 Installed: python-swiftclient-doc-1.2.0-3.fc18.noarch
Feb 04 16:32:31 Installed: python-epdb-0.11-8.fc18.noarch
Feb 04 16:32:31 Installed: python-recaptcha-client-1.0.6-2.fc18.noarch
Feb 04 16:32:32 Installed: python-achoo-1.0-7.fc18.noarch
Feb 04 16:32:33 Installed: python3-inotify-0.9.4-1.fc18.noarch
Feb 04 16:32:34 Installed: python-taskw-0.4.3-2.fc18.noarch
Feb 04 16:32:35 Installed: python-psycopg2-doc-2.4.5-6.fc18.i686
Feb 04 16:32:37 Installed: python-HTMLgen-2.2.2-18.fc18.noarch
Feb 04 16:32:38 Installed: python-di-0.2-1.fc18.noarch
Feb 04 16:32:38 Installed: python-atfork-0.1.2-3.fc18.noarch
Feb 04 16:32:40 Installed: python-glue-0.2.9-1.fc18.noarch
Feb 04 16:32:41 Installed: python-firkin-0.02-6.fc18.noarch
Feb 04 16:32:41 Installed: python-profilehooks-1.6-3.fc18.noarch
Feb 04 16:32:42 Installed: python-hghooks-0.5.4-3.fc18.noarch
Feb 04 16:32:43 Installed: python-sh-1.02-2.fc18.noarch
Feb 04 16:32:44 Installed: python3-mglob-0.4-7.fc18.noarch
Feb 04 16:32:45 Installed: python-tgscheduler-1.6.3-5.fc18.noarch
Feb 04 16:32:53 Installed: python-matplotlib-doc-1.2.0-8.fc18.i686
Feb 04 16:32:54 Installed: python-pyrad-1.1-8.fc18.noarch
Feb 04 16:32:55 Installed: python-dictclient-1.0.1-8.fc18.noarch
Feb 04 16:32:56 Installed: python-jsonpickle-0.3.1-5.fc18.noarch
Feb 04 16:32:57 Installed: python3-manuel-1.6.0-3.fc18.noarch
Feb 04 16:32:59 Installed: python-pika-0.9.5-4.fc18.noarch
Feb 04 16:33:02 Installed: python-libcloud-0.11.4-3.fc18.noarch
Feb 04 16:33:03 Installed: python-tbgrep-0.2.2-1.fc18.noarch
Feb 04 16:33:04 Installed: python-redland-1.0.14.1-3.fc18.i686
Feb 04 16:33:05 Installed: python-logbook-0.3-5.fc18.i686
Feb 04 16:33:06 Installed: python3-webob1.2-1.2.3-2.fc18.noarch
Feb 04 16:33:07 Installed: python-xtermcolor-1.0.3-2.fc18.noarch
Feb 04 16:33:08 Installed: python-matplotlib-qt4-1.2.0-8.fc18.i686
Feb 04 16:33:09 Installed: python-pytools-8-7.fc18.noarch
Feb 04 16:33:10 Installed: python-wsgiref-0.1.2-9.fc18.noarch
Feb 04 16:33:12 Installed: python-foolscap-0.6.3-1.fc17.noarch
Feb 04 16:33:13 Installed: python3-stomppy-3.0.5-3.fc18.noarch
Feb 04 16:33:14 Installed: python-digidoc-0.3.0-16.fc18.i686
Feb 04 16:33:15 Installed: python-pyro-4.14-1.fc18.noarch
Feb 04 16:33:16 Installed: python-augeas-0.4.1-2.fc18.noarch
Feb 04 16:33:17 Installed: python-flask-oauth-0.9-3.fc18.noarch
Feb 04 16:33:18 Installed: python-pyasn1-modules-0.1.2-2.fc18.noarch
Feb 04 16:33:19 Installed: python-ansi2html-0.9.2-1.fc18.noarch
Feb 04 16:33:21 Installed: python-bucky-0.2.3-1.fc18.noarch
Feb 04 16:33:26 Installed: python-lxml-docs-2.3.5-1.fc18.noarch
Feb 04 16:33:27 Installed: python-morbid-0.8.7.3-4.fc18.noarch
Feb 04 16:33:28 Installed: python-pretty-0.1-5.fc18.noarch
Feb 04 16:33:29 Installed: python3-billiard-2.7.3.17-1.fc18.noarch
Feb 04 16:33:30 Installed: python-cssselect-0.7.1-3.fc18.noarch
Feb 04 16:33:32 Installed: python-webassets-0.7.1-1.fc18.noarch
Feb 04 16:33:33 Installed: python-easygui-0.96-5.fc18.noarch
Feb 04 16:33:34 Installed: python3-tempita-0.5.1-4.fc18.noarch
Feb 04 16:33:35 Installed: python3-mock-0.8.0-4.fc18.noarch
Feb 04 16:33:36 Installed: python-shapely-1.2.16-1.fc18.i686
Feb 04 16:33:37 Installed: python-walkdir-0.3-1.fc18.noarch
Feb 04 16:33:38 Installed: python3-pyshp-1.1.4-5.fc18.noarch
Feb 04 16:33:38 Installed: python3-setproctitle-1.1.6-1.fc18.i686
Feb 04 16:33:40 Installed: python3-pexpect-2.5.1-5.fc18.noarch
Feb 04 16:33:41 Installed: python3-waitress-0.8.2-3.fc18.noarch
Feb 04 16:33:42 Installed: python-progressbar-2.2-11.fc18.noarch
Feb 04 16:33:43 Installed: python-dpkt-1.7-4.fc18.noarch
Feb 04 16:33:44 Installed: python3-apipkg-1.2-1.fc18.noarch
Feb 04 16:33:45 Installed: python-inotify-examples-0.9.4-1.fc18.noarch
Feb 04 16:33:46 Installed: python-iptables-0.1.0-4.fc18.i686
Feb 04 16:33:46 Installed: python-mwclient-0.6.5-3.fc18.noarch
Feb 04 16:33:48 Installed: python-apsw-3.7.11.r1-8.fc18.i686
Feb 04 16:33:49 Installed: python-which-1.1.0-10.fc18.noarch
Feb 04 16:33:51 Installed: python3-messaging-0.10-3.fc18.noarch
Feb 04 16:33:51 Installed: python-tunepimp-0.5.3-21.fc18.i686
Feb 04 16:33:52 Installed: python3-zope-deprecation-3.5.1-1.fc18.noarch
Feb 04 16:33:53 Installed: python-pp-1.6.0-4.fc18.noarch
Feb 04 16:33:54 Installed: python-wikimarkup-1.01-10.005svn.fc18.noarch
Feb 04 16:33:55 Installed: python-flask-lastuser-0.2-3.20110722git3bf2a0.fc18.noarch
Feb 04 16:33:56 Installed: python-enum-0.4.4-5.fc18.noarch
Feb 04 16:33:57 Installed: python-irclib-0.4.8-4.fc18.noarch
Feb 04 16:33:58 Installed: python-tpg-3.1.2-10.fc18.noarch
Feb 04 16:33:59 Installed: python-pefile-1.2.10_63-6.fc18.noarch
Feb 04 16:34:01 Installed: python-akismet-0.2.0-3.fc18.noarch
Feb 04 16:34:02 Installed: python-reportlab-docs-2.5-5.fc18.i686
Feb 04 16:34:03 Installed: python-demjson-1.6-3.fc18.noarch
Feb 04 16:34:04 Installed: python-pyudev-0.15-3.fc18.noarch
Feb 04 16:34:08 Installed: python-sqlalchemy0.7-0.7.3-7.fc18.i686
Feb 04 16:34:09 Installed: python-nose-exclude-0.1.9-2.fc18.noarch
Feb 04 16:34:10 Installed: python-pep8-1.3.3-3.fc18.noarch
Feb 04 16:34:11 Installed: python-cdb-0.34-4.fc18.i686
Feb 04 16:34:12 Installed: python-cerealizer-0.7-5.fc18.noarch
Feb 04 16:34:13 Installed: python-confparser-1.0.1-7.fc18.noarch
Feb 04 16:34:14 Installed: python3-auth.credential-0.6-3.fc18.noarch
Feb 04 16:34:16 Installed: python3-cherrypy-3.2.0-0.rc1.r2567.1.fc18.6.noarch
Feb 04 16:34:19 Installed: python-pmw-1.3.2-13.fc18.noarch
Feb 04 16:34:20 Installed: python-flickrapi-1.4.2-3.fc18.noarch
Feb 04 16:34:23 Installed: python-ldaptor-doc-0.0.44-1.20120515git29a06fa.fc18.noarch
Feb 04 16:34:23 Installed: python-pymtp-0.0.4-5.fc18.i686
Feb 04 16:34:24 Installed: python-bitlyapi-0.1.1-2.fc18.noarch
Feb 04 16:34:25 Installed: python-tables-doc-2.4.0-1.fc18.noarch
Feb 04 16:34:27 Installed: python-okaara-1.0.21-2.fc18.noarch
Feb 04 16:34:28 Installed: python-telepathy-0.15.19-5.fc18.noarch
Feb 04 16:34:29 Installed: python3-profilehooks-1.6-3.fc18.noarch
Feb 04 16:34:31 Installed: python-zope-structuredtext-3.5.1-1.fc18.noarch
Feb 04 16:34:32 Installed: python3-pyro-4.14-1.fc18.noarch
Feb 04 16:34:34 Installed: python-vcpx-0.9.35-14.fc18.noarch
Feb 04 16:34:37 Installed: python-setproctitle-1.1.6-1.fc18.i686
Feb 04 16:34:37 Installed: python3-simplegeneric-0.8-5.fc18.noarch
Feb 04 16:34:38 Installed: python-rospkg-1.0.10-1.fc18.noarch
Feb 04 16:34:38 Installed: python3-markdown2-2.1.0-1.fc18.noarch
Feb 04 16:34:39 Installed: python-flexmock-0.9.4-3.fc18.noarch
Feb 04 16:34:40 Installed: python-strainer-0.1.4-3.fc18.noarch
Feb 04 16:34:41 Installed: python-dirq-1.2.2-3.fc18.noarch
Feb 04 16:34:44 Installed: python-mpmath-doc-0.17-5.fc18.noarch
Feb 04 16:34:45 Installed: python-dbusmock-0.3-1.fc18.noarch
Feb 04 16:34:46 Installed: python-pycallgraph-0.5.1-3.fc18.noarch
Feb 04 16:34:47 Installed: python-distutils-extra-2.34-1.fc18.noarch
Feb 04 16:34:48 Updated: python-urlgrabber-3.9.1-24.fc18.noarch
Feb 04 16:34:49 Installed: python-snpp-1.1.2-6.fc18.noarch
Feb 04 16:34:50 Installed: python-hgdistver-0.16-2.fc18.noarch
Feb 04 16:34:51 Installed: python-fastimport-0.9.1-2.fc18.noarch
Feb 04 16:34:52 Installed: 1:python-keystoneclient-doc-0.1.3.9-1.fc18.noarch
Feb 04 16:34:53 Installed: python-dogpile-core-0.4.0-2.fc18.noarch
Feb 04 16:34:54 Installed: python-sqlparse-0.1.2-3.fc18.noarch
Feb 04 16:34:55 Installed: python-certifi-0.0.8-3.fc18.noarch
Feb 04 16:34:56 Installed: python-cssutils-0.9.9-2.fc18.noarch
Feb 04 16:34:58 Installed: python-googlevoice-0.5-5.fc18.noarch
Feb 04 16:34:59 Installed: python3-smbc-1.0.13-5.fc18.i686
Feb 04 16:35:00 Installed: python-sieve-0.1.6-7.fc18.noarch
Feb 04 16:35:01 Installed: python-gerrit-0.0.1-2.gita7ffd76.fc18.noarch
Feb 04 16:35:03 Installed: python-tlslite-0.4.1-2.fc18.noarch
Feb 04 16:35:05 Installed: python-gdata-2.0.14-3.fc18.noarch
Feb 04 16:35:06 Installed: python-mox-0.5.3-5.fc18.noarch
Feb 04 16:35:07 Installed: python-cherrytemplate-1.0.0-14.fc18.noarch
Feb 04 16:35:08 Installed: python-eucadmin-3.2.0-0.5.20121210git5ab72572.fc18.noarch
Feb 04 16:35:09 Installed: python-msgpack-0.1.13-2.fc18.i686
Feb 04 16:35:12 Installed: python-wifi-0.5.0-6.fc18.noarch
Feb 04 16:35:13 Installed: python-linux-procfs-0.4.4-7.fc18.noarch
Feb 04 16:35:14 Installed: python-flask-assets-0.2.2-3.fc18.noarch
Feb 04 16:35:15 Installed: python-django-recaptcha-works-0.3.4-3.fc18.noarch
Feb 04 16:35:17 Installed: python-upoints-0.11.0-9.fc18.noarch
Feb 04 16:35:18 Installed: python3-straight-plugin-1.1.1-0.10.20111110.git57ef11c.fc18.noarch
Feb 04 16:35:19 Installed: python-qrcode-2.4.1-3.fc18.noarch
Feb 04 16:35:20 Installed: python-stevedore-0.8-1.fc18.noarch
Feb 04 16:35:21 Installed: python-eyed3-0.6.18-3.fc18.noarch
Feb 04 16:35:22 Installed: python-exif-1.1.0-1.fc18.noarch
Feb 04 16:35:29 Installed: python-docs-2.7.3-3.fc18.noarch
Feb 04 16:35:30 Installed: python-messaging-0.10-3.fc18.noarch
Feb 04 16:35:31 Installed: python3-prettytable-0.6.1-1.fc18.noarch
Feb 04 16:35:32 Installed: python-tgexpandingformwidget-0.1.3-12.fc18.noarch
Feb 04 16:35:33 Installed: python-manuel-1.6.0-3.fc18.noarch
Feb 04 16:35:34 Installed: python-markdown2-2.1.0-1.fc18.noarch
Feb 04 16:35:35 Installed: python-cliapp-doc-1.20120630-2.fc18.noarch
Feb 04 16:35:36 Installed: python-cups-doc-1.9.62-1.fc18.i686
Feb 04 16:35:37 Installed: python-TurboMail-3.0.3-3.fc18.noarch
Feb 04 16:35:38 Installed: python-cement-2.0.2-1.fc18.noarch
Feb 04 16:35:39 Installed: python-pycxx-devel-6.2.4-3.fc18.noarch
Feb 04 16:35:41 Installed: python-soaplib-0.8.1-7.fc18.noarch
Feb 04 16:35:42 Installed: python-xlrd-0.7.1-4.fc18.noarch
Feb 04 16:35:43 Installed: python-unittest2-0.5.1-4.fc18.noarch
Feb 04 16:35:44 Installed: python-cssutils-doc-0.9.9-2.fc18.noarch
Feb 04 16:35:46 Installed: python3-anyjson-0.3.3-2.fc18.noarch
Feb 04 16:35:47 Installed: python-flask-sqlalchemy-0.16-1.fc18.noarch
Feb 04 16:35:48 Installed: python-geoclue-0.1.0-5.fc18.noarch
Feb 04 16:35:50 Installed: python-visual-doc-5.72-6.fc18.noarch
Feb 04 16:35:51 Installed: python-psutil-0.6.1-1.fc18.i686
Feb 04 16:35:53 Installed: python3-dogpile-cache-0.4.0-3.fc18.noarch
Feb 04 16:35:54 Installed: python-dateutil15-1.5-1.fc18.noarch
Feb 04 16:35:55 Installed: python-ipaddr-2.1.9-3.fc18.noarch
Feb 04 16:35:56 Installed: python-d2to1-0.2.7-2.fc18.noarch
Feb 04 16:35:57 Installed: python-trml2pdf-1.2-5.fc18.noarch
Feb 04 16:35:57 Installed: python-wsgiproxy-0.2.2-4.fc18.noarch
Feb 04 16:35:58 Installed: python-matplotlib-wx-1.2.0-8.fc18.i686
Feb 04 16:35:59 Installed: python-transifex-0.1.7-1.fc18.noarch
Feb 04 16:36:00 Installed: python-setuptools_git-0.4.2-2.fc18.noarch
Feb 04 16:36:01 Installed: python-praw-1.0.15-3.fc18.noarch
Feb 04 16:36:02 Installed: python-webpy-0.37-2.fc18.noarch
Feb 04 16:36:03 Installed: python-dotconf-0.2.1-14.fc18.noarch
Feb 04 16:36:04 Installed: python-turboflot-0.7.0-3.fc18.noarch
Feb 04 16:36:05 Installed: python-waitress-0.8.2-3.fc18.noarch
Feb 04 16:36:10 Installed: python-twisted-web2-8.1.0-11.fc18.i686
Feb 04 16:36:10 Installed: python-unicodenazi-1.1-3.fc18.noarch
Feb 04 16:36:12 Installed: python3-sleekxmpp-1.0-0.11.beta2.fc18.noarch
Feb 04 16:36:13 Installed: python-rest-client-0.3-3gitf898f0.fc18.noarch
Feb 04 16:36:13 Installed: python-smbc-doc-1.0.13-5.fc18.i686
Feb 04 16:36:14 Installed: python-geome-1.4-1.fc18.noarch
Feb 04 16:36:15 Installed: python-fdb-doc-0.9.9-1.fc18.noarch
Feb 04 16:36:16 Installed: python-ttystatus-doc-0.19-1.fc18.noarch
Feb 04 16:36:17 Installed: python-condorec2e-1.3.1-1.fc18.noarch
Feb 04 16:36:18 Installed: python3-testtools-0.9.21-1.fc18.noarch
Feb 04 16:36:19 Installed: python-webdav-library-0.3.0-4.fc18.noarch
Feb 04 16:36:23 Installed: python-pbs-4.3.3-3.fc18.i686
Feb 04 16:36:24 Installed: python-flask-mail-0.6.1-3.fc18.noarch
Feb 04 16:36:25 Installed: python-cloudfiles-1.7.10-2.fc18.noarch
Feb 04 16:36:26 Installed: python-auth-credential-0.6-3.fc18.noarch
Feb 04 16:36:27 Installed: python-signalfd-0.1-3.fc18.i686
Feb 04 16:36:29 Installed: python-paida-3.2.1_2.10.1-7.fc18.noarch
Feb 04 16:36:30 Installed: python-nss-doc-0.12-4.fc18.i686
Feb 04 16:36:31 Installed: python-yourls-0.2.0-3.fc18.noarch
Feb 04 16:36:31 Installed: python-mpd-0.2.1-5.fc18.noarch
Feb 04 16:36:33 Installed: python-pthreading-0.1.1-1.fc18.noarch
Feb 04 16:36:33 Installed: python3-psutil-0.6.1-1.fc18.i686
Feb 04 16:36:34 Installed: python-zope-datetime-3.4.1-1.fc18.noarch
Feb 04 16:36:36 Installed: python-wokkel-0.7.0-2.fc18.noarch
Feb 04 16:36:37 Installed: python-vkontakte-1.3.2-1.fc18.noarch
Feb 04 16:36:38 Installed: python3-chardet-2.0.1-8.fc18.noarch
Feb 04 16:36:40 Installed: python-tgcaptcha-0.11-12.fc18.noarch
Feb 04 16:36:41 Installed: python-execnet-1.1-3.fc18.noarch
Feb 04 16:36:42 Installed: python-minimock-1.2.7-4.fc18.noarch
Feb 04 16:36:43 Installed: python-SocksiPy-1.00-7.fc18.noarch
Feb 04 16:36:44 Installed: python-squaremap-1.0.1-0.2.b3.fc18.noarch
Feb 04 16:36:45 Installed: python-unipath-0.2.1-7.fc18.noarch
Feb 04 16:36:46 Installed: python-myhdl-0.7-3.fc18.noarch
Feb 04 16:36:48 Installed: python-gunicorn-0.17.2-1.fc18.noarch
Feb 04 16:36:49 Installed: python-sure-0.10.3-3.fc18.noarch
Feb 04 16:36:50 Installed: python-xkit-0.4.2.2-3.fc18.noarch
Feb 04 16:36:51 Installed: python-application-1.4.0-1.fc18.noarch
Feb 04 16:36:54 Installed: python-tw-jquery-0.9.10-3.fc18.noarch
Feb 04 16:36:55 Installed: python-mailer-0.7-3.fc18.noarch
Feb 04 16:36:56 Installed: python-websockify-0.2.0-2.fc18.noarch
Feb 04 16:36:57 Installed: python-py9p-1.0.5-1.fc18.noarch
Feb 04 16:36:58 Installed: python-setuptools_hg-0.2.1-4.fc18.noarch
Feb 04 16:37:00 Installed: python-pip-1.2.1-2.fc18.noarch
Feb 04 16:37:00 Installed: python-nmap-0.2.4-1.fc18.noarch
Feb 04 16:37:01 Installed: python3-minimock-1.2.7-4.fc18.noarch
Feb 04 16:37:02 Installed: python-flup-1.0.2-5.fc18.noarch
Feb 04 16:37:03 Installed: python3-httplib2-0.7.7-1.fc18.noarch
Feb 04 16:37:04 Installed: python-lyricwiki-0.1.35-3.fc18.noarch
Feb 04 16:37:09 Updated: 1:numpy-1.7.0-0.5.rc1.fc18.i686
Feb 04 16:37:14 Updated: qtwebkit-2.2.2-5.fc18.i686
Feb 04 16:37:15 Installed: python-greenlet-0.3.1-12.fc18.i686
Feb 04 16:37:17 Installed: python-eventlet-0.9.17-2.fc18.noarch
Feb 04 16:37:22 Installed: 1:python3-numpy-1.7.0-0.5.rc1.fc18.i686
Feb 04 16:37:23 Installed: erlang-runtime_tools-R15B-03.2.fc18.i686
Feb 04 16:37:25 Installed: PyYAML-3.10-6.fc18.i686
Feb 04 16:37:26 Installed: serd-0.18.0-1.fc18.i686
Feb 04 16:37:28 Installed: pangox-compat-0.0.2-1.fc18.i686
Feb 04 16:37:29 Installed: gtkglext-libs-1.2.0-18.fc18.i686
Feb 04 16:37:32 Installed: libverto-0.2.5-1.fc18.i686
Feb 04 16:37:33 Installed: sord-0.10.4-2.fc18.i686
Feb 04 16:37:35 Installed: fonttools-2.3-6.fc18.i686
Feb 04 16:37:39 Installed: pygame-1.9.1-11.fc18.i686
Feb 04 16:37:40 Installed: python3-sip-4.14.2-1.fc18.i686
Feb 04 16:37:43 Installed: python3-PyQt4-4.9.6-1.fc18.i686
Feb 04 16:37:45 Installed: python-storm-0.19-3.fc18.i686
Feb 04 16:37:46 Installed: python3-cairo-1.10.0-4.fc18.i686
Feb 04 16:37:48 Installed: firebird-libfbclient-2.5.2.26539.0-1.fc18.i686
Feb 04 16:37:49 Installed: shiboken-libs-1.1.0-2.fc18.i686
Feb 04 16:37:51 Installed: libdbi-0.8.4-2.fc18.i686
Feb 04 16:37:53 Installed: Coin2-2.5.0-16.fc18.i686
Feb 04 16:37:55 Installed: clucene-core-2.3.3.4-7.fc18.i686
Feb 04 16:37:56 Installed: sratom-0.2.0-4.fc18.i686
Feb 04 16:37:57 Installed: erlang-snmp-R15B-03.2.fc18.i686
Feb 04 16:37:59 Installed: python-gevent-0.13.6-3.fc18.i686
Feb 04 16:38:00 Installed: gammu-libs-1.26.1-9.fc18.i686
Feb 04 16:38:01 Installed: python-zope-proxy-3.6.1-7.fc18.i686
Feb 04 16:38:03 Installed: libdmtx-0.7.2-8.fc18.i686
Feb 04 16:38:04 Installed: python-kerberos-1.1-9.1.fc18.i686
Feb 04 16:38:07 Installed: python3-lxml-2.3.5-1.fc18.i686
Feb 04 16:38:09 Installed: cudd-2.5.0-2.fc18.i686
Feb 04 16:38:10 Installed: attica-0.4.0-2.fc18.i686
Feb 04 16:38:12 Installed: lksctp-tools-1.0.11-5.fc18.i686
Feb 04 16:38:13 Updated: libwebp-0.2.1-1.fc18.i686
Feb 04 16:38:15 Installed: strigi-libs-0.7.7-7.20120626.fc18.i686
Feb 04 16:38:16 Installed: python-kaa-base-0.6.0-7.fc18.i686
Feb 04 16:38:18 Installed: sphinxbase-libs-0.8-1.fc18.i686
Feb 04 16:38:20 Installed: apiextractor-0.10.10-3.fc18.i686
Feb 04 16:38:21 Installed: python-ogg-1.3-17.i686
Feb 04 16:38:24 Installed: mx-3.2.3-3.fc18.i686
Feb 04 16:38:25 Installed: trytond-pgsql-2.4.4-1.fc18.noarch
Feb 04 16:38:28 Installed: trytond-2.4.4-1.fc18.noarch
Feb 04 16:38:29 Installed: libforensic1394-0.2-5.fc18.i686
Feb 04 16:38:30 Installed: lksctp-tools-devel-1.0.11-5.fc18.i686
Feb 04 16:38:31 Installed: python-qserve-0.2.7-2.fc18.noarch
Feb 04 16:38:33 Installed: python-mwlib-0.13.8-2.fc18.i686
Feb 04 16:38:35 Installed: python-mwlib-xhtml-0.1.0-4.fc18.noarch
Feb 04 16:38:36 Installed: erlang-otp_mibs-R15B-03.2.fc18.i686
Feb 04 16:38:37 Installed: lilv-0.14.4-1.fc18.i686
Feb 04 16:38:42 Installed: python-pyside-1.1.0-2.fc18.i686
Feb 04 16:38:43 Installed: python-storm-zope-0.19-3.fc18.i686
Feb 04 16:39:05 Installed: 1:gnash-0.8.10-4.fc18.i686
Feb 04 16:39:08 Installed: python-tablib-0.9.11.20120702git752443f-6.fc18.noarch
Feb 04 16:39:09 Installed: python-cliff-1.0-3.fc18.noarch
Feb 04 16:39:10 Installed: 1:python-quantumclient-2.1.10-1.fc18.noarch
Feb 04 16:39:14 Installed: python-django-horizon-2012.2.1-3.fc18.noarch
Feb 04 16:39:16 Installed: erlang-et-R15B-03.2.fc18.i686
Feb 04 16:39:17 Installed: qtwebkit-devel-2.2.2-5.fc18.i686
Feb 04 16:39:19 Installed: python-numexpr-2.0.1-2.fc18.i686
Feb 04 16:39:21 Installed: python-tables-2.4.0-1.fc18.i686
Feb 04 16:39:22 Installed: 1:numpy-f2py-1.7.0-0.5.rc1.fc18.i686
Feb 04 16:39:31 Installed: scipy-0.11.0-1.fc18.i686
Feb 04 16:39:32 Installed: generatorrunner-0.6.16-2.fc18.i686
Feb 04 16:39:33 Installed: shiboken-1.1.0-2.fc18.i686
Feb 04 16:39:34 Installed: shiboken-devel-1.1.0-2.fc18.i686
Feb 04 16:39:35 Installed: sphinxbase-python-0.8-1.fc18.i686
Feb 04 16:39:39 Updated: gdal-libs-1.9.1-14.fc18.1.i686
Feb 04 16:39:41 Installed: gdal-python-1.9.1-14.fc18.1.i686
Feb 04 16:39:44 Installed: python-networkx-1.7-1.fc18.noarch
Feb 04 16:39:46 Installed: polybori-0.8.2-5.fc18.i686
Feb 04 16:39:47 Installed: prison-1.0-5.fc18.i686
Feb 04 16:39:50 Installed: python-ZODB3-3.10.5-3.fc18.i686
Feb 04 16:39:54 Installed: gammu-1.26.1-9.fc18.i686
Feb 04 16:39:55 Installed: clucene-contribs-lib-2.3.3.4-7.fc18.i686
Feb 04 16:39:57 Installed: SoQt-1.5.0-7.fc18.i686
Feb 04 16:39:58 Installed: SIMVoleon-2.0.1-13.fc18.i686
Feb 04 16:40:11 Installed: python3-matplotlib-1.2.0-8.fc18.i686
Feb 04 16:40:12 Installed: python3-sip-devel-4.14.2-1.fc18.i686
Feb 04 16:40:21 Installed: python3-PyQt4-devel-4.9.6-1.fc18.i686
Feb 04 16:40:22 Installed: libverto-jsonrpc-0.1.0-6.fc18.i686
Feb 04 16:40:24 Installed: libverto-tevent-0.2.5-1.fc18.i686
Feb 04 16:40:28 Installed: krb5-server-1.10.3-5.fc18.i686
Feb 04 16:40:29 Installed: authhub-0.1.2-2.fc18.i686
Feb 04 16:40:30 Installed: gtkglextmm-1.2.0-15.fc18.i686
Feb 04 16:40:32 Installed: ScientificPython-2.8-16.fc18.i686
Feb 04 16:40:35 Installed: python-Traits-4.2.0-2.fc18.i686
Feb 04 16:40:37 Installed: python-TraitsBackendQt-3.5.0-4.fc18.noarch
Feb 04 16:40:40 Installed: python-TraitsGUI-3.5.0-4.fc18.noarch
Feb 04 16:40:43 Installed: python-AppTools-3.4.0-4.fc18.noarch
Feb 04 16:40:45 Installed: python-EnvisageCore-3.1.3-4.fc18.noarch
Feb 04 16:40:46 Installed: libvoikko-3.5-2.fc18.i686
Feb 04 16:40:48 Installed: python-basemap-0.99.4-14.fc18.i686
Feb 04 16:40:49 Installed: mythes-1.2.3-2.fc18.i686
Feb 04 16:40:51 Installed: hippo-canvas-0.3.0-11.fc18.i686
Feb 04 16:40:51 Installed: hippo-canvas-python-0.3.0-11.fc18.i686
Feb 04 16:40:53 Installed: adns-1.4-13.fc18.i686
Feb 04 16:40:55 Installed: volume_key-libs-0.3.9-2.fc18.i686
Feb 04 16:40:56 Installed: pyxattr-0.5.1-2.fc18.i686
Feb 04 16:40:58 Installed: libdrizzle-0.8-9.fc18.i686
Feb 04 16:40:59 Installed: python3-PyYAML-3.10-6.fc18.i686
Feb 04 16:41:03 Installed: libcdr-0.0.9-2.fc18.i686
Feb 04 16:41:06 Installed: freetds-0.91-5.gitf3ae29d.fc18.i686
Feb 04 16:41:08 Installed: libdiscid-0.2.2-7.fc18.i686
Feb 04 16:41:09 Installed: libwps-0.2.7-3.fc18.i686
Feb 04 16:41:10 Installed: libntlm-1.3-3.fc18.i686
Feb 04 16:41:11 Installed: libgsasl-1.8.0-1.fc18.i686
Feb 04 16:41:13 Installed: libvmime-0.9.2-0.4.20110626svn.fc18.i686
Feb 04 16:41:14 Installed: zarafa-client-7.0.9-1.fc18.i686
Feb 04 16:41:16 Installed: libmapi-7.0.9-1.fc18.i686
Feb 04 16:41:18 Installed: opengrm-ngram-1.0.3-1.fc18.i686
Feb 04 16:41:21 Installed: sphinxtrain-1.0.8-3.fc18.i686
Feb 04 16:41:22 Installed: notmuch-0.13.2-4.fc18.i686
Feb 04 16:41:23 Installed: python-sysv_ipc-0.4.2-7.fc18.i686
Feb 04 16:41:25 Installed: recode-3.6-34.fc18.i686
Feb 04 16:41:26 Installed: polkit-qt-0.103.0-4.fc18.i686
Feb 04 16:41:27 Installed: python3-psycopg2-2.4.5-6.fc18.i686
Feb 04 16:41:30 Installed: wise2-2.2.0-10.fc18.i686
Feb 04 16:41:31 Installed: tre-0.8.0-6.fc18.i686
Feb 04 16:41:34 Installed: pybox2d-2.0.2b2-8.fc18.i686
Feb 04 16:41:37 Installed: libcmis-0.2.3-3.fc18.i686
Feb 04 16:41:38 Installed: radiusclient-ng-0.5.6-8.fc18.i686
Feb 04 16:41:39 Installed: radiusclient-ng-utils-0.5.6-8.fc18.i686
Feb 04 16:41:42 Installed: python-cvxopt-1.1.5-5.fc18.i686
Feb 04 16:41:43 Installed: qtsoap-2.7-4.fc18.i686
Feb 04 16:41:44 Installed: herqq-1.0.0-4.fc18.i686
Feb 04 16:41:46 Installed: libvisio-0.0.24-1.fc18.i686
Feb 04 16:41:49 Installed: flite-1.3-18.fc18.i686
Feb 04 16:41:56 Installed: python-test-2.7.3-13.fc18.i686
Feb 04 16:41:59 Installed: python-debug-2.7.3-13.fc18.i686
Feb 04 16:42:00 Installed: erlang-asn1-R15B-03.2.fc18.i686
Feb 04 16:42:01 Installed: erlang-public_key-R15B-03.2.fc18.i686
Feb 04 16:42:01 Installed: erlang-ssl-R15B-03.2.fc18.i686
Feb 04 16:42:02 Installed: erlang-inets-R15B-03.2.fc18.i686
Feb 04 16:42:03 Installed: erlang-mochiweb-1.4.1-7.fc18.i686
Feb 04 16:42:04 Installed: erlang-appmon-R15B-03.2.fc18.i686
Feb 04 16:42:05 Installed: erlang-webtool-R15B-03.2.fc18.i686
Feb 04 16:42:06 Installed: erlang-observer-R15B-03.2.fc18.i686
Feb 04 16:42:06 Installed: erlang-oauth-1.1.1-2.fc18.i686
Feb 04 16:42:08 Installed: erlang-tools-R15B-03.2.fc18.i686
Feb 04 16:42:08 Installed: erlang-sasl-R15B-03.2.fc18.i686
Feb 04 16:42:09 Installed: erlang-ibrowse-2.2.0-6.fc18.i686
Feb 04 16:42:12 Installed: erlang-os_mon-R15B-03.2.fc18.i686
Feb 04 16:42:13 Installed: shapelib-1.3.0b2-9.1.fc18.i686
Feb 04 16:42:14 Installed: redland-virtuoso-1.0.15-2.fc18.i686
Feb 04 16:42:16 Installed: soprano-2.8.0-4.fc18.i686
Feb 04 16:42:26 Installed: 6:kdelibs-4.9.5-2.fc18.i686
Feb 04 16:42:27 Installed: nepomuk-core-libs-4.9.5-1.fc18.i686
Feb 04 16:42:28 Installed: nepomuk-core-4.9.5-1.fc18.i686
Feb 04 16:42:33 Installed: python3-pykde4-4.9.5-1.fc18.i686
Feb 04 16:42:34 Installed: kdepimlibs-kxmlrpcclient-4.9.5-1.fc18.i686
Feb 04 16:42:37 Installed: kdepimlibs-4.9.5-1.fc18.i686
Feb 04 16:42:40 Installed: kate-part-4.9.5-1.fc18.i686
Feb 04 16:42:44 Installed: pykde4-4.9.5-1.fc18.i686
Feb 04 16:42:48 Installed: kactivities-4.9.5-1.fc18.i686
Feb 04 16:42:49 Installed: akonadi-1.8.1-1.fc18.i686
Feb 04 16:42:52 Installed: kdepimlibs-akonadi-4.9.5-1.fc18.i686
Feb 04 16:42:53 Installed: libkolab-0.3.1-3.fc18.i686
Feb 04 16:42:54 Installed: python3-pykde4-akonadi-4.9.5-1.fc18.i686
Feb 04 16:42:55 Installed: avahi-ui-tools-0.6.31-6.fc18.i686
Feb 04 16:42:58 Installed: iguanaIR-1.0.3-1.fc18.i686
Feb 04 16:43:00 Installed: libdb4-cxx-4.8.30-5.fc18.i686
Feb 04 16:43:02 Installed: arm4-0.8.2-11.fc18.i686
Feb 04 16:43:04 Installed: libexttextcat-3.3.1-2.fc18.i686
Feb 04 16:43:06 Installed: snappy-1.0.5-2.fc18.i686
Feb 04 16:43:07 Installed: erlang-snappy-1.0.3-0.2.git80db168.fc18.i686
Feb 04 16:43:10 Installed: couchdb-1.2.1-2.fc18.i686
Feb 04 16:43:11 Installed: python-couchdb-0.6.1-6.fc18.noarch
Feb 04 16:43:12 Installed: desktopcouch-1.0.7-3.fc18.noarch
Feb 04 16:43:14 Installed: python-desktopcouch-1.0.7-3.fc18.noarch
Feb 04 16:43:16 Updated: libpwquality-1.2.1-1.fc18.i686
Feb 04 16:43:18 Installed: libsmbios-2.2.28-7.fc18.i686
Feb 04 16:43:19 Installed: libnl3-cli-3.2.14-1.fc18.i686
Feb 04 16:43:23 Installed: libteam-0.1-24.20121212git01fe4bd.fc18.i686
Feb 04 16:43:24 Installed: python-protocols-1.0-0.16.a0dev_r2302.fc18.i686
Feb 04 16:43:26 Installed: python-ruledispatch-0.5a1-0.22.svnr2618.fc18.i686
Feb 04 16:43:27 Installed: liblockfile-1.08-14.fc18.i686
Feb 04 16:43:43 Installed: 1:emacs-common-24.2-5.fc18.i686
Feb 04 16:43:45 Installed: 1:emacs-nox-24.2-5.fc18.i686
Feb 04 16:43:46 Installed: emacs-pymacs-0.25-2.fc18.noarch
Feb 04 16:43:52 Installed: vtk-python-5.10.0-3.fc18.i686
Feb 04 16:43:54 Installed: tcl-snack-2.2.10-17.fc18.i686
Feb 04 16:43:56 Installed: openslp-1.2.1-17.fc18.i686
Feb 04 16:43:58 Installed: kde-runtime-drkonqi-4.9.5-1.fc18.i686
Feb 04 16:43:59 Installed: kde-runtime-flags-4.9.5-1.fc18.noarch
Feb 04 16:44:06 Installed: kde-runtime-4.9.5-1.fc18.i686
Feb 04 16:44:09 Installed: kde-runtime-libs-4.9.5-1.fc18.i686
Feb 04 16:44:12 Installed: 1:marble-libs-4.9.5-1.fc18.i686
Feb 04 16:44:18 Installed: 1:marble-4.9.5-1.fc18.i686
Feb 04 16:44:20 Installed: python-urwid-1.1.1-1.fc18.i686
Feb 04 16:44:22 Installed: libtidy-0.99.0-26.20091203.fc18.i686
Feb 04 16:44:23 Installed: openhpi-libs-3.2.0-1.fc18.i686
Feb 04 16:44:24 Installed: python-netifaces-0.5-3.fc18.i686
Feb 04 16:44:25 Installed: poppler-qt-0.20.2-9.fc18.i686
Feb 04 16:44:27 Installed: miniupnpc-1.6-7.fc18.i686
Feb 04 16:44:28 Installed: libmemcached-1.0.8-2.fc18.i686
Feb 04 16:44:29 Installed: graphite2-1.1.1-3.fc18.i686
Feb 04 16:44:35 Installed: 1:libreoffice-writer-3.6.3.2-8.fc18.i686
Feb 04 16:45:13 Installed: 1:libreoffice-core-3.6.3.2-8.fc18.i686
Feb 04 16:45:14 Installed: 1:libreoffice-pyuno-3.6.3.2-8.fc18.i686
Feb 04 16:45:16 Installed: guichan-0.8.2-4.fc18.i686
Feb 04 16:45:17 Installed: osm-gps-map-0.7.3-6.fc18.i686
Feb 04 16:45:19 Installed: gtk+extra-2.1.2-10.fc18.i686
Feb 04 16:45:21 Installed: libglademm24-2.6.7-7.fc18.i686
Feb 04 16:45:24 Updated: brltty-4.3-12.fc18.i686
Feb 04 16:45:26 Updated: brlapi-0.5.6-12.fc18.i686
Feb 04 16:45:28 Installed: spatialindex-1.7.1-3.fc18.i686
Feb 04 16:45:31 Installed: PyXML-0.8.4-28.fc18.i686
Feb 04 16:45:33 Installed: python-ZSI-2.1-2.fc18.noarch
Feb 04 16:45:34 Installed: python-Rtree-0.7.0-2.fc18.noarch
Feb 04 16:45:37 Installed: python-visual-5.72-6.fc18.i686
Feb 04 16:45:38 Installed: python-gtkextra-1.1.0-20.fc18.i686
Feb 04 16:45:40 Installed: python-osmgpsmap-0.7.3-7.fc18.i686
Feb 04 16:45:43 Installed: python-openoffice-0.1-0.10.20090228svn34.fc18.noarch
Feb 04 16:45:49 Installed: 1:libreoffice-langpack-zh-Hans-3.6.3.2-8.fc18.i686
Feb 04 16:45:51 Installed: python-pylibmc-1.2.0-9.20110805gitf01c31.fc18.i686
Feb 04 16:45:52 Installed: python-poppler-qt4-0.16.2-5.fc18.i686
Feb 04 16:45:53 Installed: python-phacter-0.2.0-4.fc18.noarch
Feb 04 16:45:54 Installed: python-tidy-0.2-11.fc18.noarch
Feb 04 16:45:55 Installed: 1:python-configshell-1.1.fb6-1.fc18.noarch
Feb 04 16:45:56 Installed: python-snack-2.2.10-17.fc18.i686
Feb 04 16:46:01 Installed: python-cclib-1.0.1-3.fc18.noarch
Feb 04 16:46:02 Installed: python-ropemacs-0.7-1.fc18.noarch
Feb 04 16:46:03 Installed: python-tgfastdata-0.9a7-0.3.a7.fc18.noarch
Feb 04 16:46:05 Installed: python-libteam-0.1-24.20121212git01fe4bd.fc18.i686
Feb 04 16:46:06 Installed: python-smbios-2.2.28-7.fc18.i686
Feb 04 16:46:07 Installed: python-couchdb-devel-0.6.1-6.fc18.noarch
Feb 04 16:46:10 Installed: python3-pykde4-devel-4.9.5-1.fc18.i686
Feb 04 16:46:11 Installed: python-kolab-0.3.1-3.fc18.i686
Feb 04 16:46:12 Installed: python-django-simple-captcha-0.3.3-2.fc18.noarch
Feb 04 16:46:13 Installed: python-cvxopt-examples-1.1.5-5.fc18.noarch
Feb 04 16:46:17 Installed: python-sippy-1.0.3-6.fc18.noarch
Feb 04 16:46:18 Installed: python-elements-0.13-6.20100110svn.fc18.noarch
Feb 04 16:46:19 Installed: python-sysv_ipc-examples-0.4.2-7.fc18.i686
Feb 04 16:46:20 Installed: python-notmuch-0.13.2-4.fc18.noarch
Feb 04 16:46:21 Installed: python-MAPI-7.0.9-1.fc18.i686
Feb 04 16:46:23 Installed: python-musicbrainz2-0.7.0-5.fc18.noarch
Feb 04 16:46:26 Installed: python3-networkx-1.7-1.fc18.noarch
Feb 04 16:46:29 Installed: python-glance-2012.2.1-1.fc18.noarch
Feb 04 16:46:30 Installed: python-spiffgtkwidgets-0.2.0-3.59a713f.fc18.noarch
Feb 04 16:46:33 Installed: python-basemap-examples-0.99.4-14.fc18.i686
Feb 04 16:46:34 Installed: python-libvoikko-3.5-2.fc18.noarch
Feb 04 16:46:36 Installed: python-EnvisagePlugins-3.1.3-4.fc18.noarch
Feb 04 16:46:37 Installed: python-fiat-1.0.0-4.fc18.noarch
Feb 04 16:46:38 Installed: python-authhub-0.1.2-2.fc18.noarch
Feb 04 16:46:43 Installed: python-pivy-0.5.0-4.hg609.fc18.i686
Feb 04 16:46:43 Installed: python-ZODB3-devel-3.10.5-3.fc18.noarch
Feb 04 16:46:52 Installed: python-networkx-doc-1.7-1.fc18.noarch
Feb 04 16:46:53 Installed: python-pyside-devel-1.1.0-2.fc18.i686
Feb 04 16:46:57 Installed: python-pandas-0.10.0-1.fc18.i686
Feb 04 16:46:59 Installed: python-django-horizon-doc-2012.2.1-3.fc18.noarch
Feb 04 16:47:04 Installed: python-nova-2012.2.2-1.fc18.noarch
Feb 04 16:47:06 Installed: python-quantum-2012.2.1-1.fc18.noarch
Feb 04 16:47:07 Installed: 1:python-gnash-0.8.10-4.fc18.i686
Feb 04 16:47:08 Installed: python-storm-django-0.19-3.fc18.i686
Feb 04 16:47:09 Installed: python-lilv-0.14.4-1.fc18.i686
Feb 04 16:47:10 Installed: python-mwlib-docbook-0.1.0-4.fc18.noarch
Feb 04 16:47:11 Installed: python3-forensic1394-0.2-5.fc18.i686
Feb 04 16:47:12 Installed: python-forensic1394-0.2-5.fc18.i686
Feb 04 16:47:13 Installed: python-proteus-2.4.2-1.fc18.noarch
Feb 04 16:47:13 Installed: python-ogg-devel-1.3-17.i686
Feb 04 16:47:15 Updated: OpenImageIO-1.0.11-2.fc18.i686
Feb 04 16:47:17 Installed: python3-beautifulsoup4-4.1.3-1.fc18.noarch
Feb 04 16:47:17 Installed: python3-sieve-0.1.6-7.fc18.noarch
Feb 04 16:47:18 Installed: python-nitrate-0.9-0.fc18.noarch
Feb 04 16:47:19 Installed: python-urllib2_kerberos-0.1.6-7.fc18.noarch
Feb 04 16:47:20 Installed: python-zope-proxy-devel-3.6.1-7.fc18.noarch
Feb 04 16:47:21 Installed: python3-fdb-0.9.9-1.fc18.noarch
Feb 04 16:47:22 Installed: python-fdb-0.9.9-1.fc18.noarch
Feb 04 16:47:23 Installed: python3-cairo-devel-1.10.0-4.fc18.i686
Feb 04 16:47:24 Installed: python-storm-mysql-0.19-3.fc18.i686
Feb 04 16:47:24 Installed: python-storm-postgresql-0.19-3.fc18.i686
Feb 04 16:47:25 Installed: python3-matplotlib-qt4-1.2.0-8.fc18.i686
Feb 04 16:47:28 Installed: python-olpcgames-1.6-7.fc18.noarch
Feb 04 16:47:30 Installed: python-pgu-0.12.3-9.fc18.noarch
Feb 04 16:47:31 Installed: python-gasp-0.3.2-5.fc18.noarch
Feb 04 16:47:32 Installed: python-compositor-0.2b-6.fc18.noarch
Feb 04 16:47:33 Installed: python-ufo2fdk-0.1-6.fc18.noarch
Feb 04 16:47:36 Installed: 1:python-nltk-2.0.4-2.fc18.noarch
Feb 04 16:47:38 Installed: python-carrot-0.10.7-5.fc18.noarch
Feb 04 16:47:39 Installed: python-taboot-0.4.0-3.fc18.noarch
Feb 04 16:47:41 Installed: python3-h5py-2.1.0-1.fc18.i686
Feb 04 16:47:42 Installed: python3-ATpy-0.9.6-4.fc18.noarch
Feb 04 16:47:44 Installed: 1:python3-numpy-f2py-1.7.0-0.5.rc1.fc18.i686
Feb 04 16:47:46 Installed: python3-pyfits-3.1.1-1.fc18.i686
Feb 04 16:47:47 Installed: python3-asciitable-0.8.0-5.fc18.noarch
Feb 04 16:47:48 Installed: python-keystone-2012.2.1-1.fc18.noarch
Feb 04 16:47:52 Installed: python-cinder-2012.2.1-1.fc18.noarch
Feb 04 16:47:53 Installed: python-eventlet-doc-0.9.17-2.fc18.noarch
Feb 04 16:47:53 Installed: python-greenlet-devel-0.3.1-12.fc18.i686
Feb 04 16:47:54 Installed: python-anfft-0.2-2.fc18.noarch
Feb 04 16:47:56 Installed: python-numdisplay-1.5.6-6.fc18.noarch
Feb 04 16:47:57 Installed: python-asciitable-0.8.0-5.fc18.noarch
Feb 04 16:47:58 Installed: python-brlapi-0.5.6-12.fc18.i686
Feb 04 16:48:02 Installed: 2:python-fife-0.3.3r3-3.fc18.i686
Feb 04 16:48:03 Installed: python-miniupnpc-1.6-7.fc18.i686
Feb 04 16:48:04 Installed: python-openhpi-1.2-0.7.20120322svn7120.fc18.i686
Feb 04 16:48:05 Installed: 1:python-marble-4.9.5-1.fc18.i686
Feb 04 16:48:06 Updated: python-pwquality-1.2.1-1.fc18.i686
Feb 04 16:48:07 Installed: python-arm4-1.2-6.fc18.i686
Feb 04 16:48:08 Installed: python-iguanaIR-1.0.3-1.fc18.i686
Feb 04 16:48:09 Installed: python-psycopg2-debug-2.4.5-6.fc18.i686
Feb 04 16:48:10 Installed: python-tre-0.8.0-6.fc18.i686
Feb 04 16:48:15 Installed: python-biopython-1.60-1.fc18.i686
Feb 04 16:48:16 Installed: python3-psycopg2-debug-2.4.5-6.fc18.i686
Feb 04 16:48:17 Installed: python-bibtex-1.2.5-5.fc18.i686
Feb 04 16:48:19 Installed: python-sphinxtrain-1.0.8-3.fc18.i686
Feb 04 16:48:20 Installed: python-sybase-0.39-9.fc18.i686
Feb 04 16:48:22 Installed: python-drizzle-0.08.2-9.fc18.i686
Feb 04 16:48:23 Installed: python-volume_key-0.3.9-2.fc18.i686
Feb 04 16:48:24 Installed: python-adns-1.2.1-10.fc18.i686
Feb 04 16:48:25 Installed: python3-matplotlib-tk-1.2.0-8.fc18.i686
Feb 04 16:48:26 Installed: python-gammu-1.26.1-9.fc18.i686
Feb 04 16:48:28 Installed: python-polybori-0.8.2-5.fc18.i686
Feb 04 16:48:29 Installed: python-pysctp-0.3.1-13.fc18.i686
Feb 04 16:48:32 Installed: python-psycopg-1.1.21-17.fc18.i686
Feb 04 16:48:33 Installed: python-vorbis-1.5-0.11.a.i686
Feb 04 16:48:35 Installed: python-kaa-imlib2-0.2.3-13.fc18.i686
Feb 04 16:48:37 Installed: python-kaa-metadata-0.7.7-6.fc18.i686
Feb 04 16:48:38 Installed: python-libdmtx-0.7.2-8.fc18.i686
Feb 04 16:48:40 Installed: python-kinterbasdb-3.3.0-6.fc18.i686
Feb 04 16:48:42 Installed: python3-gobject-3.4.2-6.fc18.i686
Feb 04 16:48:44 Installed: python-gpod-0.8.2-7.fc18.i686
Feb 04 16:48:45 Installed: python-zfec-1.4.22-4.fc18.i686
Feb 04 16:48:47 Installed: python-gnutls-1.1.9-5.fc18.i686
Feb 04 16:48:48 Installed: python-GeoIP-1.2.5-0.6.20090931cvs.fc18.i686
Feb 04 16:48:50 Installed: python-CDDB-1.4-10.fc18.i686
Feb 04 16:48:51 Installed: python-schedutils-0.2-9.fc18.i686
Feb 04 16:48:51 Installed: python-hivex-1.3.7-2.fc18.i686
Feb 04 16:48:52 Installed: python-lzo-1.08-11.fc18.i686
Feb 04 16:48:54 Installed: python-meliae-0.4.0-3.fc18.i686
Feb 04 16:48:56 Installed: python-clearsilver-0.10.5-20.fc18.i686
Feb 04 16:48:57 Installed: python-mecab-0.994-1.fc18.1.i686
Feb 04 16:48:58 Installed: python-ctags-1.0.5-6.fc18.i686
Feb 04 16:48:59 Installed: python-lcms-1.19-7.fc18.i686
Feb 04 16:49:00 Installed: python-shout-0.2.1-8.fc18.i686
Feb 04 16:49:02 Installed: python-PSI-0.3-0.5.b2.fc18.i686
Feb 04 16:49:03 Installed: python-libasyncns-0.7.1-7.fc18.i686
Feb 04 16:49:04 Installed: python-perf-3.7.4-204.fc18.i686
Feb 04 16:49:06 Installed: python-lirc-0.0.5-14.fc18.i686
Feb 04 16:49:08 Installed: python-igraph-0.5.4-5.fc18.i686
Feb 04 16:49:09 Installed: python-openbabel-2.3.1-6.fc18.i686
Feb 04 16:49:10 Installed: 1:python-isomd5sum-1.0.9-2.fc18.i686
Feb 04 16:49:12 Installed: python-bitarray-0.3.5-6.fc18.i686
Feb 04 16:49:14 Installed: python-jinja-1.2-8.fc18.i686
Feb 04 16:49:15 Installed: python-posix_ipc-0.5.3-6.fc18.i686
Feb 04 16:49:16 Installed: python-xklavier-0.2-10.fc18.i686
Feb 04 16:49:17 Installed: python3-smbpasswd-1.0.1-21.fc18.i686
Feb 04 16:49:19 Installed: python3-urwid-1.1.1-1.fc18.i686
Feb 04 16:49:21 Installed: python-guppy-0.1.9-6.fc18.i686
Feb 04 16:49:22 Installed: python-meld3-0.6.7-6.fc18.i686
Feb 04 16:49:23 Installed: python-sexy-0.1.9-16.fc18.i686
Feb 04 16:49:24 Installed: python-isprelink-0.1.2-12.fc18.i686
Feb 04 16:49:25 Installed: python-yenc-0.3-12.fc18.i686
Feb 04 16:49:27 Installed: python-virtkey-0.50-12.fc18.i686
Feb 04 16:49:28 Installed: python-dmidecode-3.10.13-6.fc18.i686
Feb 04 16:49:29 Installed: python-chm-0.8.4-13.fc18.i686
Feb 04 16:49:32 Installed: python3-postgresql-1.0.2-4.fc18.i686
Feb 04 16:49:33 Installed: python-lvm-1.9.2-1.fc18.i686
Feb 04 16:49:36 Installed: python3-cvxopt-1.1.5-5.fc18.i686
Feb 04 16:49:37 Installed: python-imaging-sane-1.1.7-7.fc18.i686
Feb 04 16:49:38 Installed: python-daap-0.7.1-9.fc18.i686
Feb 04 16:49:39 Installed: python-alsaaudio-0.7-3.fc18.i686
Feb 04 16:49:42 Installed: python-gudev-147.2-3.fc18.i686
Feb 04 16:49:43 Installed: python-tag-0.94.8-5.fc18.i686
Feb 04 16:49:44 Installed: python-smbpasswd-1.0.1-21.fc18.i686
Feb 04 16:49:45 Installed: python-matplotlib-tk-1.2.0-8.fc18.i686
Feb 04 16:49:47 Installed: python-editdist-0.3-4.fc18.i686
Feb 04 16:49:48 Installed: python-kaa-display-0.1.0-7.fc18.i686
Feb 04 16:49:50 Installed: python-durus-3.9-4.fc18.i686
Feb 04 16:49:51 Installed: python3-deltarpm-3.6-0.11.20110223git.fc18.i686
Feb 04 16:49:52 Installed: python-cjson-1.0.5-9.fc18.i686
Feb 04 16:49:53 Installed: python-billiard-2.7.3.17-1.fc18.i686
Feb 04 16:49:55 Installed: python-obexftp-0.23-11.fc18.i686
Feb 04 16:49:56 Installed: python-numeric-24.2-18.fc18.i686
Feb 04 16:49:57 Installed: python-imaging-tk-1.1.7-7.fc18.i686
Feb 04 16:49:58 Installed: python-lash-0.5.4-17.fc18.i686
Feb 04 16:50:00 Installed: python-quixote-2.4-15.fc17.i686
Feb 04 16:50:02 Installed: python3-ptrace-0.6.4-2.fc18.i686
Feb 04 16:50:03 Installed: python-blist-1.3.4-3.fc18.i686
Feb 04 16:50:04 Installed: python-utmp-0.7-8.fc18.i686
Feb 04 16:50:08 Installed: python3-Cython-0.17.3-1.fc18.i686
Feb 04 16:50:10 Installed: python-ptrace-0.6.4-2.fc18.i686

#2013-02-05_16:39:18 
/usr/bin/yum
-y
install
android-tools*
Feb 05 16:42:28 Installed: android-tools-20121120git3ddc005-1.fc18.i686

#2013-02-05_16:46:37 
/usr/bin/yum
-y
install
abootimg
Feb 05 16:47:01 Installed: abootimg-0.6-6.20110830gitff8e759.fc18.i686

#2013-02-05_17:16:27 
/usr/bin/yum
-y
install
pinentry-gtk

#2013-02-05_17:28:24 
/usr/bin/yum
-y
install
dt
Feb 05 17:28:48 Installed: tcsh-6.18.00-3.fc18.i686
Feb 05 17:28:49 Installed: dt-17.66-1.fc18.i686

#2013-02-05_17:46:04 
/usr/bin/yum
-y
install
bonesi
Feb 05 17:46:27 Installed: libnet-1.1.6-4.fc18.i686
Feb 05 17:46:28 Installed: bonesi-0.2.0-4.fc18.i686

#2013-02-05_19:04:45 
/usr/bin/yum
-y
intall
netstat-nat

#2013-02-05_19:04:50 
/usr/bin/yum
-y
install
netstat-nat
Feb 05 19:05:08 Installed: netstat-nat-1.4.10-4.fc18.i686

#2013-02-05_19:07:28 
/usr/bin/yum
-y
intall

#2013-02-05_19:07:35 
/usr/bin/yum
-y
install
tcptrack
Feb 05 19:07:50 Installed: tcptrack-1.4.2-3.fc18.i686

#2013-02-05_19:21:20 
/usr/bin/yum
-y
install
nwipe
wipe
Feb 05 19:21:34 Installed: nwipe-0.10-1.fc18.i686
Feb 05 19:21:35 Installed: wipe-0.21-7.fc18.i686

#2013-02-05_19:24:56 
/usr/bin/yum
-y
--help

#2013-02-05_19:25:02 
/usr/bin/yum
-y
--help

#2013-02-05_19:25:14 
/usr/bin/yum
-y
groups

#2013-02-05_19:25:23 
/usr/bin/yum
-y
list
groups

#2013-02-05_19:25:57 
/usr/bin/yum
-y
groups
--help

#2013-02-05_19:26:10 
/usr/bin/yum
-y
groups
list

#2013-02-05_19:26:52 
/usr/bin/yum
-y
groups
list

#2013-02-05_19:27:30 
/usr/bin/yum
-y
list
group
Robotics

#2013-02-05_19:27:38 
/usr/bin/yum
-y
list
Robotics

#2013-02-05_19:27:47 
/usr/bin/yum
-y
list
group
Robotics

#2013-02-05_19:28:03 
/usr/bin/yum
-y
list
group
机器人学

#2013-02-05_19:28:10 
/usr/bin/yum
-y
list
group
机器人学

#2013-02-05_19:29:00 
/usr/bin/yum
-y
group
list
机器人学

#2013-02-05_19:29:05 
/usr/bin/yum
-y
group
list

#2013-02-05_19:29:15 
/usr/bin/yum
-y
group
list
GNOME Desktop

#2013-02-05_19:29:22 
/usr/bin/yum
-y
group
GNOME Desktop

#2013-02-05_19:29:29 
/usr/bin/yum
-y
group
info
GNOME Desktop

#2013-02-05_19:29:43 
/usr/bin/yum
-y
group
summary
GNOME Desktop

#2013-02-05_19:29:58 
/usr/bin/yum
-y
info
summary
fonts

#2013-02-05_19:30:15 
/usr/bin/yum
-y
group
info
fonts

#2013-02-05_20:14:21 
/usr/bin/yum
-y
install
tcputils
Feb 05 20:14:34 Installed: tcputils-0.6.2-10.fc18.i686

#2013-02-05_20:39:32 
/usr/bin/yum
-y
install
hunt
Feb 05 20:39:47 Installed: hunt-1.5-14.fc18.i686

#2013-02-05_20:44:03 
/usr/bin/yum
-y
install
SILLY
Feb 05 20:44:18 Installed: SILLY-0.1.0-12.fc18.i686

#2013-02-05_20:44:31 
/usr/bin/yum
-y
install
SILLY*
Feb 05 20:44:49 Installed: SILLY-devel-0.1.0-12.fc18.i686

#2013-02-05_22:25:15 
/usr/bin/yum
-y
install
collectl
Feb 05 22:25:33 Installed: collectl-3.6.5-1.fc18.noarch

#2013-02-05_22:31:11 
/usr/bin/yum
-y
install
sysstat
Feb 05 22:31:28 Installed: sysstat-10.1.2-2.fc18.i686

#2013-02-05_23:08:24 
/usr/bin/yum
-y
install
gtest*
Feb 05 23:09:09 Installed: gtest-1.6.0-1.fc18.i686
Feb 05 23:09:11 Installed: gtest-devel-1.6.0-1.fc18.i686

#2013-02-06_00:32:35 
/usr/bin/yum
-y
install
ruby%debug

#2013-02-06_00:33:07 
/usr/bin/yum
-y
install
rubygem-ruby-debug*
Feb 06 00:33:33 Installed: rubygem-linecache19-0.5.13-2.fc18.i686
Feb 06 00:33:34 Installed: rubygem-columnize-0.3.1-7.fc18.noarch
Feb 06 00:33:35 Installed: rubygem-ruby-debug-base19-0.11.26-3.fc18.i686
Feb 06 00:33:36 Installed: rubygem-ruby-debug19-0.11.6-3.fc18.noarch
Feb 06 00:33:37 Installed: rubygem-ruby-debug19-doc-0.11.6-3.fc18.noarch
Feb 06 00:33:38 Installed: rubygem-ruby-debug-base19-doc-0.11.26-3.fc18.noarch

#2013-02-06_01:05:56 
/usr/bin/yum
-y
install
cppunit*
Feb 06 01:06:41 Installed: cppunit-doc-1.12.1-8.fc18.i686
Feb 06 01:06:43 Installed: cppunit-1.12.1-8.fc18.i686
Feb 06 01:06:44 Installed: cppunit-devel-1.12.1-8.fc18.i686

#2013-02-06_01:12:27 
/usr/bin/yum
-y
group
info
LibreOffice

#2013-02-06_01:12:47 
/usr/bin/yum
-y
group
info
Sound and Video

#2013-02-06_01:13:13 
/usr/bin/yum
-y
group
info
system tools

#2013-02-06_01:13:44 
/usr/bin/yum
-y
install
zisofs

#2013-02-06_01:13:52 
/usr/bin/yum
-y
install
zisofs-tools
Feb 06 01:14:06 Installed: zisofs-tools-1.0.8-8.fc18.i686

#2013-02-06_01:18:17 
/usr/bin/yum
-y
install
snake*
Feb 06 01:18:42 Installed: snakeyaml-1.9-3.fc18.noarch
Feb 06 01:18:43 Installed: snakeyaml-javadoc-1.9-3.fc18.noarch
Feb 06 01:18:44 Installed: pax-3.4-14.fc18.i686
Feb 06 01:18:46 Installed: snake-0.11-4.0.20.fc18.noarch
Feb 06 01:18:47 Installed: snake-server-0.11-4.0.20.fc18.noarch

#2013-02-06_04:31:12 
/usr/bin/yum
-y
install
perf*
Feb 06 04:31:42 Installed: libibumad-1.3.8-1.fc18.i686
Feb 06 04:31:43 Installed: perftest-1.3.0-3.fc18.i686
Feb 06 04:31:45 Installed: perf-3.7.5-201.fc18.i686

#2013-02-06_04:38:18 
/usr/bin/yum
-y
install
libtopo*
Feb 06 04:38:36 Installed: libtopology-0.3-10.fc18.i686
Feb 06 04:38:36 Installed: libtopology-devel-0.3-10.fc18.i686
Feb 06 04:38:37 Installed: libtopology-doc-0.3-10.fc18.noarch

#2013-02-06_05:24:20 
/usr/bin/yum
-y
install
dstat
Feb 06 05:24:48 Installed: dstat-0.7.2-9.fc18.noarch

#2013-02-06_05:26:45 
/usr/bin/yum
-y
install
libgtop*
Feb 06 05:27:00 Installed: libgtop2-devel-2.28.4-3.fc18.i686

#2013-02-06_05:27:57 
/usr/bin/yum
-y
install
perl-GTop

#2013-02-06_06:15:40 
/usr/bin/yum
-y
install
oprofile*
Feb 06 06:15:54 Installed: oprofile-devel-0.9.8-1.fc18.i686
Feb 06 06:15:55 Installed: oprofile-jit-0.9.8-1.fc18.i686

#2013-02-06_20:47:39 
/usr/bin/yum
-y
install
yersinia
dhcping
dhcp_probe
dnsmasq-utils
Feb 06 20:48:30 Installed: dnsmasq-utils-2.65-1.fc18.i686
Feb 06 20:48:32 Installed: yersinia-0.7.1-10.fc18.i686
Feb 06 20:48:33 Installed: dhcping-1.2-7.fc18.i686
Feb 06 20:48:35 Installed: dhcp_probe-1.3.0-12.fc18.i686

#2013-02-06_21:30:39 
/usr/bin/yum
-y
install
glib*
Feb 06 21:32:46 Installed: libsigc++20-devel-2.2.11-1.fc18.i686
Feb 06 21:32:49 Installed: libsigc++20-doc-2.2.11-1.fc18.noarch
Feb 06 21:32:56 Updated: glibc-2.16-28.fc18.i686
Feb 06 21:33:19 Updated: glibc-common-2.16-28.fc18.i686
Feb 06 21:33:23 Updated: glibc-headers-2.16-28.fc18.i686
Feb 06 21:33:25 Updated: glibc-devel-2.16-28.fc18.i686
Feb 06 21:33:26 Installed: glibc-static-2.16-28.fc18.i686
Feb 06 21:33:32 Installed: glibmm24-doc-2.34.1-1.fc18.noarch
Feb 06 21:33:37 Updated: glib2-2.34.2-2.fc18.i686
Feb 06 21:33:40 Installed: glib2-doc-2.34.2-2.fc18.noarch
Feb 06 21:33:42 Updated: glib2-devel-2.34.2-2.fc18.i686
Feb 06 21:33:45 Installed: glibmm24-devel-2.34.1-1.fc18.i686
Feb 06 21:33:46 Installed: glibc-utils-2.16-28.fc18.i686

#2013-02-17_17:34:44 
/usr/bin/yum
-y
search
linux

#2013-02-17_17:40:30 
/usr/bin/yum
-y
instlal
libssh2*

#2013-02-17_17:40:33 
/usr/bin/yum
-y
install
libssh2*
Feb 17 17:42:47 Updated: libssh2-1.4.3-1.fc18.i686
Feb 17 17:42:48 Installed: libssh2-devel-1.4.3-1.fc18.i686
Feb 17 17:42:49 Installed: libssh2-docs-1.4.3-1.fc18.noarch
Feb 17 17:42:50 Installed: libssh2-python-0.7.1-5.fc18.i686

#2013-02-17_17:46:49 
/usr/bin/yum
-y
install
sshpass
Feb 17 17:47:01 Installed: sshpass-1.05-3.fc18.i686

#2013-02-17_19:29:09 
/usr/bin/yum
-y
install
libblkid*
Feb 17 19:30:37 Updated: libuuid-2.22.2-3.fc18.i686
Feb 17 19:30:38 Installed: libuuid-devel-2.22.2-3.fc18.i686
Feb 17 19:30:39 Updated: libblkid-2.22.2-3.fc18.i686
Feb 17 19:30:40 Updated: libmount-2.22.2-3.fc18.i686
Feb 17 19:30:41 Installed: libblkid-devel-2.22.2-3.fc18.i686
Feb 17 19:30:46 Updated: util-linux-2.22.2-3.fc18.i686

#2013-02-18_00:25:00 
/usr/bin/yum
-y
install
festival-freebsoft-utils.noarch
Feb 18 00:28:27 Installed: festival-speechtools-libs-1.2.96-21.fc18.i686
Feb 18 00:28:31 Installed: festival-lib-1.96-21.fc18.i686
Feb 18 00:28:32 Installed: festvox-slt-arctic-hts-0.20061229-21.fc18.noarch
Feb 18 00:28:37 Installed: festival-1.96-21.fc18.i686
Feb 18 00:28:40 Installed: sox-14.4.0-2.fc18.i686
Feb 18 00:28:42 Installed: festival-freebsoft-utils-0.10-4.fc18.noarch

#2013-02-18_00:38:54 
/usr/bin/yum
-y
install
octave*

#2013-02-18_00:49:57 
/usr/bin/yum
-y
install
libvisual*
elfelli
Feb 18 00:50:26 Installed: libvisual-devel-0.4.0-12.fc18.i686
Feb 18 00:50:29 Installed: elfelli-0.3.1-8.fc18.i686

#2013-02-18_01:06:38 
/usr/bin/yum
-y
install
libtwin*
Feb 18 01:06:55 Installed: libtwin-0.0.3-7.fc18.i686
Feb 18 01:06:56 Installed: libtwin-devel-0.0.3-7.fc18.i686
Feb 18 01:06:56 Installed: libtwin-static-0.0.3-7.fc18.i686

#2013-02-18_01:24:45 
/usr/bin/yum
-y
install
dtrx
Feb 18 01:26:57 Installed: ncompress-4.2.4-58.fc18.i686
Feb 18 01:26:58 Installed: xz-lzma-compat-5.1.2-2alpha.fc18.i686
Feb 18 01:27:00 Installed: p7zip-plugins-9.20.1-4.fc18.i686
Feb 18 01:27:03 Installed: dpkg-1.15.5.6-9.fc18.i686
Feb 18 01:27:06 Installed: unshield-0.6-5.fc18.i686
Feb 18 01:27:07 Installed: libmspack-0.3-0.3.alpha.fc18.i686
Feb 18 01:27:08 Installed: cabextract-1.4-3.fc18.i686
Feb 18 01:27:09 Installed: dtrx-7.1-3.fc18.noarch

#2013-02-18_01:33:03 
/usr/bin/yum
-y
install
etherbat
Feb 18 01:33:16 Installed: etherbat-1.0.1-12.fc18.i686

#2013-02-18_04:12:17 
/usr/bin/yum
-y
install
cmusphinx3*
sphinx*
pocketsphinx*
Feb 18 04:27:30 Installed: cmusphinx3-libs-0.8-13.fc18.i686
Feb 18 04:27:35 Installed: pocketsphinx-libs-0.8-1.fc18.i686
Feb 18 04:27:45 Installed: sphinxbase-devel-0.8-1.fc18.i686
Feb 18 04:27:48 Installed: cmusphinx3-devel-0.8-13.fc18.i686
Feb 18 04:27:52 Installed: pocketsphinx-devel-0.8-1.fc18.i686
Feb 18 04:28:01 Installed: cmusphinx3-doc-0.8-13.fc18.i686
Feb 18 04:28:02 Installed: sphinx-java-2.0.3-2.fc18.i686
Feb 18 04:28:05 Installed: sphinx-webtools-0.2.1-20120521.hg86a2eac02afe.fc18.noarch
Feb 18 04:28:08 Installed: sphinx-php-2.0.3-2.fc18.i686
Feb 18 04:28:18 Updated: openfst-1.3.3-1.fc18.i686
Feb 18 04:28:23 Updated: opengrm-ngram-1.0.3-2.fc18.i686
Feb 18 04:28:31 Updated: sphinxtrain-1.0.8-4.fc18.i686
Feb 18 04:28:35 Updated: python-sphinxtrain-1.0.8-4.fc18.i686
Feb 18 04:28:37 Installed: pocketsphinx-python-0.8-1.fc18.i686
Feb 18 04:28:49 Installed: pocketsphinx-0.8-1.fc18.i686
Feb 18 04:28:51 Installed: pocketsphinx-plugin-0.8-1.fc18.i686
Feb 18 04:28:53 Installed: cmusphinx3-python-0.8-13.fc18.i686
Feb 18 04:29:09 Installed: cmusphinx3-0.8-13.fc18.i686
Feb 18 04:29:11 Installed: sphinxbase-0.8-1.fc18.i686
Feb 18 04:29:21 Installed: sphinx-2.0.3-2.fc18.i686

#2013-02-18_04:35:03 
/usr/bin/yum
-y
install
pari*
Feb 18 04:44:38 Installed: pari-elldata-20120415-6.fc18.noarch
Feb 18 04:44:43 Installed: pari-galdata-20080411-4.fc18.noarch
Feb 18 04:44:55 Installed: pari-seadata-20090618-4.fc18.noarch
Feb 18 04:45:01 Installed: pari-2.5.3-1.fc18.i686
Feb 18 04:45:43 Installed: evince-3.6.1-2.fc18.i686
Feb 18 04:45:45 Installed: pari-devel-2.5.3-1.fc18.i686
Feb 18 04:45:52 Installed: pari-gp-2.5.3-1.fc18.i686
Feb 18 04:45:56 Installed: paris-traceroute-0.92-2.fc18.i686

#2013-02-17_21:26:31 
/usr/bin/yum
-y
install
gap

#2013-02-18_20:40:40 
/usr/bin/yum
-y
install
chm*
Feb 18 20:41:27 Installed: t1utils-1.37-3.fc18.i686
Feb 18 20:41:29 Installed: chmlib-devel-0.40-6.fc18.i686
Feb 18 20:41:30 Installed: ttf2pt1-3.4.4-12.fc18.i686
Feb 18 20:41:51 Installed: htmldoc-1.8.27-20.fc18.i686
Feb 18 20:41:52 Installed: chm2pdf-0.9.1-12.fc18.noarch
Feb 18 20:41:58 Installed: chmsee-2.0-1.git91c40fef.fc18.i686

#2013-02-18_23:32:23 
/usr/bin/yum
-y
install
anaconda*

#2013-02-19_00:17:35 
/usr/bin/yum
-y
install
gvnc-tools
Feb 19 00:19:09 Installed: gvnc-tools-0.5.1-5.fc18.i686

#2013-02-19_02:01:50 
/usr/bin/yum
-y
install
gjots2.noarch
kdissert
vym
semantik
Feb 19 02:06:47 Installed: 1:kde-i18n-3.5.10-17.fc18.noarch
Feb 19 02:06:58 Installed: 8:arts-1.5.10-17.fc18.i686
Feb 19 02:07:00 Installed: 1:kde-i18n-Chinese-3.5.10-17.fc18.noarch
Feb 19 02:07:03 Installed: gjots2-2.3.15-3.fc18.noarch
Feb 19 02:07:35 Installed: kdelibs3-3.5.10-42.fc18.i686
Feb 19 02:07:38 Installed: kdissert-1.0.7-11.fc18.i686
Feb 19 02:07:41 Installed: semantik-0.8.3-2.fc18.i686
Feb 19 02:08:14 Installed: vym-2.3.11-1.fc18.i686

#2013-02-19_19:13:36 
/usr/bin/yum
-y
install
figlet
Feb 19 19:15:27 Installed: figlet-2.2.5-2.fc18.i686

#2013-02-19_17:04:21 
/usr/bin/yum
-y
install
why*

#2013-02-19_17:21:54 
/usr/bin/yum
-y
install
findthatword
Feb 19 17:23:22 Installed: findthatword-0.1-6.fc18.noarch

#2013-02-19_20:57:32 
/usr/bin/yum
-y
install
pyGTK

#2013-02-20_10:03:30 
/usr/bin/yum
-y
install
BackupPc

#2013-02-20_10:18:59 
/usr/bin/yum
-y
install
BackupPC
Feb 20 10:20:32 Installed: BackupPC-3.2.1-11.fc18.i686

#2013-02-20_15:07:20 
/usr/bin/yum
-y
install
mathomatic*
Feb 20 15:09:29 Installed: mathomatic-16.0.5-2.fc18.i686
Feb 20 15:09:32 Installed: mathomatic-tools-16.0.5-2.fc18.i686

#2013-02-21_14:28:39 
/usr/bin/yum
-y
install
sheepdog*

#2013-02-22_11:18:02 
/usr/bin/yum
-y
install
mingw64-gvnc-tools

#2013-02-22_12:20:55 
/usr/bin/yum
-y
install
xmlstarlet*
Feb 22 12:22:14 Installed: xmlstarlet-1.3.1-3.fc18.i686

#2013-02-25_09:48:43 
/usr/bin/yum
-y
install
hdparm

#2013-02-25_09:48:58 
/usr/bin/yum
-y
install
hdparm

#2013-02-25_09:49:11 
/usr/bin/yum
-y
install
hdparm
Feb 25 09:50:15 Installed: hdparm-9.42-1.fc18.i686

#2013-02-25_10:50:38 
/usr/bin/yum
-y
install
gap

#2013-02-25_12:48:50 
/usr/bin/yum
-y
install
gap*
Feb 25 12:52:50 Installed: ocaml-camlp5-6.07-1.fc18.i686
Feb 25 12:52:52 Installed: gap-xemacs-4.5.7-1.fc18.noarch
Feb 25 12:52:52 Installed: gap-emacs-4.5.7-1.fc18.noarch
Feb 25 12:52:59 Installed: gap-table-of-marks-1.2.2-3.fc18.noarch
Feb 25 12:53:03 Installed: gap-character-tables-1.2.1-1.fc18.noarch
Feb 25 12:53:03 Installed: gap-emacs-el-4.5.7-1.fc18.noarch
Feb 25 12:53:04 Installed: gap-xemacs-el-4.5.7-1.fc18.noarch
Feb 25 12:53:06 Installed: gap-devel-4.5.7-1.fc18.i686
Feb 25 12:53:44 Installed: gap-sonata-2.6-1.fc18.noarch
Feb 25 12:53:44 Installed: gap-vim-4.5.7-1.fc18.noarch
Feb 25 12:53:46 Installed: gappa-0.16.3-1.fc18.i686
Feb 25 12:53:47 Installed: csdp-tools-6.1.1-3.fc18.i686
Feb 25 12:54:22 Installed: coq-8.4pl1-1.fc18.i686
Feb 25 12:54:24 Installed: flocq-2.1.0-3.fc18.i686
Feb 25 12:54:25 Installed: gappalib-coq-0.18.0-6.fc18.i686
Feb 25 12:54:26 Installed: gappalib-coq-source-0.18.0-6.fc18.i686
Feb 25 12:54:27 Installed: gap-Browse-1.8.2-2.fc18.i686
Feb 25 12:55:04 Installed: gap-io-4.2-2.fc18.i686

#2013-02-25_13:07:40 
/usr/bin/yum
-y
install
gmp

#2013-02-25_13:07:44 
/usr/bin/yum
-y
install
gmp*
Feb 25 13:08:18 Installed: libmpd-0.20.0-4.fc18.i686
Feb 25 13:08:20 Installed: gmp-ecm-libs-6.4.3-1.fc18.i686
Feb 25 13:08:21 Installed: gmp-ecm-devel-6.4.3-1.fc18.i686
Feb 25 13:08:22 Installed: libmpd-devel-0.20.0-4.fc18.i686
Feb 25 13:08:23 Installed: gmp-ecm-static-6.4.3-1.fc18.i686
Feb 25 13:08:24 Installed: gmpy-1.15-2.fc18.i686
Feb 25 13:08:25 Installed: 1:gmp-static-5.0.5-3.fc18.i686
Feb 25 13:08:49 Installed: gmpc-0.20.0-7.fc18.i686
Feb 25 13:08:49 Installed: gmpc-devel-0.20.0-7.fc18.i686
Feb 25 13:08:50 Installed: gmp-ecm-6.4.3-1.fc18.i686

#2013-02-25_13:40:51 
/usr/bin/yum
-y
install
pdf-tools

#2013-02-25_13:42:45 
/usr/bin/yum
-y
install
pdftk
Feb 25 13:43:15 Installed: javamail-1.4.3-12.fc18.noarch
Feb 25 13:43:16 Installed: bouncycastle-mail-1.46-6.fc18.noarch
Feb 25 13:43:17 Installed: bouncycastle-tsp-1.46-5.fc18.noarch
Feb 25 13:43:18 Installed: itext-core-2.1.7-14.fc18.noarch
Feb 25 13:43:22 Installed: itext-2.1.7-14.fc18.i686
Feb 25 13:43:22 Installed: pdftk-1.44-10.fc18.i686

#2013-02-25_13:43:29 
/usr/bin/yum
-y
install
poppler*
Feb 25 13:43:55 Installed: poppler-devel-0.20.2-9.fc18.i686
Feb 25 13:43:56 Installed: poppler-sharp-0.0.3-3.fc18.noarch
Feb 25 13:43:58 Installed: poppler-cpp-0.20.2-9.fc18.i686
Feb 25 13:43:58 Installed: poppler-cpp-devel-0.20.2-9.fc18.i686
Feb 25 13:43:58 Installed: poppler-sharp-devel-0.0.3-3.fc18.noarch
Feb 25 13:43:59 Installed: poppler-qt-devel-0.20.2-9.fc18.i686
Feb 25 13:44:00 Installed: poppler-glib-devel-0.20.2-9.fc18.i686
Feb 25 13:44:01 Installed: poppler-demos-0.20.2-9.fc18.i686

#2013-02-27_08:24:08 
/usr/bin/yum
-y
install
python-networkx*

#2013-02-27_10:52:50 
/usr/bin/yum
-y
install
msort
Feb 27 10:53:55 Installed: itcl-3.4-9.fc18.i686
Feb 27 10:53:56 Installed: itk-3.4-8.fc18.i686
Feb 27 10:53:58 Installed: iwidgets-4.0.2-8.fc18.noarch
Feb 27 10:54:02 Installed: libuninum-2.7-11.fc18.1.i686
Feb 27 10:54:03 Installed: msort-8.53-9.fc18.i686

#2013-02-28_01:23:03 
/usr/bin/yum
-y
list

#2013-02-28_02:18:40 
/usr/bin/yum
-y
install
openvswitch*
Feb 28 02:20:21 Updated: python-openvswitch-1.7.3-7.fc18.noarch
Feb 28 02:20:26 Installed: openvswitch-1.7.3-7.fc18.i686
Feb 28 02:20:27 Installed: openvswitch-test-1.7.3-7.fc18.noarch
Feb 28 02:20:28 Installed: openvswitch-controller-1.7.3-7.fc18.i686

#2013-02-28_09:21:50 
/usr/bin/yum
-y
install
perl-Crypt*

#2013-02-28_19:03:46 
/usr/bin/yum
-y
install
otx

#2013-02-28_19:03:49 
/usr/bin/yum
-y
install
ots

#2013-02-28_19:05:29 
/usr/bin/yum
-y
install
ots
Feb 28 19:06:52 Installed: ots-libs-0.5.0-6.fc18.i686
Feb 28 19:06:54 Installed: ots-0.5.0-6.fc18.i686

#2013-02-28_16:11:05 
/usr/bin/yum
-y
install
cddlib

#2013-02-28_16:11:28 
/usr/bin/yum
-y
install
cddlib*
Feb 28 16:13:04 Installed: cddlib-devel-094g-7.fc18.i686
Feb 28 16:13:05 Installed: cddlib-static-094g-7.fc18.i686

#2013-02-28_16:31:15 
/usr/bin/yum
-y
install
ginac*
Feb 28 16:31:45 Installed: cln-devel-1.3.2-5.fc18.1.i686
Feb 28 16:31:48 Installed: ginac-devel-1.6.2-3.fc18.i686
Feb 28 16:31:50 Installed: ginac-utils-1.6.2-3.fc18.i686

#2013-02-28_16:52:27 
/usr/bin/yum
-y
install
re2c
Feb 28 16:53:11 Installed: re2c-0.13.5-5.fc18.i686

#2013-02-28_17:21:07 
/usr/bin/yum
-y
install
sympol
Feb 28 17:21:37 Installed: bliss-libs-0.72-5.fc18.i686
Feb 28 17:21:39 Installed: sympol-libs-0.1.8-2.fc18.i686
Feb 28 17:21:41 Installed: sympol-0.1.8-2.fc18.i686

#2013-02-28_17:45:30 
/usr/bin/yum
-y
install
Singular*
Feb 28 17:46:44 Installed: factory-devel-3.1.5-3.fc18.i686
Feb 28 17:46:46 Installed: surf-geometry-1.0.6-5.fc18.i686
Feb 28 17:46:53 Installed: Singular-3.1.5-3.fc18.i686
Feb 28 17:46:58 Installed: Singular-doc-3.1.5-3.fc18.i686
Feb 28 17:46:58 Installed: Singular-surfex-3.1.5-3.fc18.i686
Feb 28 17:47:03 Installed: Singular-examples-3.1.5-3.fc18.i686
Feb 28 17:47:04 Installed: Singular-devel-3.1.5-3.fc18.i686
Feb 28 17:47:05 Installed: Singular-emacs-3.1.5-3.fc18.i686

#2013-02-28_18:55:59 
/usr/bin/yum
-y
install
yacas

#2013-02-28_18:57:32 
/usr/bin/yum
-y
install
scilib*

#2013-02-28_18:57:49 
/usr/bin/yum
-y
install
scilab*
Feb 28 19:05:38 Installed: apache-commons-logging-1.1.1-20.fc18.noarch
Feb 28 19:05:39 Installed: jlatexmath-1.0.0-2.fc18.noarch
Feb 28 19:05:40 Installed: 1:apache-commons-io-2.4-2.fc18.noarch
Feb 28 19:05:41 Installed: xmlgraphics-commons-1.4-6.fc18.noarch
Feb 28 19:05:42 Installed: jcip-annotations-1-5.20060626.fc18.noarch
Feb 28 19:05:43 Installed: guice-parent-3.1.2-6.fc18.noarch
Feb 28 19:05:43 Installed: javahelp2-2.0.05-12.fc18.noarch
Feb 28 19:05:44 Installed: log4j-1.2.17-3.fc18.noarch
Feb 28 19:05:45 Installed: beust-jcommander-1.30-2.fc18.2.noarch
Feb 28 19:05:46 Installed: sac-1.3-13.fc18.noarch
Feb 28 19:05:47 Installed: jai-imageio-core-1.2-0.11.20100217cvs.fc18.noarch
Feb 28 19:05:50 Installed: batik-1.8-0.5.svn1230816.fc18.noarch
Feb 28 19:06:07 Installed: jeuclid-3.1.3-17.fc18.noarch
Feb 28 19:06:08 Installed: jgraphx-1.9.2.5-2.fc18.noarch
Feb 28 19:06:09 Installed: jrosetta-1.0.4-3.fc18.noarch
Feb 28 19:06:09 Installed: jsr-305-0-0.10.20090319svn.fc18.noarch
Feb 28 19:06:11 Installed: guava-13.0-1.fc18.noarch
Feb 28 19:06:12 Installed: geronimo-jms-1.1.1-12.fc18.noarch
Feb 28 19:06:12 Installed: avalon-logkit-2.1-9.fc18.noarch
Feb 28 19:06:13 Installed: avalon-framework-4.3-7.fc18.noarch
Feb 28 19:06:14 Installed: objectweb-asm-3.3.1-4.fc18.noarch
Feb 28 19:06:15 Installed: cglib-2.2-14.fc18.noarch
Feb 28 19:06:15 Installed: apache-commons-codec-1.6-5.fc18.noarch
Feb 28 19:06:16 Installed: 1:jakarta-commons-httpclient-3.1-12.fc18.noarch
Feb 28 19:06:18 Installed: fop-1.0-20.fc18.noarch
Feb 28 19:06:18 Installed: jlatexmath-fop-1.0.0-2.fc18.noarch
Feb 28 19:06:19 Installed: aopalliance-1.0-3.fc18.noarch
Feb 28 19:06:19 Installed: atinject-1-8.20100611svn86.fc18.noarch
Feb 28 19:06:20 Installed: google-guice-3.1.2-6.fc18.noarch
Feb 28 19:06:21 Installed: testng-6.8-1.fc18.noarch
Feb 28 19:06:22 Installed: gluegen2-2.0-0.4.rc10.fc18.i686
Feb 28 19:06:24 Installed: jogl2-2.0-0.4.rc10.fc18.i686
Feb 28 19:06:24 Installed: scirenderer-1.0.2-4.fc18.noarch
Feb 28 19:06:26 Installed: matio-1.5.0-5.fc18.i686
Feb 28 19:06:28 Installed: jhdf5-2.8-7.fc18.i686
Feb 28 19:06:57 Installed: scilab-5.4.0-1.fc18.i686
Feb 28 19:07:26 Installed: scilab-tests-5.4.0-1.fc18.noarch
Feb 28 19:07:43 Installed: scilab-doc-5.4.0-1.fc18.noarch
Feb 28 19:07:44 Installed: scilab-devel-5.4.0-1.fc18.i686

#2013-02-28_19:23:21 
/usr/bin/yum
-y
install
saxon
Feb 28 19:23:45 Installed: bea-stax-1.2.0-4.fc18.noarch
Feb 28 19:23:45 Installed: bea-stax-api-1.2.0-4.fc18.noarch
Feb 28 19:23:46 Installed: saxon-9.3.0.4-5.fc18.noarch

#2013-03-01_14:40:34 
/usr/bin/yum
-y
install
ceph*
Mar 01 14:44:01 Installed: ceph-obsync-0.46-1.fc18.i686
Mar 01 14:44:05 Installed: libunwind-1.0.1-4.fc18.i686
Mar 01 14:44:07 Installed: gperftools-libs-2.0-7.fc18.i686
Mar 01 14:44:09 Installed: ceph-libcephfs-0.46-1.fc18.i686
Mar 01 14:44:16 Installed: ceph-0.46-1.fc18.i686
Mar 01 14:44:18 Installed: ceph-devel-0.46-1.fc18.i686
Mar 01 14:44:20 Installed: mod_fcgid-2.3.7-5.fc18.i686
Mar 01 14:44:22 Installed: fcgi-2.4.0-19.fc18.i686
Mar 01 14:44:23 Installed: ceph-radosgw-0.46-1.fc18.i686
Mar 01 14:44:24 Installed: ceph-fuse-0.46-1.fc18.i686
Mar 01 14:44:26 Installed: ceph-gcephtool-0.46-1.fc18.i686

#2013-03-04_15:17:43 
/usr/bin/yum
-y
install
undertaker
Mar 04 15:25:13 Installed: sparse-0.4.4-4.fc18.i686
Mar 04 15:25:17 Installed: picosat-libs-951-1.fc18.i686
Mar 04 15:25:19 Installed: undertaker-1.2-8.fc18.i686

#2013-03-04_22:08:49 
/usr/bin/yum
-y
install
gifsicle
Mar 04 22:12:39 Installed: gifsicle-1.67-2.fc18.i686

#2013-03-05_17:15:34 
/usr/bin/yum
-y
install
expect

#2013-03-05_17:20:01 
/usr/bin/yum
-y
install
expect

#2013-03-05_17:30:40 
/usr/bin/yum
-y
install
expect
Mar 05 17:30:59 Installed: expect-5.45-7.fc18.i686

#2013-03-06_13:59:26 
/usr/bin/yum
-y
uninstall
sshpass

#2013-03-06_13:59:51 
/usr/bin/yum
-y
install
sshpass
Mar 06 14:03:35 Installed: sshpass-1.05-3.fc18.i686

#2013-03-07_09:55:32 
/usr/bin/yum
install
gdb
xinetd
tftp
tftp-server
libpng
libusb
libusb-devel
Mar 07 10:00:38 Updated: gdb-7.5.1-36.fc18.i686

