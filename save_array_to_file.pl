sub save_array_to_file($@)
{
	(my $output,my  @array)=@_;
	open(OUTPUT, ">$output") or die("create $output error \n");
	for(@array)
	{
		print OUTPUT $_."\n";
	}
	close(FILE);
}

@a=1..100;
save_array_to_file("bbbbbbb", @a);
