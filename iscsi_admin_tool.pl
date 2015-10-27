#!/usr/bin/env perl

my  $tgt_ip = "172.16.101.10"; 
my  $lun_name = "";
my  $dev_name = "";


my %hash_func =
(
    "1" => ["lun discovery",\&iscsi_lun_discovery],
    "2" => ["target login",\&iscsi_tgt_login],
    "3" => ["target logout",\&iscsi_tgt_logout],
    "4" => ["get  device",\&iscsi_tgt_logout],
    "5" => ["make filesystem", \&iscsi_tgt_logout],
    "6" => ["mount device",\&iscsi_tgt_logout],            
);

sub get_user_input
{
    my($prompt,$default) = @_;
    print "$prompt: [$default]:";
    $input =   <STDIN>;
    chomp $input;
    $input = $default if !$input;
    return $input;

}

sub iscsi_lun_discovery
{
    
    $tgt_ip =  get_user_input("pls input the ip of san",$tgt_ip);
    
	my $cmd = "iscsiadm -m discovery -t st -p $tgt_ip"; 
	
	@cmdout = `$cmd`;
	
	print @cmdout;    
}

sub iscsi_tgt_login {
    $lun_name = get_user_input("pls input the name of lun",$lun_name);
	
	my $cmd = "iscsiadm -m node -T $lun_name -P $tgt_ip --login"; 
	
	@cmdout = `$cmd`;
	
	print @cmdout;        
}

sub iscsi_tgt_logout
{
    $lun_name = get_user_input("pls input the of lun",$lun_name);
	
	my $cmd = "iscsiadm -m node -T $lun_name -P $tgt_ip --logout"; 
	
	@cmdout = `$cmd`;
	
	print @cmdout;        

}

sub get_iscsi_device{

}

sub get_device_info{
}

sub make_fs{
}
sub mount_dev{
}
sub mount_iscsi{
}

sub print_menu{
    (sort %hash_func)){
	$menu = @{$value}[0]; 
	print "$key. $menu\n";
    }
    print "q. exit\n";
    return true;
}

sub main {
    while (print_menu())
    {
        $choice = get_user_input("pls input your choice","");
        return if ($choice eq "q");
        @{$hash_func{$choice}}[1]->() if exists $hash_func{$choice};
    }
    
}

main()



