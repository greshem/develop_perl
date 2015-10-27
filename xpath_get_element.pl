#!/usr/bin/perl
use HTML::TreeBuilder::XPath;
my $tree= HTML::TreeBuilder::XPath->new;
$file=shift or die("file.html xpath_expr\n");
$xpath=shift or die("file.html xpath_expr\n");

#print "xpath->", $xpath,"\n";
$tree->parse_file( $file);
print $tree->findnodes_as_strings( $xpath);
print "\t\t";
$a=$tree->findnodes($xpath);
print $a->[0]->{'href'},"\n";
$tree->delete; # to avoid memory leaks, if you parse many HTML documents 

########################################################################	
#$tree->new_from_file( "index.html");
#print  $nb=$tree->findvalue( '//div/ul/li[1]/a');
#print $tree->findnodes_as_strings( '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td');
#print $tree->findnodes_as_strings( '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[4]');
#print $tree->findnodes_as_strings( '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[4]');
 
#print  $tree->findnodes_as_strings( '//div/ul/li/'.'a');
#$count=$tree->findnodes_as_strings('//div[@class="jobs_txt"]/p[@class="txt_font1"]/a');
#print "Count",$count,"\n";

#print $tree->findnodes_as_strings('//div[@class="jobs_txt"]/p[@class="txt_font1"]/a');
#my $p= $html->findnodes( '//p[@id="toto"]')->[0];
#my $link_texts= $p->findvalue( './a'); # the texts of all a elements in $p
  
#new_from_contengt
#$a=`cat index.html`;
#$tree->new_from_content($a);
#my $tree= HTML::TreeBuilder::XPath->new_from_content( $a);
