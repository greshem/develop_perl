use WWW::Search ;;

#search_with_on_engine("AOL");
#search_with_on_engine("EBayGlobal");
#search_with_on_engine("FolioViews");
#search_with_on_engine("Crawler");
#search_with_on_engine("PRWire");
#search_with_on_engine("Verity");
#search_with_on_engine("Reuters");
#search_with_on_engine("Lycos");
#search_with_on_engine("Search97");
#search_with_on_engine("Simple");
#search_with_on_engine("MetaCrawler");
#search_with_on_engine("UrbanDictionary");

#search_with_on_engine("Google");

search_with_on_engine("Ask");

search_with_on_engine("Brassring");
search_with_on_engine("SFgate");
search_with_on_engine("Newturfers");
search_with_on_engine("ExciteForWebServers");
search_with_on_engine("Translator");
search_with_on_engine("Gopher");
search_with_on_engine("RpmFind");
search_with_on_engine("VoilaFr");
search_with_on_engine("NetFind");
search_with_on_engine("WatchNet");
search_with_on_engine("AltaVista");
search_with_on_engine("Metapedia");
search_with_on_engine("HotFiles");
search_with_on_engine("PubMed");
search_with_on_engine("AlltheWeb");
search_with_on_engine("Yandex");
search_with_on_engine("AP");
search_with_on_engine("RPMPbone");
search_with_on_engine("Rambler");
search_with_on_engine("CraigsList");
search_with_on_engine("Fireball");
search_with_on_engine("WashPost");
search_with_on_engine("MSIndexServer");
search_with_on_engine("Profusion");
search_with_on_engine("Nomade");
search_with_on_engine("DrugBank");
search_with_on_engine("Scrape");
search_with_on_engine("EbayUK");
search_with_on_engine("HGNC");
search_with_on_engine("Livelink");
search_with_on_engine("Timezone");
search_with_on_engine("FirstGov");
search_with_on_engine("MSN");
search_with_on_engine("Monster");
search_with_on_engine("PLweb");
search_with_on_engine("PubMedLite");
search_with_on_engine("Jobserve");
search_with_on_engine("Torrentz");
search_with_on_engine("Null");
search_with_on_engine("Ebay");
search_with_on_engine("TheITJobBoard");
search_with_on_engine("Dice");

sub dump()
{
	#my @asEngines = sort &WWW::Search::installed_engines();
	my @asEngines = &WWW::Search::installed_engines();

	for (@asEngines)
	{
		if($_!~/:/)
		{
		#print $_."\n";
			print "search_with_on_engine(\"$_\");\n";
		}
	}
}
#local $" = ', ';
#print (" + These WWW::Search backends are installed: @asEngines\n");
# Choose a backend at random (yes, this is rather silly):
#my $oSearch = WWW::Search->new($asEngines[rand(scalar(@asEngines))]);
#

sub search_with_on_engine($)
{

	use WWW::Search;
	(my $name)=@_;
	my $oSearch = new WWW::Search($name);
	#my $sQuery = WWW::Search::escape_query("+sushi restaurant +Columbus Ohio");
	my $sQuery = WWW::Search::escape_query("+linux");
	$oSearch->native_query($sQuery);
	while (my $oResult = $oSearch->next_result())
	{ 
		print $oResult->url, "\n"; 
	}
}
