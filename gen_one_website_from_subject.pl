#!/usr/bin/perl
use Template;


#$subject=shift;
$subject=shift or die("Usage: $0 catalog\n");

@a=qw(11 22 33 44 55 66);

my $var= {
	subject=>$subject,
	array=>\@a,
};
###############################################################################
my $config=undef;
my $template = Template->new();
$template->process(\*DATA , $var,  $subject.".php") || die $template->error();



__DATA__
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title> [% subject %] </title>
</head>
<body>

<select name="date" width=100 onchange="window.open('./[% subject %].php?date='+options[selectedIndex].value);" class="font-12" name="menu1">

			<option >_____</optinon>
	<?php
		foreach (glob("2010*") as $file)
		{
			if(preg_match("/(\d+_\d+_\d+).*\..*/", $file, $match))
			{
				echo "	<option value=".$match[1].">".$file."</option>\n";
			}
		}	

	?>	
</select>			

<?
	$main_file="";
	if(! isset($_GET['date']))
	{
		$main_file=strftime("%Y_%m_%d", time()).".txt";
	}
	else
	{
		$main_file=$_GET['date'].".txt";
		if( ! preg_match("/\d+_\d+_\d+/", $main_file))
		{
			$main_file=strftime("%Y_%m_%d", time()).".txt";
			die ("<h3 sytle=\"color:rgb(255, 0, 0);\"> input date not corrent </h3>\n");
		}
	}
	
	if( ! is_file($main_file))
	{
		file_put_contents($main_file,  strftime("%Y_%m_%d_%T", time()), FILE_APPEND);
	}
	$line_number="";
	function get_line_number()
	{
		global $line_number;
		global $main_file; 
		$tmp=file_get_contents($main_file);
		$file=split("\n", $tmp);	

		$file=array_reverse($file);
	//	print_r($file);
		$arr=preg_split("/\s+/", $file[1]);
		//print_r($arr);
		if(preg_match("/^(\d+)(.*)/", $arr[0] , $match))
		{
			//$line_number=$arr[0];
	//		print_r( $match);
			$line_number=$match[1];
			$line_number++;
		}
		else
		{
			$line_number="999999";
		}

	}
	function show()
	{
		global $line_number;
		global $main_file; 
		$tmp=file_get_contents($main_file);
		$file=split("\n", $tmp);	

		$file=array_reverse($file);			
		foreach($file as $line)
		{
			echo $line."<br>";
		}

	}
	//##################################################
	//###############################################################################
	get_line_number();

	//POST 为空
	if(!isset($_POST['Submit']))
	{
		//GET不为空， 需要添加了。 
		echo "line_number".htmlspecialchars($line_number)."<br>";
		if(isset($_GET['add']))
		{
?>
			<form name="form1" method="post" action="[% subject %].php" onSubmit="return checkadd()">
			  <table width="50%" border="0" cellspacing="1" cellpadding="3" align="center">
				<tr> 
				  <th colspan="2">添加 [% subject %]</th>
				</tr>
				<tr> 
				  <td width="26%" align="right">[% subject %]</td>
				  <td width="74%"> 
					<input name="[% subject %]" type="text" value="<?php echo $line_number++.". "; ?>" size="50" maxlength="100">
				  </td>
				</tr>
				<tr> 
				  <td width="26%" align="right"> 
					<input type="submit" name="Submit" value="提交">
				  </td>
				  <td width="74%"> 
					<input type="reset" name="Reset" value="重置">
				  </td>
				</tr>
			  </table>
			</form>
		<?
			}
		?>
<?php
		echo strftime("%Y_%m_%d_%T", time())."<br>";//localtime(time()))."<br>";
		echo "<a href=[% subject %].php?add=yes > add </a><br>\n";
		
		show();
	}
	else
	{
			
		echo strftime("%Y_%m_%d_%T", time())."<br>";//localtime(time()))."<br>";
		file_put_contents($main_file, $_POST['[% subject %]']."\n",  FILE_APPEND);

		echo "<a href=[% subject %].php?add=yes > add </a><br>\n";
		show();
	}
	
?>	

</body>
</html>
