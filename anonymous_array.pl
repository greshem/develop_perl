#!/usr/bin/perl

     @list = ( 	"999999","666699","ffffff","99cccc",
    			"999999","666699","ffffff","9999cc",
    			"669999","666699","ffffff","99cccc",
    			"cccccc","996666","ffffff","cccc99" );
    
     $set  = [ 	[ "999999","666699","FFFFFF","99CCCC", ],
          		[ "999999","666699","FFFFFF","9999CC", ],
           		[ "669999","666699","FFFFFF","99CCCC", ],
    			[ "CCCCCC","996666","FFFFFF","CCCC99"  ] 
			  ];
	print @list,"\n";;
    print $set,"\n";

	print "<table>\n";
	for (@{$set})
	{
		print "<tr>\n";
		for $color (@{$_})
		{
			print "<td bgcolor=".$color.">".$color."</td>";
		}	
		print "\n";
		print "</tr\n";
	}
	print "</table>\n";
