#!/usr/bin/perl
use Template;
my $template=Template->new();
@array=qw(sect key value );
my $vars={
		table=>"form_output",
		fields=>\@array,
		};
       $template->process(\*DATA, $vars )
          || die $template->error();
  



__DATA__
<html>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<body>
<form name="form1" method="post" action="[%table%]_modify_ok.php" onSubmit="return checkadd()">
  <table width="50%" border="0" cellspacing="1" cellpadding="3" align="center">
    <tr> 
      <th colspan="2">[%table%]修改</th>
    </tr>
	
    [% FOREACH field IN fields%]

    <tr> 
      <td width="26%" align="right">[%field%] 修改：</td>
      <td width="74%"> 
        <input name="[%field%]" type="text" value="  [%field%]  " size="50" maxlength="100">
      </td>
    </tr>
   [%END%]
    
    
    
    <tr> 
      <td width="26%" align="right"> 
        <input type="submit" name="Submit" value="提交">
      </td>
      <td width="74%"> 
        <input type="reset" name="Reset" value="重置">
      </td>
    </tr>
  </table>
</body>
</form>
</html>
