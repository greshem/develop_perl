rpm --ivh subversion-1.4.2-4.el5_3.1.i386.rpm 
rpm --ivh apr-1.2.7-11.el5_3.1.i386.rpm 
rpm -ivh apr-1.2.7-11.el5_3.1.i386.rpm 
rpm --ivh apr-1.2.7-11.el5_3.1.i386.rpm 
rpm -ivh apr-util-1.2.7-7.el5_3.2.i386.rpm 
rpm -ivh sqlite-3.3.6-5.i386.rpm 
rpm -ivh apr-util-1.2.7-7.el5_3.2.i386.rpm 
rpm -ivh subversion-1.4.2-4.el5_3.1.i386.rpm 
rpm -ivh neon-0.25.5-10.el5.i386.rpm 
rpm -ivh subversion-1.4.2-4.el5_3.1.i386.rpm 
rpm -ivh perl-URI-1.35-3.noarch.rpm 
rpm -ivh subversion-1.4.2-4.el5_3.1.i386.rpm 
rpm -ivh apr-util-1.2.7-7.el5_3.2.i386.rpm 
rpm -ivh apr-util-1.2.7-7.el5_3.2.i386.rpm  --force
rpm -ivh apr-util-1.2.7-7.el5_3.2.i386.rpm  --force --nodeps
rpm -vih subversion-1.4.2-4.el5_3.1.i386.rpm 
rpm -ivh apr-1.2.7-11.el5_3.1.i386.rpm 
rpm -ivh apr-util-devel-1.2.7-7.el5_3.2.i386.rpm 
rpm -ivh db4-4.3.29-10.el5.i386.rpm 
for each in $(dir -1 |grep rpm$); do rpm -qlp $each > /tmp/$each; done
rpm -ivh postgresql-8.1.11-1.el5_1.1.i386.rpm 
rpm -ivh postgresql-libs-8.1.11-1.el5_1.1.i386.rpm 
