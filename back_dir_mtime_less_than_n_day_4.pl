#!/usr/bin/perl
$range=shift or warn("Usage: $0  n_day\n");
;	

@files=grep { -d  && !/vim.org_scripts/} (<*>)	;

#map {print $_, -s $_,"\n";} sort{-s $a <=> -s $b} @files;

@filesSort= sort{-M $a <=> -M $b} @files;

for(@filesSort)
{
	if($_=~ "_sync_tar_gz")
	{
		next;
	}
	if((-M $_) <= $range)
	{
		print  "tar -czf $_",".tar.gz   "," $_\n"; 
		print  "#", "Mtime  ->",  -M $_, "\n";
	}
}

sub HumanNumber($)
{
	($in)=@_;
		return int($in/1024)."k " ;
}
