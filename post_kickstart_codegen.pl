#!/usr/bin/perl
use strict;
my $copy_str=undef;
my $install_in_rc_local_str=undef;

gen_post_kickstart_conf();
my $each;
for $each (grep { -d } (glob("*")))
{
	gen_install_all_template($each)
}


sub gen_post_kickstart_conf()
{
	for $each (grep { -d } (glob("*")))
	{
		#print "cp -v -a -r /tmp/dir/$each /root/  >> /var/log/copy_$each.log\n";
		$copy_str.="cp -v -a -r /tmp/dir/$each /root/  >> /var/log/copy_$each.log\n";

		#print "echo bash /root/$each/install_all_all.sh  \& >> /etc/rc.local \n";
		$install_in_rc_local_str.="echo bash /root/$each/install_all.sh  \\\& >> /etc/rc.local \n";

	}
	print "Create  isolinux/ks_post.cfg \n";
	open(POST, ">isolinux/ks_post.cfg") or die("create post config error\n");
print POST <<EOF
%post
#!/bin/bash
for each in \$(seq 1 10)
do
mkdir /tmp/qianzhozngjie_\$each
done

mkdir /tmp/dir/ 
mount -t iso9660 /dev/hda /tmp/dir 
find /tmp/dir >>  /var/log/ks.log 

$copy_str

#UseDNS yes
sed '/UseDNS/{s/.*/UseDNS no/g}' /etc/ssh/sshd_config -i


echo export PATH=/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/X11R6/bin:/root/bin:/root/sbin >> /etc/rc.local
 
#echo bash /root/svn1547_release/bench_install_wxwidgets_rtiosrv.sh  \&  >> /etc/rc.local
$install_in_rc_local_str
#%end
%end
EOF
;
	close(POST);

	

}

sub gen_install_all_template($)
{
	(my $dir)=@_;
	if(! -d $dir)
	{
		warn("input dir is not dir \n");
		return ; 
	}

	open(FILE, ">$dir/install_all_template.pl") or die("create install_all_template.pl error ");	
	print FILE <<EOF

cd /root/$dir/
tar -xzvf $dir.tar.gz -C /root/
EOF
;	
	close(FILE);
	print "#$dir/install_all_template.pl generated \n"
}
