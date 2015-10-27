#!/usr/bin/perl
# 多返回值的时候  需要返回  引用: 
sub get_value  
{  
   my $err = 0;  
   my @arr1;  
   my @arr2;  
   push @arr1, "item for arr1";  
   push @arr1, "item for arr1";  

   push @arr2, "item for arr2";  
   push @arr2, "item for arr2";  
   push @arr2, "item for arr2";  
   push @arr2, "item for arr2";  
   push @arr2, "item for arr2";  

   my $err1 = 1;  
   return (\@arr1, $err, \@arr2);  
}  
my ($array1, $error, $array2) = get_value();  

print "number of array1 = ". scalar(@{$array1})."\n"; 
print "number of array2 = ". scalar(@{$array2})."\n";
