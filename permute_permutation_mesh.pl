 use Algorithm::Permute;
#default is to create n of n objects permutation generator
#my $p = new Algorithm::Permute(['a'..'d']);


#4个里面 取 三个的 所有的 组合.
sub pick_3_from_4($)
{
	(my $input)=@_;
	# but also you can create r of n objects permutation generator, where r <= n
	my $p = new Algorithm::Permute($input, 3);
	 while (@res = $p->next) {
	 print join(", ", @res), "\n";
	}

}

# and this one is the speed demon:
# 生成给   /root/foreign_trade_management_sys/keywords_cross.pl 使用.  4个变量.
sub cross_all_item()
{
	my @array = qw(a b c d );
	Algorithm::Permute::permute { print "\$key=\$$array[0].\$$array[1].\$$array[2].\$$array[3];\n \$hash{\$key}=1; \n" } @array;
}

#cross_all_item();

@tmp= qw(1 2 3 4 ) ;
pick_3_from_4(\@tmp);

