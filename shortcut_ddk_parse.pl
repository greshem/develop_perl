#!/usr/bin/perl
#2011_09_02   星期五   add by greshem
#程序 放到 有lnk 的目录下运行, 可以获取 对应的快捷方式的信息
########################################################################
#C:\Documents and Settings\All Users\「开始」菜单\程序\Development Kits\Windows DDK 2600\Build Environments\\
#然后 对于ddk 的lnk 的分析 确实可以获取 到不少的信息
########################################################################
#		快捷方式的一些参数.
#      $LINK->{'File'}
#      $LINK->{'Path'}               $LINK->Path()
#      $LINK->{'ShortPath'}
#      $LINK->{'WorkingDirectory'}   $LINK->WorkingDirectory()
#      $LINK->{'Arguments'}          $LINK->Arguments()
#      $LINK->{'Description'}        $LINK->Description()
#      $LINK->{'ShowCmd'}            $LINK->ShowCmd()
#      $LINK->{'Hotkey'}             $LINK->Hotkey()
#      $LINK->{'IconLocation'}       $LINK->IconLocation()
#      $LINK->{'IconNumber'}         $LINK->IconNumber()

use Win32::Shortcut;
for (glob("*.lnk"))
{
	print "###########################\n";
	#$LINK->Load("Win 2K Checked Build Environment.lnk");
	$LINK = Win32::Shortcut->new();
	$LINK->Load("$_");
	print "$_\n";
	print "$LINK->{'Path'} $LINK->{'Arguments'} \n";
	$LINK->Close();
}

