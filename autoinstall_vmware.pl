#!/usr/bin/perl
our $g_iso_path="H:\\sdb2\\linux_iso_windows\\fedora_all\\Fedora_14-i386-DVD.iso";
our $g_auto_iso="f14_autoinst.iso";
our $g_name;
for (2..2)
{

	my $number=$_;
	my $output_dir= "dlxp_".$number;
	$g_name =$output_dir;
	#my $output_file=  "dlxp_".$number."/dlxp_$number.vmx";
	my $output_file=  "./dlxp_$number.vmx";
	mkdir($output_dir );
	print $output_file.": $number \n";
	gen_autoinst_vmx($output_file, $number );
	create_vmdk();
	start_vm($output_file);
}

#mkisofs 制作 autoinst 的光盘. 
sub mkisofs_autoinst()
{
	print <<EOF
mkisofs -r -N -L -d -J -T -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot  -V "f14" -boot-load-size 4 -boot-info-table  -o d:/tmp/f14_autoinst.iso C:/Users/Administrator/Desktop/f14	
EOF
;
}

#启动.
sub start_vm($)
{
	print "#start_vm \n";
	(my $vmx)=@_;
	system("vmrun -T ws    start   $vmx ");
}

#创建硬盘. 
sub create_vmdk()
{
	print "#create_vmdk\n";
	unlink("$g_name.vmdk");
	system("vmware-vdiskmanager.exe -c -s 80480MB -a ide -t 0 $g_name.vmdk");
}

#生成vmx 的配置文件.
#注意这里都只用 ide 的设置, ide光盘 , ide 的硬盘.  
sub gen_autoinst_vmx($$)
{
	print "gen_autoinst_vmx \n";
	(my $output_file, my $number )=@_;
	print $number."\n";
	open(FILE, ">$output_file") or die("create $output_file error \n");
	print FILE <<EOF
.encoding = "GBK"
config.version = "8"
virtualHW.version = "7"
maxvcpus = "4"
scsi0.present = "TRUE"
memsize = "256"

ide0:0.present = "TRUE"
ide0:0.deviceType = "cdrom-image"
ide0:0.fileName = "$g_auto_iso"

ide0:1.present = "TRUE"
ide0:1.autodetect = "TRUE"
ide0:1.deviceType = "cdrom-image"
ide0:1.fileName = "$g_iso_path"

ide1:0.present = "TRUE"
ide1:0.autodetect = "TRUE"
ide1:0.deviceType = "disk"
ide1:0.fileName = "$g_name.vmdk"


ethernet0.present = "TRUE"
ethernet0.connectionType = "nat"
ethernet0.wakeOnPcktRcv = "FALSE"
ethernet0.addressType = "generated"
ethernet0.linkStatePropagation.enable = "FALSE"
ethernet0.generatedAddress = "00:0c:29:2b:f3:37"


usb.present = "TRUE"
ehci.present = "TRUE"
sound.present = "TRUE"
sound.fileName = "-1"
sound.autodetect = "TRUE"
mks.enable3d = "TRUE"
pciBridge0.present = "TRUE"
pciBridge4.present = "TRUE"
pciBridge4.virtualDev = "pcieRootPort"
pciBridge4.functions = "8"
pciBridge5.present = "TRUE"
pciBridge5.virtualDev = "pcieRootPort"
pciBridge5.functions = "8"
pciBridge6.present = "TRUE"
pciBridge6.virtualDev = "pcieRootPort"
pciBridge6.functions = "8"
pciBridge7.present = "TRUE"
pciBridge7.virtualDev = "pcieRootPort"
pciBridge7.functions = "8"
vmci0.present = "TRUE"
roamingVM.exitBehavior = "go"
displayName = "dlxp$number"
guestOS = "winxppro"
nvram = "dlxp$number.nvram"
virtualHW.productCompatibility = "hosted"
extendedConfigFile = "dlxp$number.vmxf"



uuid.location = "56 4d 09 6b b0 ff 56 dd-bd 74 a4 03 97 2b f3 37"
uuid.bios = "56 4d 09 6b b0 ff 56 dd-bd 74 a4 03 97 2b f3 37"
cleanShutdown = "TRUE"
replay.supported = "FALSE"
debugStub.winOffsets.version = "7"
replay.filename = ""
pciBridge0.pciSlotNumber = "17"
pciBridge4.pciSlotNumber = "21"
pciBridge5.pciSlotNumber = "22"
pciBridge6.pciSlotNumber = "23"
pciBridge7.pciSlotNumber = "24"
scsi0.pciSlotNumber = "16"
usb.pciSlotNumber = "32"
ethernet0.pciSlotNumber = "33"
sound.pciSlotNumber = "34"
ehci.pciSlotNumber = "35"
vmci0.pciSlotNumber = "36"
vmotion.checkpointFBSize = "134217728"
usb:0.present = "TRUE"
usb:1.present = "TRUE"
ethernet0.generatedAddressOffset = "0"
vmci0.id = "720709424"
tools.remindInstall = "FALSE"
usb:1.deviceType = "hub"
usb:0.deviceType = "mouse"
debugStub.winOffsets.value = "0x88,0x84,0x18,0x190,0x174,16,416,0x22c,0x228,0x1f0,0x224,0x20,0x18,0x18,0x20,0x24,4,0x11c,0x8,0x0,0x14,0x100000,0x1b0,0xc,0xc,0x18,0x13c,0x1f4"
ide1:0.startConnected = "FALSE"
tools.syncTime = "FALSE"
unity.wasCapable = "TRUE"
policy.vm.mvmtid = ""
vc.uuid = ""
inVMTeam = "FALSE"
checkpoint.vmState = ""
ethernet0.vnet = "VMnet5"
fileSearchPath = ".;"
serial0.present = "FALSE"
scsi0:0.present = "FALSE"

answer.msg.uuid.altered="I copied it"

EOF
;
}
