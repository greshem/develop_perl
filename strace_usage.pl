#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__


#2011_02_14_19:11:25 add by greshem
1. strace -s 4095 -v  /root/gf_find_tempfile_creator_20110213/readdir_recursive_stat_4_strace 
	-v will expand all the abbr system call argv. 

2. hex  oct 
	oct as default.
	#strace -x hex
	strace -s 4096 -v -x /bin/ls 

#2010_12_27_ add by greshem
1.  �� ϵͳ���õĻ�����ȫ�������� 
	����Ƚϳ��ã� ���ϵͳ���õĻ�����ȫ����ӡ����. 
	strace -s 4096   -p 10378 
	
	#strace the open sys call. 
	strace -e trace=open -p 11111
	
	strace -s 32    -p 10378 

#2010_12_23_ add by greshem

��Ҫ���ٵ�����. 
strace  -e trace=file  -p 13479     
strace -f -o configure-strace.txt -e execve ./configure ���� execve ����. 
########################################################################
-eopen�ȼ��� -e trace=open,��ʾֻ����open����.��-etrace!=open��ʾ���ٳ���open�������������.�������ر�ķ��� all �� none.
ע����Щshellʹ��!��ִ����ʷ��¼�������,����Ҫʹ�ãܣ�.
-e trace=set
ֻ����ָ����ϵͳ����.����:-e trace=open,close,rean,write��ʾֻ�������ĸ�ϵͳ����.Ĭ�ϵ�Ϊset=all.
-e trace=file
ֻ�����й��ļ�������ϵͳ����.
-e trace=process
ֻ�����йؽ��̿��Ƶ�ϵͳ����.
-e trace=network
���ٺ������йص�����ϵͳ����.
-e strace=signal
�������к�ϵͳ�ź��йص�ϵͳ����
-e trace=ipc
�������кͽ���ͨѶ�йص�ϵͳ����
-e abbrev=set
�趨strace�����ϵͳ���õĽ����.-v �Ⱥ� abbrev=none.Ĭ��Ϊabbrev=all.
-e raw=set
��ָ����ϵͳ���õĲ�����ʮ��������ʾ.
-e signal=set
ָ�����ٵ�ϵͳ�ź�.Ĭ��Ϊall.��signal=!SIGIO(��signal=!io),��ʾ������SIGIO�ź�.
-e read=set
�����ָ���ļ��ж���������.����:
-e read=3,5
-e write=set
//########################################################################

���gdb �� ��GDB �����ȡ һ�����̵����е��̣߳� info threads ���֮�� ����ȡ
PID Ȼ�� strace -p pid Ȼ�� �Ϳ��Ը���ÿ���߳���. ����һ�����е��̣߳� ��ʱ֮�� Ȼ���ٰ� STRACE ɱ������ Ȼ�� ���Ը��ٳ���ÿ�������ض�ʱ�̵�IO�� ��Ѱ�ң� ÿ�������Ľ��̣�  

