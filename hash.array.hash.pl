#!/usr/bin/perl
my @info; # sorted list of keys below. to re-sort, drag-n-drop the code chunks
my %info = ( # idsip = info display
	do{push(@info,'idisp_contained_objects');$info[-1]} => {
		'hidden' => 0,
		'desc' => q{list any objects contained by the node (takes a while if the node is a domain or a computer)},
		'indent' => 0,
		'checked' => 0,
		'display' => \&idisp_contained_objects,
	},
	do{push(@info,'idisp_interface_hierarchy');$info[-1]} => {
		'hidden' => $param{'reduced_interface'},
		'desc' => q{list the interfaces supported by the object},
		'indent' => 0,
		'checked' => 1,
		'display' => \&idisp_interface_hierarchy,
	},
	do{push(@info,'idisp_interface_details');$info[-1]} => {
		'hidden' => $param{'reduced_interface'},
		'desc' => q{describe the interfaces in more detail},
		'indent' => 1,
		'checked' => 0,
		'display' => \&idisp_interface_details,
	},
	do{push(@info,'idisp_property_declarations');$info[-1]} => {
		'hidden' => $param{'reduced_interface'},
		'desc' => q{describe the properties applicable to the object},
		'indent' => 0,
		'checked' => 1,
		'display' => \&idisp_property_declarations,
	},
	do{push(@info,'idisp_property_values');$info[-1]} => {
		'hidden' => 0,
		'desc' => q{list the object's properties' values (and other details)},
		'indent' => !$param{'reduced_interface'},
		'checked' => $param{'reduced_interface'},
		'display' => \&idisp_property_values,
	},
	do{push(@info,'idisp_method_declarations');$info[-1]} => {
		'hidden' => $param{'reduced_interface'},
		'desc' => q{describe the methods applicable to the object},
		'indent' => 0,
		'checked' => 1,
		'display' => \&idisp_method_declarations,
	},
	do{push(@info,'idisp_safe_method_values');$info[-1]} => {
		'hidden' => 0,
		'desc' => q{list the values of 'psuedoproperty' methods (best with user and group objects)},
		'indent' => !$param{'reduced_interface'},
		'checked' => 0,
		'display' => ( $groups_members_as_properties ? undef : \&idisp_safe_method_values ),
	},
	do{push(@info,'idisp_tlb_data');$info[-1]} => {
		'hidden' => $param{'reduced_interface'},
		'desc' => q{dump all data currently parsed from type lib (takes a while)},
		'indent' => 0,
		'checked' => 0,
		'display' => \&idisp_tlb_data,
	},
);
@info = grep {
	$info{$_}{'display'} # must be capable of rendering itself
	and # mustn't be hidden by reduced interface preference
	( $param{'reduced_interface'} ? !$info{$_}{'hidden'} : 1 )
} @info;

use Data::Dumper;
print Dumper(@info);
//########################################################################
#$Data::Dumper::Indent=4;
#$Data::Dumper::Pair="-->";
#print Dumper(%info);
