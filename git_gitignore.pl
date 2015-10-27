#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
cat >> .gitignore <<EOF
*.[oa]
*.l[oa]
*.so
*.diff
*.dep
*.gz
*.txt
*.html
*.uo
.svn
EOF

