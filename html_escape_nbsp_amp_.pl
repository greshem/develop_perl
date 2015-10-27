sub _simple_unescape {
  my $str = shift;
  $str =~ s/&quot;/"/g;
  $str =~ s/&lt;/</g;
  $str =~ s/&gt;/>/g;
  $str =~ s/&amp;/&/g;
  $str;
}

sub _simple_escape {
  my $str = shift;
  $str =~ s/&/&amp;/g;
  $str =~ s/"/&quot;/g;
  $str =~ s/</&lt;/g;
  $str =~ s/>/&gt;/g;
  $str;
}

sub html_escape { _simple_escape($_[1]) }

sub html_unescape { _simple_unescape($_[1]) }

