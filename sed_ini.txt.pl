#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
11:17 2010-7-2

sometime you may want to read a initialization for getting some configration
in a unix shell, I have write a demo, hope this useful.
any suggestion, comments, bugs fix are welcome :-)
 
 
in a initialization file contains one or more sections, and a section can
cotains one or more items, let me show a example.
 
[section_a]
code=uu_library  #some comment
ver=0.01
 
[language]
code=python
ver=0.02
 
any charater behind '#' is comment until encounter a newline charater,
but sometime a item value may have # charater,
for simply, this situation is not considered.
[not-support]
code='#00.1'
 
 
# uu shell snippet
# junsi 2007 in shanghai
# version 0.01
 
uu_tmp_filename()
{
    #function:      produce a temporary filename using process num and a rand num
    #input:         no input param
    #output:        a temporary filename in /tmp direction
   
    rand_num1=`awk 'BEGIN{ srand(); print int( rand() * 10000 ) }'`
    rand_num2=`awk 'BEGIN{ srand(); print int( rand() * 10000 ) }'`
    echo "/tmp/uu-$$-$rand_num1-$rand_num2"
   
    return 0
}
uu_inifile_init()
{
    #section:       [section_name]
    #function:      write a section in a ini filename into a temporary file
    #input:         ini_filename ini_section_name
    #input:         no input param
    #output:        a temporary filename in /tmp
   
    [ "$#" -ne "2" ] && return 1
    [ ! -r $1 ]      && return 2
    [ "$2X" = "X" ]  && return 3
    uu_ini_tmp_filename=`uu_tmp_filename`
    sed -n "/[^#]*\[$2\]/,/[^#]*\[.*\]/p" $1 >$uu_ini_tmp_filename
   
    echo $uu_ini_tmp_filename
    return 0
}
uu_inifile_read()
{
    #field:         ^fieldname=fieldvalue #value comment$
    #function:      read a field from a temporary file
    #input:         tmp_filename ini_field_name
    #input:         no input param
    #output:        a temporary filename in /tmp
   
    [ "$#" -ne "2" ] && return 1
    [ ! -r $1 ]      && return 2
    [ "$2X" = "X" ]  && return 3
    sed -n "/^$2=/p" $1  | sed -e "s/#.*$//g"  | awk -F"=" '{ print $2 }' | sed 's/ //g'
    return 0
}
uu_inifile_exit()
{
    #function:      remove a temp filename
    #input:         a temporary filename
    #output:        no output
   
    [ "$#" -ne "1" ] && return 1
    [ ! -r $1 ]      && return 2
    rm -f  "$1"
   
    return 0
}
 
# some test code
tmpf=`uu_inifile_init /tmp/t.ini section_c`
echo $tmpf
tmpv=`uu_inifile_read $tmpf ip`
echo -e "ip = $tmpv\n"
tmpv=`uu_inifile_read $tmpf x`
echo -e "x = $tmpv\n"
uu_inifile_exit $tmpf
 
