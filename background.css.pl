#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
.top {
	background:url(top.gif} 0 0 no-repeat;
	width:200px;
	height:19px;
}

.bottom {
	background-image:url(bottom.gif);
}
.content{
background-color:#eeeeee;
}


