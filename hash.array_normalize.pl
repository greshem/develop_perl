
# from /bin/normalize_iso_name.pl 
my $hash = {

'centos5_0_i386_bin_DVD' => 
[

	'CentOS/kernel-2.6.18-8.el5.i686.rpm',
	'CentOS/kernel-PAE-2.6.18-8.el5.i686.rpm',
	'CentOS/kernel-PAE-devel-2.6.18-8.el5.i686.rpm',
	'CentOS/kernel-devel-2.6.18-8.el5.i686.rpm',
	'CentOS/kernel-doc-2.6.18-8.el5.noarch.rpm',
	'CentOS/kernel-headers-2.6.18-8.el5.i386.rpm',
	'CentOS/kernel-xen-2.6.18-8.el5.i686.rpm',
	'CentOS/kernel-xen-devel-2.6.18-8.el5.i686.rpm',

],

'centos5_0_x86_64-bin-DVD.iso' => 
[
'CentOS/kernel-doc-2.6.18-8.el5.noarch.rpm',
'CentOS/kernel-xen-devel-2.6.18-8.el5.x86_64.rpm',
'CentOS/kernel-2.6.18-8.el5.x86_64.rpm',
'CentOS/kernel-devel-2.6.18-8.el5.x86_64.rpm',
'CentOS/kernel-headers-2.6.18-8.el5.x86_64.rpm',
'CentOS/kernel-xen-2.6.18-8.el5.x86_64.rpm',
],


'centos5_1_i386-bin-DVD'=>
[

	'CentOS/kernel-2.6.18-53.el5.i686.rpm',
	'CentOS/kernel-PAE-2.6.18-53.el5.i686.rpm',
	'CentOS/kernel-PAE-devel-2.6.18-53.el5.i686.rpm',
	'CentOS/kernel-debug-2.6.18-53.el5.i686.rpm',
	'CentOS/kernel-debug-devel-2.6.18-53.el5.i686.rpm',
	'CentOS/kernel-devel-2.6.18-53.el5.i686.rpm',
	'CentOS/kernel-doc-2.6.18-53.el5.noarch.rpm',
	'CentOS/kernel-headers-2.6.18-53.el5.i386.rpm',
	'CentOS/kernel-xen-2.6.18-53.el5.i686.rpm',
	'CentOS/kernel-xen-devel-2.6.18-53.el5.i686.rpm',
	'CentOS/yum-kernel-module-1.0.4-3.el5.centos.2.noarch.rpm',

],

};

use Data::Dumper;
print Dumper($hash);

__DATA__
#dump as follow 


$VAR1 = {
          'centos5_0_x86_64-bin-DVD.iso' => [
                                              'CentOS/kernel-doc-2.6.18-8.el5.noarch.rpm',
                                              'CentOS/kernel-xen-devel-2.6.18-8.el5.x86_64.rpm',
                                              'CentOS/kernel-2.6.18-8.el5.x86_64.rpm',
                                              'CentOS/kernel-devel-2.6.18-8.el5.x86_64.rpm',
                                              'CentOS/kernel-headers-2.6.18-8.el5.x86_64.rpm',
                                              'CentOS/kernel-xen-2.6.18-8.el5.x86_64.rpm'
                                            ],
          'centos5_0_i386_bin_DVD' => [
                                        'CentOS/kernel-2.6.18-8.el5.i686.rpm',
                                        'CentOS/kernel-PAE-2.6.18-8.el5.i686.rpm',
                                        'CentOS/kernel-PAE-devel-2.6.18-8.el5.i686.rpm',
                                        'CentOS/kernel-devel-2.6.18-8.el5.i686.rpm',
                                        'CentOS/kernel-doc-2.6.18-8.el5.noarch.rpm',
                                        'CentOS/kernel-headers-2.6.18-8.el5.i386.rpm',
                                        'CentOS/kernel-xen-2.6.18-8.el5.i686.rpm',
                                        'CentOS/kernel-xen-devel-2.6.18-8.el5.i686.rpm'
                                      ],
          'centos5_1_i386-bin-DVD' => [
                                        'CentOS/kernel-2.6.18-53.el5.i686.rpm',
                                        'CentOS/kernel-PAE-2.6.18-53.el5.i686.rpm',
                                        'CentOS/kernel-PAE-devel-2.6.18-53.el5.i686.rpm',
                                        'CentOS/kernel-debug-2.6.18-53.el5.i686.rpm',
                                        'CentOS/kernel-debug-devel-2.6.18-53.el5.i686.rpm',
                                        'CentOS/kernel-devel-2.6.18-53.el5.i686.rpm',
                                        'CentOS/kernel-doc-2.6.18-53.el5.noarch.rpm',
                                        'CentOS/kernel-headers-2.6.18-53.el5.i386.rpm',
                                        'CentOS/kernel-xen-2.6.18-53.el5.i686.rpm',
                                        'CentOS/kernel-xen-devel-2.6.18-53.el5.i686.rpm',
                                        'CentOS/yum-kernel-module-1.0.4-3.el5.centos.2.noarch.rpm'
                                      ]
        };
