#!/usr/bin/perl
#scsi0:6.deviceType = "disk"

my $main;
my $sub;
for $main (0..3)
{
	print <<EOF
scsi$main.present = "TRUE"
EOF
;
	for$sub (0..15)
	{
		print <<EOF

scsi$main:$sub.present = "TRUE"
scsi$main:$sub.fileName = "H:\\sdb2\\linux_iso_windows\\fedora_all\\fedora_16\\Fedora-16-x86_64-DVD.iso"
scsi$main:$sub.deviceType = "cdrom-image"

EOF
;	
	}
}
