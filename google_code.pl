#!/usr/bin/perl


use Net::Google::Code;

my $project = Net::Google::Code->new( project => 'goagent' );
$project->load(); # load its metadata, e.g. summary, owners, members, etc.

print join(', ', @{ $project->owners } );


#return a Net::Google::Code::Issue object, of which the id is 30
print $project->issue( id => 30 );


exit(-1);
# return a Net::Google::Code::Download object, of which the file name is
# 'FooBar-0.01.tar.gz'
$project->download( name => 'FooBar-0.01.tar.gz' );

# return a Net::Google::Code::Wiki object, of which the page name is 'Test'
$project->wiki( name => 'Test' );

# loads all the downloads
$project->load_downloads;
my $downloads = $project->downloads;

# loads all the wikis
$project->load_wikis;
my $wikis = $project->wikis;
