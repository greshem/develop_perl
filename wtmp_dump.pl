#!/usr/bin/perl
# for more information
     $template = "s l A32 A4 A32 A256 s2 l i2 i4 A20";
# determine the size of a record
      $recordsize = length(pack($template,( )));
# open the file
    open(WTMP,"/var/log/wtmp") or die "Unable to open wtmpx!\n";
# read through it one record at a time
while (read(WTMP,$record,$recordsize)) 
{
    ($ut_type,$ut_pid,$ut_line,$ut_id,$ut_user,$ut_host,$ut_e_termination,
        $ut_e_exit,$ut_session,$ut_tv_sec,$ut_tv_usec,$ut_addr,$ut_unused) =
          unpack($template,$record);

  print "type of login =>$ut_type
         pid of login process => $ut_pid
         init id => $ut_id
         user name => $ut_user
          hostname for remote login => $ut_host
          IP address of remote host => $ut_addr\n";
}
close(WTMP);
