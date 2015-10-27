#!/usr/bin/perl
@array;
push(@array, {a=>b});
push(@array, {b=>b});
push(@array, {c=>b});
push(@array, {d=>b});
push(@array, {e=>b});
push(@array, {f=>b});

print keys(%{$array[0]});
