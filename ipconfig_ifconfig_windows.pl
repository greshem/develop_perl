use Win32::IPConfig;

    $host = shift || "";
    if ($ipconfig = Win32::IPConfig->new($host)) {
        print "hostname=", $ipconfig->get_hostname, "\n";

        print "domain=", $ipconfig->get_domain, "\n";

        my @searchlist = $ipconfig->get_searchlist;
        print "searchlist=@searchlist (", scalar @searchlist, ")\n";

        print "nodetype=", $ipconfig->get_nodetype, "\n";

        print "IP routing enabled=", $ipconfig->is_router ? "Yes" : "No", "\n";

        print "WINS proxy enabled=",
            $ipconfig->is_wins_proxy ? "Yes" : "No", "\n";

        print "LMHOSTS enabled=",
            $ipconfig->is_lmhosts_enabled ? "Yes" : "No", "\n";

        print "DNS enabled for netbt=",
            $ipconfig->is_dns_enabled_for_netbt ? "Yes" : "No", "\n";

        foreach $adapter ($ipconfig->get_adapters) {
            print "\nAdapter '", $adapter->get_name, "':\n";

            print "Description=", $adapter->get_description, "\n";

            print "DHCP enabled=",
                $adapter->is_dhcp_enabled ? "Yes" : "No", "\n";

            @ipaddresses = $adapter->get_ipaddresses;
            print "IP addresses=@ipaddresses (", scalar @ipaddresses, ")\n";

            @subnet_masks = $adapter->get_subnet_masks;
            print "subnet masks=@subnet_masks (", scalar @subnet_masks, ")\n";

            @gateways = $adapter->get_gateways;
            print "gateways=@gateways (", scalar @gateways, ")\n";

            print "domain=", $adapter->get_domain, "\n";

            @dns = $adapter->get_dns;
            print "dns=@dns (", scalar @dns, ")\n";

            @wins = $adapter->get_wins;
            print "wins=@wins (", scalar @wins, ")\n";
        }
    }
	<STDIN>;