#!/usr/bin/perl
#2011_09_02   ������   add by greshem
#���� �ŵ� ��lnk ��Ŀ¼������, ���Ի�ȡ ��Ӧ�Ŀ�ݷ�ʽ����Ϣ
########################################################################
#C:\Documents and Settings\All Users\����ʼ���˵�\����\Development Kits\Windows DDK 2600\Build Environments\\
#Ȼ�� ����ddk ��lnk �ķ��� ȷʵ���Ի�ȡ �����ٵ���Ϣ
########################################################################
#		��ݷ�ʽ��һЩ����.
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

