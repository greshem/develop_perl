#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_04_27_ 星期三 add by greshem

#==========================================================================
#format 格式化.
wxString msg;
msg.Printf(_("Can not write image header information for disk \"%s\""), DiskName.c_str());
去掉多余的引号, 更加直接了.
msg.Printf(_("Can not write image header information for disk %s"), DiskName.c_str());
wxMessageBox(msg, _("Error"));
#==========================================================================
转换.
 wxString        strServiceName( _("Richtech Diskless XP IO Service"), *wxConvCurrent ) ;
#==========================================================================
lower
 wxString strMode = wxString(sMode, *wxConvCurrent).MakeLower();
#==========================================================================
空字符串 
wxString tmp=wxEmptyString
#==========================================================================
#放入到char *
wxString strDiskName;
strcpy( RtwxCommPacket.Parameters.AddRestorePoint.tszVDiskName, strDiskName.mb_str());
#==========================================================================
std::string 转 wxString 
        //1. std::string -> wxString
        string   strstring = "string";
        wxString  wxstr = wxString( strstring.c_str(), wxConvUTF8);
#==========================================================================
char * 转 wxString 
 wxString  wxstr = wxString( "test", wxConvUTF8);
#==========================================================================
//2.  wxString -> std::string
string tmp(wxstr.mb_str());
cout<< tmp <<endl;
########################################################################
转换
char*->TCHAR*
       char *ansii_string = "some text";
       int size = strlen(ansii_string);
       TCHAR unicode_string[30];
       mbstowcs(unicode_string, ansii_string, size+1);
#==========================================================================
wxString->TCHAR*
       wxString wx_string=_T("wx string");
       TCHAR wchar_string[30];
       wcscpy(wchar_string,wx_string.wc_str());

#==========================================================================
wxString->char*
       wxString wx_string=_T("wx string");
       char ansi_string[30];
       strcpy(ansi_string,wx_string.mb_str());

#==========================================================================
TCHAR*->char*
       TCHAR* unicode_string=_T("unicode string");
       int size= wcslen(unicode_string);
       char ansi_string[30];
       wcstombs(ansi_string, unicode_string, size+1);

#==========================================================================
TCHAR*->wxString
       TCHAR *tchar_string = _T("some text");
       wxString wx_string(tchar_string,wxConvUTF8);

#==========================================================================
char*->wxString
       char *ansii_string = "some text";
       wxString wx_string(ansii_string,wxConvUTF8);
#==========================================================================


