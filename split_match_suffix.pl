#!/usr/bin/perl

sub getSuffix($)
{
    ($in)=@_;
    if($in=~/\./)
    {
        my @array=split(/\./, $in);
        return $array[scalar(@array)-1];
    }
    else
    {
        return undef;
    }

}

print getSuffix("aaa.txt")."\n";
