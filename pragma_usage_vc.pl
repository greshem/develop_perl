#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#pragma comment(lib,"./UnitLib.lib")
########################################################################

#pragma comment(lib, "imagehlp.lib")
#pragma comment(lib, "comctl32.lib")
#pragma comment(lib, "shell32.lib")
#pragma comment(lib, "comdlg32.lib")
#pragma comment(lib, "winspool.lib")
#pragma comment(lib, "advapi32.lib")
########################################################################


#pragma comment(linker, "/SECTION:PECMD,")
#pragma comment(linker, "/MERGE:.text=PECMD")
#pragma comment(linker, "/MERGE:.rdata=PECMD")
#pragma comment(lib, "ShLwAPI.lib")
#pragma comment(lib, "Version.lib")
#
1.#pragma warning(disable: n)
��ĳ��������ΪʧЧ
2.#pragma warning(default: n)
��������ΪĬ��

#pragma warning(disable: 4996) �� strncpy ����ȫ�ľ���ȥ����

########################################################################

