#!/usr/bin/perl
#2011_01_11_16:59:44 add by greshem
#枚举 目录下的文件, 并打印到 stdout. 
$count=1;
@file=glob("*.cpp");

print_header();
for $each (@file)
{
	print_unit($count, $each);
	$count++;
}
print_footer();


sub print_header()
{
print  <<EOF
[Project]
FileName=test.dev
Name=test
UnitCount=20
Type=0
Ver=1
ObjFiles=
Includes=
Libs=
PrivateResource=test_private.rc
ResourceIncludes=
MakeIncludes=
Compiler=
CppCompiler=
Linker=
IsCpp=1
Icon=test.ico
ExeOutput=
ObjectOutput=
OverrideOutput=0
OverrideOutputName=test.exe
HostApplication=
Folders=
CommandLine=
UseCustomMakefile=0
CustomMakefile=
IncludeVersionInfo=0
SupportXPThemes=1
CompilerSet=0
CompilerSettings=0000000000000101000000

EOF
;
}
sub print_unit($$)
{
	(my $number, $filename)=@_;
print <<EOF
[Unit$number]
FileName=$filename
CompileCpp=1
Folder=test
Compile=1
Link=1
Priority=1000
OverrideBuildCmd=0
BuildCmd=

EOF
;
}



sub print_footer()
{
print <<EOF
[VersionInfo]
Major=0
Minor=1
Release=1
Build=1
LanguageID=1033
CharsetID=1252
CompanyName=
FileVersion=
FileDescription=Developed using the Dev-C++ IDE
InternalName=
LegalCopyright=
LegalTrademarks=
OriginalFilename=
ProductName=
ProductVersion=
AutoIncBuildNr=0
EOF
;
}

