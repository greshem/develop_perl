use  MIME::Lite; 
mail_list();

sub mail_list{
    #exit 99 if(!@some_rule);
    my ($sec,$min,$hour,$day,$month,$year,@tmp)=localtime;     # �ʼ��Ӹ�ʱ���
    ($min,$hour,$day,$month,$year) = (
        sprintf("%02d",$min),
        sprintf("%02d",$hour),
        sprintf("%02d",$day),
        sprintf("%02d",++$month),
        sprintf("%04d",$year+1900)
    );
    my $from_addr = 'zjqian@tnsoft.com.cn';               #���ͷ�
    my $to_addr = 'zjqian@tnsoft.com.cn';          #���շ�
    my $cc_addr = 'cc@xxx.com';                  #����
    my $subject = '�ʼ�����';     #�ʼ�����
    my $encode = 'quoted-printable';    #ģ�鷢���ʼ�����ʱ���õı��뷽ʽ
    my $data = "say hello\n";
    my $msg = MIME::Lite->new(
        From     => $from_addr,
        To       => $to_addr,
        Cc       => $cc_addr,
        Subject  => $subject,
        Type     => 'multipart/mixed'     # ָ���ܵ�����Ϊ���֣����Ҫ���͸����Ļ����������ģʽ
    );
    $msg->attach(
        Type    => 'text/html;charset=gb2312',     #ָ���ʼ����ݱ��뷽ʽ
        Encoding => $encode,
        Data    => qq{                   #�����������ʼ������ˣ��򵥵�html���룬���п��Դ���perl����
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
        </head>
        <boby>
          <h5>���ã�</h5>
            <table border="1">
              <tr>
              <th>���1</th><th>���2</th><th>���3</th>
              </tr>
            </table> 
          <hr />
          $data    #����һ���������ܷ���
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


