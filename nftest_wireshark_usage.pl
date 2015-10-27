#!/usr/bin/perl
#2011_03_21_14:34:34   星期一   add by greshem
use strict;
my $func;
my $subfunc;
my $main_comment;
my $sub_comment;
foreach (<DATA>)
{
	#print $_;
	if($_=~/^case\s+(\S+).*(\/\*.*\*\/).*/)
	{
		$main_comment=$2;
		print "ncp.func ==" .$1."\n";
		$func=$1;
		#print "# $main_comment\n";
	}
	elsif ($_=~/^\s+case\s+(\S+).*(\/\*.*\*\/).*/)
	{
		$subfunc=$1;
		$sub_comment=$2;
		print "dftest ncp.func == $func and  ncp.subfunc == ".$subfunc."\n";	
		#print "# $sub_comment\n";
	}
}
__DATA__

# ncp.status != 0; 错误的返回码. 
# ncp.file_name contains "mlmark" ; ncp的请求的文件包含 mlmark 
# 
# ncp.func != 0x49 and ncp.func !=0x48 ; 49 读 48 是写. 
# ncp.func==0x65; 
# 
# 下面的 case 的第一列 都是 ncp.func
# 	第二列是 ncp.subfunc
handle_ncp_server(void)
{
case 0x3 : 
case 0x4 : { /* Lock File Set  */
case 0x5 :    /* Release File  */
case 0x7 : {  /* Clear File, removes file from logset */
case 0x6 :    /* Release File Set */
case 0x8 :  { /* Clear File Set  */
case 0x9 :  { /* Log Logical Record     |9 0x09 \011 HT|  */
case 0xa :  { /* Log Logical Record Set  |10 0x0a \012 LF|  */
case 0xb :     /* Clear Logical Record ?? */
/* case 0xc :*/ { /* Release Logical Record ?? */
case 0xe :   /* Clear Logical Record Set   */
case 0xd : { /* Release Logical Record Set */
case 0x12 : { /* Get Volume Info with Number    |18 0x12 \022 DC2|   */
case 0x13 : { /* Get connection ?? */
case 0x14 : { /* GET DATE und TIME  |20 0x14 \024 DC4| */
case 0x15 :
case 0x16 :  /*			|22 0x16 \026 SYN|*/
		case 0 : {
		case 0x1 : {
		case 0x2 : { /* Scan Direktory Information */
		case 0x3 : { /* Get Direktory Rights */
		case 0x4 : { /* Modify Max Right MAsk */
		case 0x5 : { /* Get Volume Number 0 .. 31 */
		case 0x6 : { /* Get Volume Name from 0 .. 31 */
		case 0xa : { /* create directory  */
		case 0xb : { /* delete dirrctory */
		case 0xd : { /* Add Trustees to DIR  */
		case 0xe : { /* remove trustees */
		case 0xf : { /* rename dir */
		case 0x12 : { /* Allocate Permanent Dir Handle */
		case 0x13 : { /* Allocate Temp Dir Handle */
		case 0x16 : { /* Allocate Special Temp Dir Handle */
		case 0x14 : { /* deallocate Dir Handle */
		case 0x15 : { /* liefert Volume Information */
		case 0x18 : { /* restore directory handle */
		case 0x19 : {
		case 0x1a : { /* Get Pathname of A Volume Dir Pair */
		case 0x1e : { /* SCAN a Directory, e.g. used by ndir.exe */
		case 0x1f : { /* SCAN a root dir ????  */
		case 0x20 : { /* scan volume user disk restrictions */
		case 0x21 : { /* change Vol restrictions for Obj */
		case 0x22 : { /* remove Vol restrictions for Obj */
		case 0x25 : { /* Set Entry, Set Directory File Information 
		case 0x26 : { /* Scan file or Dir for ext trustees */
		case 0x27 : { /* Add Ext Trustees to DIR or File */
		case 0x28 : { /* Scan File Physical  ??? */
		case 0x29 : { /* read  volume restrictions for an object */
		case 0x2a : { /*  Get Eff. Rights of DIR's and Files */
		case 0x2b : { /* remove ext trustees */
		case 0x2c : { /* Get Volume and Purge Information */
		case 0x2d : { /* Get Direktory Information */
		case 0x2e : { /* rename file */
		case 0x2f : { /* Fill namespace buffer */
		case 0x30 : { /* Get Name Space Directory Entry */
		case 0x33 : { /* Get Extended Volume Information */
case 0x17 : {  /* FILE SERVER ENVIRONMENT   |23 0x17 \027 ETB|*/
		case 0x02: {
		case 0x14: { /* Login Objekt, unencrypted passwords */
		case 0x18: { /* crypt_keyed LOGIN */
		case 0x0f: { /* Scan File Information  */
		case 0x10: { /* Set  File Information  */
		case 0x47: { /* SCAN BINDERY OBJECT TRUSTEE PATH */
		case 0x64: { /* create queue */
		case 0x68: { /* create queue job and file old */
		case 0x79: { /* create queue job and file     */
		case 0x6C: { /* Get Queue Job Entry old */
		case 0x7A: { /* Read Queue Job Entry */
		case 0x69: { /* close file and start queue old ?? */
		case 0x7f: { /* close file and start queue */
		case 0x71: { /* service queue job (old) */
		case 0x7c: { /* service queue job */
		case 0x72: { /* finish queue job (old) */
		case 0x73: { /* abort queue job (old) */
		case 0x83: { /* finish queue job */
		case 0x84: { /* abort queue job */
		case 0xf3: { /* Map Direktory Number TO PATH */
		case 0xf4: { /* Map PATH TO Dir Entry */
} /* case 0x17 */
case 0x18 : { /* End of Job    |24 0x18 \030 CAN|*/
case 0x19 : { /* logout, some of this call is handled in ncpserv.   |25 0x19 \031 EM|*/
case 0x1a : { /* Log Physical Record   */
case 0x1e : { /* Clear Physical Record */
case 0x1f : { /* Clear Physical Record Set, DUMMY  */
case 0x20 : { /* Semaphore   |32 0x20 \040  | space */
case 0x21 : { /* Negotiate Buffer Size,  Packetsize |33 0x21 \041 !| */
case 0x22 : { /* div TTS Calls */
case 0x23 : { /* div AFP Calls */
case 0x3b : { /* commit file to disk        */
case 0x3d : { /* commit file                   |61 0x3D \075 =|*/
case 0x3e : { /* FILE SEARCH INIT   |62 0x3E \076 >|*/
case 0x3f : { /* file search continue   |63 0x3F \077 ?|*/
case 0x40 : { /* Search for a File  |64 0x40 \100 @|*/
case 0x41 : { /* open file for reading  |65 0x41 \101 A|*/
case 0x42 : { /* close file  |66 0x42 \102 B|*/
case 0x43 : { /* creat file, overwrite if exist  |67 0x43 \103 C| */
case 0x4D : { /* create new file                 |77 0x4D \115 M| */
case 0x44 : { /* file(s)   delete   |68 0x44 \104 D| */
case 0x45 : { /* rename file  |69 0x45 \105 E|*/
case 0x46 : { /* set file attributes  |70 0x46 \106 F|*/
case 0x47 : { /* move pointer to end of file ???? |71 0x47 \0107 G| */
case 0x48 : { /* read file   |72 0x48 \110 H| */
case 0x49 : { /* write file  |73 0x49 \111 I|*/
case 0x4a : { /* File SERVER COPY  |74 0x4A \112 J| */
case 0x4b : { /* set date of file, file will be closed later   |75 0x4B \113 K|*/
case 0x4c : { /* open file  		|76 0x4C \114 L|*/
case 0x56 : { /* some extended atrribute calls */
case 0x57 : { /* some new namespace calls  |87 0x57 \127 W|*/
case 0x5f : { /* ????????????? UNIX Client */
case 0x61 : { /* */
case 0x65 : { /* Packet Burst Connection Request */
case 0x68 : { /* NDS NCP,  NDS Fragger Protokoll ??  */
//end case of    handle_ncp_serv(void)
}


