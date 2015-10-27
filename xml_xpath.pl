use XML::XPath;
use XML::XPath::XMLParser;

my $xp = XML::XPath->new(filename => 'slimFTPd31.xml');

#my $nodeset = $xp->find('/VisualStudioProject/Files/Filter[1]/File'); # ���е�cpp�ļ�
my $nodeset = $xp->find('/VisualStudioProject/Files/Filter[2]/File'); # ���е�header�ļ�
#my $nodeset = $xp->find('/VisualStudioProject/Files/Filter[3]/File'); # ������Դ�ļ�

foreach my $node ($nodeset->get_nodelist) 
{
	#print "FOUND\n\n",
	$str=$node->toString();
	$str=~s/\n//g;
	print $str."\n";
   	#XML::XPath::XMLParser::as_string($node),"\n\n";
}
#���е�·��

__DATA__

/VisualStudioProject
/VisualStudioProject/Platforms
/VisualStudioProject/Platforms/Platform
/VisualStudioProject/ToolFiles
/VisualStudioProject/Configurations
/VisualStudioProject/Configurations/Configuration
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/Configurations/Configuration/Tool
/VisualStudioProject/References
/VisualStudioProject/Files
/VisualStudioProject/Files/Filter
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Files/Filter
/VisualStudioProject/Files/Filter/File
/VisualStudioProject/Globals
