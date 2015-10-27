use  MIME::Lite; 
mail_list();

sub mail_list{
    #exit 99 if(!@some_rule);
    my ($sec,$min,$hour,$day,$month,$year,@tmp)=localtime;     # 邮件加个时间戳
    ($min,$hour,$day,$month,$year) = (
        sprintf("%02d",$min),
        sprintf("%02d",$hour),
        sprintf("%02d",$day),
        sprintf("%02d",++$month),
        sprintf("%04d",$year+1900)
    );
    my $from_addr = 'zjqian@tnsoft.com.cn';               #发送方
    my $to_addr = 'zjqian@tnsoft.com.cn';          #接收方
    my $cc_addr = 'cc@xxx.com';                  #抄送
    my $subject = '邮件标题';     #邮件标题
    my $encode = 'quoted-printable';    #模块发送邮件内容时采用的编码方式
    my $data = "say hello\n";
    my $msg = MIME::Lite->new(
        From     => $from_addr,
        To       => $to_addr,
        Cc       => $cc_addr,
        Subject  => $subject,
        Type     => 'multipart/mixed'     # 指定总的内容为多种，如果要发送附件的话，就是这个模式
    );
    $msg->attach(
        Type    => 'text/html;charset=gb2312',     #指定邮件内容编码方式
        Encoding => $encode,
        Data    => qq{                   #接下来就是邮件中文了，简单的html编码，其中可以穿插perl变量
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
        </head>
        <boby>
          <h5>您好！</h5>
            <table border="1">
              <tr>
              <th>表格1</th><th>表格2</th><th>表格3</th>
              </tr>
            </table> 
          <hr />
          $data    #穿插一个变量，很方便
          <hr />
          <h5 align="right">ITEYE</h5>
          <h5 align="right">flw521521</h5>
          <h5 align="right">$year-$month-$day $hour:$min</h5>
        </boby>
        </html>
        },
    );
    $msg->send;
}


