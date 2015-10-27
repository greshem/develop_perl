
sed 's/&nbsp;/ /g'  *.html -i 
sed 's/&quot;/"/g' *.html  -i
sed 's/&lt;/</g'  *.html -i
sed 's/&le;/<=/g'  *.html -i

sed 's/&gt;/>/g'  *.html -i
sed 's/&ge;/>=/g'  *.html -i
sed 's/&time;/*/g' *.html -i 
sed 's/&ne;/!=/g' *.html -i 

sed 's/&#8211;/-/g' *.html -i #!=

sed 's/&#8805;/>=/g' *.html  -i			#>=
sed 's/&minus;/-/g'  *.html -i 
sed 's/&delta;/A/g' *.html -i 

echo <<EOF
    $string =~ s/\&/\&amp;/g;
    $string =~ s/\</\&lt;/g;
    $string =~ s/\>/\&gt;/g;
    $string =~ s/\"/\&quot;/g;
    print $string;


EOF


