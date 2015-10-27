#Generate a pronounceable password that is between 6 and 10 characters.
use  Text::Password::Pronounceable;
for(1..100)
{
	print Text::Password::Pronounceable->generate(6, 10)."\n";
}


# Ditto
#my $pp = Text::Password::Pronounceable->new(6, 10);
#$pp->generate;
