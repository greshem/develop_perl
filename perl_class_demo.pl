package ClassTest;

#use strict;
use warnings;
use Exporter;

our @ISA    = qw(Exporter);
our @EXPORT = qw(new set get attr);

sub new 
{
	my  ( $self )   = shift;
	my  ( %params ) = @_;

	#  my  $attr   = { =>,     #   remain to fill
	# 			 };
	# 

	my  $ref = sub 
	{
		my  ($access_type, $key, $value)    = @_;

		#   original operations: set, get, keys, exists    
		if ($access_type eq "set" ) 
		{
			$attr->{$key} = $value;
		}
		elsif ( $access_type eq "get" ) 
		{
			return  $attr->{$key};
		}
		elsif ( $access_type eq "keys" ) 
		{
			return  keys(%$attr);
		}
		elsif ( $access_type eq "exists" ) 
		{
			return exists($attr->{$key});
		}
		else {
		 die "Access type ERROR!\n";
		}
	};
	bless( $ref, $self);

	# set the attributes in the contributor.
	$ref->set(%params);

	return $ref;
}   # ----------  end of subroutine new  ----------


sub set {
 my  $self   = shift;
 my  ( %params ) = @_;

 	foreach my $key ( keys(%params) ) 
	{
		$self->("set", $key, $params{$key}) if $self->("exists", $key);
 	}
}   # ----------  end of subroutine set  ----------

sub get 
{
	my  $self       = shift;
	my  @params     = @_;

	return map $self->("get", $_), @params;
}   # ----------  end of subroutine get  ----------

sub attr 
{
	my  $self       = shift;
	return $self->("keys");
}   # ----------  end of subroutine attr  ----------

1;
