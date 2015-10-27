#!/usr/bin/perl
sub dump_hash($)
{

	($in)=@_;
	print "%out=(\n";
	for $each  (keys(%{$in}))
	{
		#print  "\"".$each ."\"=>\"". ${$in}{$each}."\", \n";
		$each2=${$in}{$each};
		print <<EOF
"$each"=>"$each2",
EOF
;
	}
	print ");";
}

%a;

sub hashFromFile($)
{
	($file)=@_;
	%tmp;
	$i=1;
	open(FILE, $file) or die("open file error\n");
	foreach(<FILE>)
	{
		if(/(\S+)\s+(.*)/)
		{
			$tmp{$1}=$2;
		}
	}
	return %tmp;
}

%hash=hashFromFile($file);

