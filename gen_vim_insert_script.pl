#!/usr/bin/perl
$file=shift or die("Usage: $0 file\n");
%hash=  hashFromFile($file);

@array=arrayFromFile($file);
($name)=($file=~/(.*)\..*/);
if(!defined($name))
{
	$name=$file;
}

use Template;

my $var= {
	name=>"I".$name,
	hash=> \%hash,
	array=>\@array,
};
my $config=undef;

my $template = Template->new();
$template->process(\*DATA, $var, $file.".vim") || die $template->error();
sub hashFromFile($)
{
	($file)=@_;
	%tmp;
	$i=1;
	open(FILE, $file) or die("open file error\n");
	foreach(<FILE>)
	{
		chomp;
		$_=~s/>/\\>/g;
		$_=~s/\"/\\\"/g;
		$tmp{$i}=$_;
		$i++;	
	}
	close(FILE);
	return %tmp;
}

sub arrayFromFile($)
{
	($file)=@_;
	@tmp=();
	$i=1;
	open(FILE, $file) or die("open file error\n");
	foreach(<FILE>)
	{
		chomp;
		$_=~s/>/\\>/g;
		$_=~s/\"/\\\"/g;
		push(@tmp, $_);
		$i++;	
	}
	close(FILE);
	return reverse(@tmp);

}


__DATA__

function Insert[%name%]Header()
		let s:line=line(".")
		call setline(s:line, "###################################################")
	[% FOREACH item IN  array %]
	call append(s:line,"[%item%]")
	[%END%]
		unlet s:line
	endfunction
com [%name%] call Insert[%name%]Header()




