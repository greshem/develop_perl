#!/usr/bin/perl
use Template;
my $config=undef;

%size_array=( 	"int"=>4,
				"char"=>1,
				"long"=>4,
				"long long"=>8,
				"unsigned long"=>4);

###############################################################################
my $var=
	{
		size=> \%size_array,
		
	};
$template=Template->new();
$template->process(\*DATA, $var) or die ($template->error());

__DATA__
#include <QzjUnit.hpp>
#include <algorithm>
#include <dirent.h>
#include <fstream>
#include <iostream>
#include <iostream> 
#include <iterator>  
#include <map>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string> 
#include <vector> 
#include <gtest/gtest.h>
//#include <MLmyUnit.hpp>
TEST(size, size)
{
	[%FOREACH type IN  size %]
	 EXPECT_EQ(sizeof([%type.key%]) , [%type.value%]);
	[%END%]
}

int main(int argc, char * argv[])
{
	testing::InitGoogleTest(&argc, argv);
    RUN_ALL_TESTS();
    return 1;
}

