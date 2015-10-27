#!/usr/bin/perl
########################################################################
#获取所有的用户.
sub get_users()
{
	my @users;
	open(FILE, "/etc/subversion/passwd") or die("open file error \n");
	for(<FILE>)
	{
		if($_=~/(.*):.*/)
		{
			push(@users, $1);	
		}
	}
	return @users;
}

sub get_projects()
{
	my @projects;
	for(glob("/home/svn/*"))
	{
		if( ! -d $_) {next;}

		$name=$_;
		$name=~s/\/home\/svn\///g; 
		push(@projects, $name);
	}
	
	return @projects;
}
########################################################################
#超级用户超级项目.
sub root_group()
{
print <<EOF
[groups]
super = qianzhongjie, root
[important:/]
\@super =rw
EOF
;
}
root_group();
@projects= get_projects();
@users= get_users();

for $each (@projects)
{
	print "[".$each.":/]\n";
	for $each2 (@users)
	{
		print "\t".$each2,"=rw\n";
	}
}
print  STDERR "#redriect to  access-control \n";
