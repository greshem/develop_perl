#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
vmware-cmd /vmfs/volumes/4dcbac71-f4dd1a62-283f-00218507254a/winxp/winxp.vmx &
vmware-cmd  "/vmfs/volumes/4dcbac71-f4dd1a62-283f-00218507254a/Fedora 13/Fedora 13.vmx" start &
vmware-cmd  "/vmfs/volumes/4dcbac71-f4dd1a62-283f-00218507254a/Fedora 8/Fedora 8.vmx" start &
vmware-cmd  "/vmfs/volumes/4dcbac71-f4dd1a62-283f-00218507254a/Fedora 8/Fedora 8.vmx" start &
vmware-cmd "/vmfs/volumes/4dcbac71-f4dd1a62-283f-00218507254a/Red Hat Enterprise Linux 6/Red Hat Enterprise Linux 6.vmx" start &
vmware-cmd "/vmfs/volumes/4dcbac71-f4dd1a62-283f-00218507254a/Red Hat Enterprise Linux 5/Red Hat Enterprise Linux 5.vmx" start &
vmware-cmd "/vmfs/volumes/4dcbac71-f4dd1a62-283f-00218507254a/Red Hat Enterprise Linux 4/Red Hat Enterprise Linux 4.vmx" start &

