
#Converts bytes into a human readable format with unit
sub bytesToX($) 
{
	my ($bytes) = @_;
	my $unit;
	my $val;

	if ($bytes < 1024) 
	{
		$unit = 'Bytes';
		$val = $bytes;
	}
	elsif ($bytes < 1048576) 
	{
			$unit = 'KB';
			$val = $bytes / 1024;
	}
	elsif ($bytes < 1073741824) 
	{
		$unit = 'MB';
		$val = $bytes / 1048576;
	}
	elsif ($bytes < 1099511627776) 
	{
		$unit = 'GB';
		$val = $bytes / 1073741824;
	}
	else 
	{
		$unit = 'TB';
		$val = $bytes / 1099511627776;
	}

	$val = sprintf('%0.2f', $val) if ($unit ne 'Bytes');
	return "$val $unit";
};

#print (bytesToX(333333333));
