#!/usr/bin/perl
#2011_06_23_22:42:50   ÐÇÆÚËÄ   add by greshem
$subject=shift ;
if(! defined($subject))
{
	print $0. " mfc|console|wxwidgets|gtest|library \n ";
	$subject="console";
}

if($subject=~/console/)
{
 	gen_console_bat();
}
elsif( $subject=~/mfc/)
{
	gen_mfc_bat();
}
elsif( $subject=~/wx/)
{
	gen_wxwidgets_bat();
}
elsif( $subject=~/gtest/)
{
	gen_gtest_bat();
}
elsif( $subject=~/lib/)
{
	gen_library_bat();
}


########################################################################
#mfc 
sub gen_mfc_bat()
{
	open(FILE, "> one_step_mfc.bat");
	print FILE <<EOF
cmd_find.pl mfc
c:\\bin\\compile_mfc.pl
gen_bakefile_bkl.pl
bakefile -f msvc  build.bkl

nmake /f makefile.vc
EOF
;
close(FILE);
}

########################################################################
#console  
sub gen_console_bat()
{
	open(FILE, "> one_step_console.bat");
	print FILE <<EOF

cmd_find.pl console
c:\\bin\\compile_console.pl
gen_bakefile_bkl.pl
bakefile -f msvc  build.bkl
nmake /f makefile.vc
EOF
;
}
########################################################################
#wxwidgets
sub gen_wxwidgets_bat()
{
	open(FILE, "> one_step_mfc.bat");
	print FILE <<EOF

cmd_find.pl mfc
c:\\bin\\compile_wxWidgets.pl 
gen_bakefile_bkl.pl
bakefile -f msvc  build.bkl
nmake /f makefile.vc
EOF
;
}

########################################################################
#gtest

sub gen_gtest_bat()
{
	open(FILE, "> one_step_gtest.bat");
	print FILE <<EOF

cmd_find.pl gtest
c:\\bin\\compile_gtest.pl
gen_bakefile_bkl.pl
bakefile -f msvc  build.bkl
nmake /f makefile.vc
EOF
;
}


########################################################################
#library
sub gen_library_bat()
{
	open(FILE, "> one_step_lib.bat");
	print FILE <<EOF

cmd_find.pl library
c:\\bin\\compile_library.pl
gen_bakefile_bkl.pl
bakefile -f msvc  build.bkl
nmake /f makefile.vc
EOF
;
}

