#2012_12_06   星期四   add by greshem
# 来自 D:\TDDownload\api-sanity-checker_master\api-sanity-checker-master
#只能处理  unmangled 的字符串 
sub unmangled_Compact($)
# Removes all non-essential (for C++ language) whitespace from a string.  If 
# the whitespace is essential it will be replaced with exactly one ' ' 
# character. Works correctly only for unmangled names.
# If level > 1 is supplied, can relax its intent to compact the string.
{
	#return $Cache{"unmangled_Compact"}{$_[0]} if(defined $Cache{"unmangled_Compact"}{$_[0]});
    my $result=$_[0];
    # First, we reduce all spaces that we can
    my $coms='[-()<>:*&~!|+=%@~"?.,/[^'."']";
    my $coms_nobr='[-()<:*&~!|+=%@~"?.,'."']";
    my $clos='[),;:\]]';
    $result=~s/^\s+//gm;
    $result=~s/\s+$//gm;
    $result=~s/((?!\n)\s)+/ /g;
    $result=~s/(\w+)\s+($coms+)/$1$2/gm;
    $result=~s/($coms+)\s+(\w+)/$1$2/gm;
    $result=~s/(\w)\s+($clos)/$1$2/gm;
    $result=~s/($coms+)\s+($coms+)/$1 $2/gm;
    $result=~s/($coms_nobr+)\s+($coms+)/$1$2/gm;
    $result=~s/($coms+)\s+($coms_nobr+)/$1$2/gm;
    # don't forget about >> and <:.  In unmangled names global-scope modifier 
    # is not used, so <: will always be a digraph and requires no special treatment.
    # We also try to remove other parts that are better to be removed here than in other places
    # double-cv
    $result=~s/\bconst\s+const\b/const/gm;
    $result=~s/\bvolatile\s+volatile\b/volatile/gm;
    $result=~s/\bconst\s+volatile\b\s+const\b/const volatile/gm;
    $result=~s/\bvolatile\s+const\b\s+volatile\b/const volatile/gm;
    # Place cv in proper order
    $result=~s/\bvolatile\s+const\b/const volatile/gm;
    $Cache{"unmangled_Compact"}{$_[0]} = $result;
    return $result;
}

print unmangled_Compact("_ZN8wxModule14RegisterModuleEPS_")."\n";
print  unmangled_Compact("int main( char test, int input )")."\n";;
