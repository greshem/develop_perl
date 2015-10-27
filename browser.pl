#!/usr/bin/perl
	use Win32::GetDefaultBrowser;
	
	my $default_browser = get_default_browser;

	print $default_browser."\n";
