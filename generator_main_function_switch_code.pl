#!/usr/bin/perl
sub gen_main_switch()
{
	open(FILE,"define_main_switch.txt") or die("open file error \n");
	print<<EOF
	string cmd(argv[1]);
EOF
;
	for(<FILE>)
	{
		chomp;
		print <<EOF
	else if (cmd=="$_")
	{
		test_$_(argc, argv);
	}
EOF
;
}
	close(FILE);
}

sub gen_function_Usage()
{
print <<EOF
	int Usage(char *prog_name){
EOF
;
open(FILE,"define_main_switch.txt") or die("open file error \n");
for(<FILE>)
{
	chomp;
	print <<EOF
	print("%s %s \\n", prog_name, "$_");
EOF
;
}
print  <<EOF
}
EOF
;
close(FILE);
}
sub gen_function_test_wrapper()
{
open(FILE,"define_main_switch.txt") or die("open file error \n");
for(<FILE>)
{
	chomp;
	print <<EOF
	int test_$_(int argc, char * argv[])
	{
		if(argc != 3)
		{
			printf("./%s %s input_file \\n", argv[0], argv[1]  );
			return -1;
		}
		
		//$_(argv[2]); //mdf this CODE
	}
EOF
;
}
print  <<EOF
}
EOF
;
close(FILE);

}

gen_main_switch();

gen_function_Usage();
gen_function_test_wrapper();
