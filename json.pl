#!/usr/bin/perl -w
use strict;
use Data::Dumper;
use JSON;

sub deal_with_file()
{
	my $json = new JSON;
	my $js;

	open JFILE, "file2";
	while(<JFILE>) 
	{
		$js .= "$_";
	}
	my $obj = $json->decode($js);
	print Dumper $obj
}
sub  deal_with_string()
{
	my $json = new JSON;
	my $js='{"name":"china","province":[{"p_name":"shanxi","p_num":"1024"},{"p_name":"shandong","p_num":"2048"}]}';
	my $obj = $json->decode($js);
	
	print Dumper $obj;
	return $obj;
}

#���ƴ���
#������һ���ű����д���������json����
#{"name":"china","province":[{"p_name":"shanxi","p_num":"1024"},{"p_name":"shandong","p_num":"2048"}]}

my $ret=deal_with_string();
#assert($ret == $output);

my $output = {
          'name' => 'china',
          'province' => [
                          {
                            'p_name' => 'shanxi',
                            'p_num' => '1024'
                          },
                          {
                            'p_name' => 'shandong',
                            'p_num' => '2048'
                          }
                        ]
        };

my $p_num=$output->{'province'}->[0]->{'p_num'};
#assert($p_num == "1024"), ��Ȼ���.
