#!/usr/bin/perl
$data=[];
@array=1..10;
$data[@array]=[];
$data[@array][@array]=[]; 
$data[@array][@array]=[]; 
$data[1][2][3]="1.2.3";
print $data[1][2][3]."\n";
