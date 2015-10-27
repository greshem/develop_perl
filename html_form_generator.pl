#!/usr/bin/perl
use Template;
my $template=Template->new();
@array=qw(aa bb cc dd ee ff gg hh ii ll mm oo pp );
my $vars={
		table=>"form_output",
		fields=>\@array,
		};
       $template->process(\*DATA, $vars )
          || die $template->error();
  



__DATA__
<form name="form1" method="post" action="[%table%]_modify_ok.php" onSubmit="return checkadd()">
  <table width="50%" border="0" cellspacing="1" cellpadding="3" align="center">
    <tr> 
      <th colspan="2">[%table%]�޸�</th>
    </tr>
	
    [% FOREACH field IN fields%]

    <tr> 
      <td width="26%" align="right">[%field%] �޸ģ�</td>
      <td width="74%"> 
        <input name="[%field%]" type="text" value="  [%field%]  " size="50" maxlength="100">
      </td>
    </tr>
   [%END%]
    
    
    
    <tr> 
      <td width="26%" align="right"> 
        <input type="submit" name="Submit" value="�ύ">
      </td>
      <td width="74%"> 
        <input type="reset" name="Reset" value="����">
      </td>
    </tr>
  </table>
</form>
