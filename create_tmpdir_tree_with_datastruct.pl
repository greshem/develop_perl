#!/usr/bin/perl 
  my %tree_structure =
		(
		dir_1 =>
			{
			subdir_1 =>{},
			file_1 =>[],
			file_a => [],
			},
		dir_2 =>
			{
			subdir_2 =>
				{
				file_22 =>[],
				file_2a =>[],
				},
			file_2 =>[],
			file_a =>['12345'],
			file_b =>[],
			},
			
		file_0 => [] ,
		) ;


		
  use Directory::Scratch::Structured qw(create_structured_tree) ;
  my $temporary_directory = create_structured_tree(%tree_structure) ;
  
print $temporary_directory ."\n";
#退出了也就删除了 这里 不让他删除. 
sleep(100);

sub test2()
{  
  use Directory::Scratch ;
  use Directory::Scratch::Structured  qw(piggyback_directory_scratch) ;
 
  my $temporary_directory = Directory::Scratch->new;
  $temporary_directory->create_structured_tree(%tree_structure) ;

}
