#!/usr/bin/perl
sub test($$)
{
	(my $line, %hash)=@_;
	test2($line , %hash);
}

sub test2($$)
{
	(my $line, %hash)=@_;
	test3($line , %hash);
}

sub test3($$)
{
	(my $line, $hash)=@_;
	print %{$hash};
}
our %hash2=("aaa"=>"1111",
"bbb"=>"1111",
"ccc"=>"1111",
"ddd"=>"1111");


test3("qianqin", \%hash2);



