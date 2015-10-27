#2013_05_22   ÐÇÆÚÈý   add by greshem
use Win::Hivex;
use Win::Hivex::Regedit qw(reg_import);


my $h_sys = Win::Hivex->open ("system", write => 1)
	or v2vdie __x('Failed to open {hive} hive: {error}',
                      hive => 'system', error => $!);
my $h_soft = Win::Hivex->open ($soft_local, write => 1)
	or v2vdie __x('Failed to open {hive} hive: {error}',
                      hive => 'software', error => $!);

_add_service_to_registry($h_sys, "ControlSet001");


# See http://rwmj.wordpress.com/2010/04/29/tip-install-a-service-in-a-windows-vm/
sub _add_service_to_registry
{
    my $h = shift;
    my $current_cs = shift;

    # Make the changes.
    my $regedits = <<REGEDITS;
[HKEY_LOCAL_MACHINE\\SYSTEM\\$current_cs\\services\\rhev-apt]
"Type"=dword:00000010
"Start"=dword:00000002
"ErrorControl"=dword:00000001
"ImagePath"="c:\\\\Temp\\\\V2V\\\\rhsrvany.exe"
"DisplayName"="RHSrvAny"
"ObjectName"="LocalSystem"

[HKEY_LOCAL_MACHINE\\SYSTEM\\$current_cs\\services\\rhev-apt\\Parameters]
"CommandLine"="cmd /c \\"c:\\\\Temp\\\\V2V\\\\firstboot.bat\"\\"
"PWD"="c:\\\\Temp\\\\V2V"
REGEDITS

    my $io = IO::String->new ($regedits);

    local *_map = sub {
        if ($_[0] =~ /^HKEY_LOCAL_MACHINE\\SYSTEM(.*)/i) {
            return ($h, $1);
        } else {
            die "can only make updates to the SYSTEM hive (key was: $_[0])\n"
        }
    };

    reg_import ($io, \&_map);
}
########################################################################
