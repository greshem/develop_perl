#!/usr/bin/perl -w

#### 将十进制数转换成8为二进制
sub dectobin {
    substr(unpack("B32",pack("N",shift)) , -8);
}

sub dectobin_2 {
    substr(unpack("B32",pack("N",shift)) , -32);
}

#### 将32位二进制转换成十进制
sub bintodec {
    unpack("N", pack("B32", substr("0" x 32 . shift, -32)));
}


# 
sub bintodec_2 {
    unpack("N", pack("B32", substr("0" x 32 . shift, -33)));
}

#### 将二进制表示的 IP/子网掩码转换成十进制形式
sub ipmask_bin2dec {
    my $prefix = "";
    my $result;
    map { $result .= $prefix . &bintodec($_); $prefix = ".";
    } split (/\./,shift);
    return $result;
}

#### 将十进制表示的 IP/子网掩码转换成二进制形式
sub ipmask_dec2bin {
    my $prefix = "";
    my $result;
    map { $result .= $prefix . &dectobin($_); $prefix = ".";
    } split (/\./,shift);
    return $result;
}

#### 将 CIDR 表示的子网掩码转换成十进制形式
sub ipmask_cidr2dec {
    my $cidr_num = shift();
    return if ($cidr_num < 0 || $cidr_num > 32);

    (my $mask = 1 x $cidr_num . 0 x (32-$cidr_num)) =~
        s/(\d{8})(\d{8})(\d{8})(\d{8})/$1.$2.$3.$4/;

    return &ipmask_bin2dec($mask);
}

my $dec_ip = "192.168.2.1";
my $dec_mask = "255.255.255.128";
my $cidr_num = 25;

my $bin_ip = &ipmask_dec2bin($dec_ip);
my $bin_mask = &ipmask_dec2bin($dec_mask);
my $bin_mask2 = &ipmask_cidr2dec($cidr_num);

# print "Decimal IP: $dec_ip\n";
# print "Binary IP: $bin_ip\n";
# print "Decimal Netmask: $dec_mask\n";
# print "Binary Netmask: $bin_mask\n";
# print "CIDR Netmask: $cidr_num = $bin_mask2\n";

print $a=dectobin_2(1234)."\n";
print bintodec_2($a)."\n";

