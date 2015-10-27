#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_01_06_ add by greshem
��ӽ϶�Ķ���. 

bu MyFunction+0x47 ".dump c:\mydump.dmp; g"  

.opendump (Open Dump File)  dump g (Go)  dump-z  dump  

#2010_12_23_ add by greshem
1 ����dump �ļ�
dbg: generate-core-file 
cdb: .dump bbbbb
cdb: .writemem �� dump ��Щ���� ָ���ڴ���С 
cdb: dumpcab ��dump ѹ���� cab �ļ�
cpp: ���Բο����crashdump.zip  �����д��. 
ollgdb: 
  
2. attach �������еĽ��� 
������ִ��
cdb -p 4008 
gdb --pid=4008  
���� ������֮��
cdb .attach  .detach
gdb attach
gdb ֱ���˳��Ϳ�����.  

3. �鿴��ջ, ������Ϣ
wt ������̫��ȷ.  
cdb: wt (Trace and Watch Data)
gdb: where  
gdb: bt 
bt �� where ���÷������ࡣ 
cdb: ! stacks 
gdb: info frames

4. �߳� 
gdb:  info threads 
cdb:  ~ 

5. ��ӡ����
gdb: x /10  addr  
gdb: print  
cdb:  dd da dc ...
cdb: .formats 0x33 .formats @eax 

6. �����ļ� src
gdb: �Լ�����
cdb: .srvpath

7. �¶ϵ�
cdb: bp winmain bp main
gdb: b main

8. ��������
gdb: continue run 
cdb: go 

9. �г��ϵ�
gdb: info breakpoints 
cdb:    .bpcmds
cdb: bl 

10

6. ���ű�
cdb:  x ��ӡ���ű� 
cdb:  x ntdll!* ��ӡ��ntdll ���еĺ�����  ע���ʽ. 
gdb:  break ntdll ֮��table �����г����еĺ�����. 

10. ��һ�У� ��һ��ָ��
gdb: next
cdb: p pr l+t l+s 
cdb: p(step)
cdb: ���뵽�������õ�ʱ�� ��Ҫ�� pc  (step to next call) 
cdb: t (step into ) �����õ�ָ��.  

11. enter, �ظ���һ��ָ��
gdb: enter �س���
cdb: enter �س��� 

12. 
  

7. ʱ�� ��ǰʱ��
cdb: .time 
cdb: .ttime ; thread ʱ��
gdb: call time() 

########################################################################
����: p time ��ȡ ��ַ 
$3 = {<text variable, no debug info>} 0x7feafaf22820 <time>
call   0x7feafaf22820() ;

8. call
gdb: call
cdb: .call  
.call ���﷨��gdb ����Щ��ͬ�� ��Ҫ����һ��. 
cdb: ����ͨ�� .call time() ����ȡʱ�䣬 ΢���ṩ�ķ��ű� û���ṩ��������Ϣ��  ������ε��� time  ���Բο��ĵ�, <<windbg_Ƭ�δ���_ִ��_good.txt>> 

8.1  ���Ƭ��ִ��
cdb: �ο� <<windbg_Ƭ�δ���_ִ��_good.txt>> 

13. ���ط��ű� 
gdb: gdb ������ʱ��  --readnever 
	����gdb ֮��:  symbol-file 
cdb:  

14. �г����еĺ���
gdb:  break  �� �� table �ͻ�������еķ�����. 
cdb: 

15.  echo ��ӡ
gdb: echo "this is the line \n"
cdb: .echo  

16. shell cmdline ������
cdb: .pcmd 
cdb:  .shell "ipconfig"
gdb: shell "ifconfig" 

17.  ����� 
gdb: disassemble
cdb: a  uf  
cdb: u ;��������Ƚ���ȷ. 
cdb: �����һ������,  uf, ex: uf msvcrt!time

18.   ��ʾ����
gdb: list
cdb: ls lsa lsc

19. �˳�
gdb: exit
gdb: qq

20. trace
cdb: t
gdb: trace
gdb: trace ��д���ƣ� ���ڵİ汾�� ����ͨ��������ִ�У� ��Ҫ�������̣� һ������ һ���ͻ���. 

21.   �����ϵ�
cdb:   chm ������������棬 ����"Conditional Breakpoint" �����ҵ���Ӧ����Ϣ
cdb:  ����gui �ĳ�������½���Ԫ���ϵĶϵ㣿 
gdb:   

22. ��նϵ�, disable�ϵ�
cdb: bc
cdb: db(breakpoint disable)
gdb: delete

23.   ������� deadlock
cdb: !deadlock 
gdb: 

24. �к���Ϣ���� 
cdb: .lines �����к���Ϣ. 
gdb: 

25.  ��չģ��
cdb: .load kdext.dll 
	dlls lmi lm 
gdb: gdb û����չģ��ĸ���

26 stl
cdb:  !stl 
gdb: ������֧�� stl ��

27. ptype  ������Ϣ
gdb: ptype 
cdb: dt 

28. �ֲ����� 
cdb: dv
cdb: !for_each_local 
gdb: info locals
cdb: x ��ʾ��ǰ��������ľֲ�����. 

29.  �ڴ���� memset
gdb:  call memset()
cdb: f fp (fill memory)

30. �г����н���
�� windbg ��Ŀ¼���ŵ� PATH��������ȥ�� 
cdb:  .shell(tlist)
cdb: .tlist
gdb:  shell ps -el
gdb:	file pid 
gdb: 	attach pid 
gdb: �Ϳ���attache ��ȥ�ˣ� ���� ���̺����� exec-file �ļ�����Ӧ. 

31.  ���� function 
cdb: .fnent 77f9f9e7
gdb: ptype funptr_addr

32. �г�����ģ��
gdb:  info files 
cdb: lm  
cdb: lm v ������ϸ

33. watch �ڴ�ϵ� Ӳ���ϵ�
cdb: ga
gdb: wwatch watchw  watch

34. stack ջ frame 
cdb: k kv kp kP 
cdb: dv Ҳ�ǲ鿴��ջ�ռ������
cdb: .frame n Ҳ�����л�������. 
gdb: info frames, frame n 
cdb: .frame 2 ͨ�� k  ����ʾ ��ջ�ռ䣬 ����ע�� ��ջ�� number û����ʾ.

35.  ���� cls
cdb:.cls
gdb:cls 

36 ����
gdb: help
cdb: 
!Ext.help
!Exts.help
!Uext.help
!Ntsdexts.help
!logexts.help
!clr10\sos.help
!wow64exts.help
!Wdfkd.help
!Gdikdx.help .

37. ���ű�
cdb: !sym ld ln .sympath .symopt .symfix .reload 
gdb: 

38.����
cdb: .srcpath .srcnoisy .lines  

39. thread �߳�
cdb: ~  ~e ~f ~u  !tls .ttime
gdb: info threads;  thread 1 ; 

40. hook, �����
cdb: bu MyFunction+0x47 ".dump c:\mydump.dmp; g"  
gdb: ��Ҫ�õ� gdb �����hook �Ĺ���. 

41. ������������
cdb: ln
gdb: a Ȼ��tab ���� 

42. ���Ų���ȫƥ����� ��ƥ��
cdb: reload /i    
gdb:  gdb һ������CRC �ļ����ԾͲ��� ���ط����ļ��� 

43. �鿴��
gdb: 
Ĭ������£���GDB���ǲ��ܲ鿴���ֵ������ģ���ͨ�����·���������ԴﵽĿ�ģ�
����Դ����ʱ�����ϡ�-g3 -gdwarf-2��ѡ���ע�ⲻ�ǡ�-g��������Ϊ��-g3�����鿴���ֵʹ������p����Ͳ鿴������ֵ�ķ�����ͬ�������鿴��Ķ��壬ʹ�� ��-macro expand������� 

43 ������ ������ һ��������
gdb: source ����������source�����ɣ���source���Ĳ���Ϊһ������һ��������ļ��� 

44. �����������ϵ� , 
gdb: 
ʹ�á�rb��������ִ�С�rb��ʱ�������������ʾ�����к�������һ���ϵ㣬��rb��������Խ�һ������������ʽ�Ĳ����������Է���������ʽ�����к�����ϵ� 

45. hook print
gdb: 
����������ִ��ĳ������ǰ���������ִ��ĳ����ĳЩ�����������print����ǰ��ʾһ�� ��----------������
define hook-print
echo ----------\n
end


46. �г����ţ� �г���ǰģ��
cdb: lm  
cdb: x *!  

47 ����ת���ļ�
windows:  kd -y SymbolPath -i ImagePath -z DumpFileName
cdb: cdb -y SymbolPaht -i ImagePath -z DumpFileName 
cmdline: .opendump g
gdb: core-file  core.2233

48.  ѭ������, ����ѭ��
gdb: finish until  return  
cdb: z  !for_each_xxx ��չ����. 
cdb: gu (go up), ����ֱ����ǰ�ĺ�������. 

48. Դ�����¶ϵ�, vc,�������¶ϵ�. 
windbg: 
����Դ������� file->source file path
���÷����ļ� file->symbol file path
�����������¶ϵ� ���ú�symbol file path��source file path
Ȼ��file->open source file�򿪵������������Դ���롣
�ڶ�Ӧ�Ĵ����ϰ�f9 �¶ϵ�󣬳����Ӧ���л��ɺ�ɫ��
cdb:  

49. restart ���¿�ʼ
cdb: .restart
gdb: R �Ϳ������¿�ʼ��. 

50.  ���Ų��ң�ģ������ 
cdb:  slimftpd ����ex:  dt  *!sai*
					ex: x *!sai*
			004c45f4 SlimFTPd31!saiListen = struct sockaddr_in 
				ex: d SlimFTPd31!saiListen
				   +0x000 sin_family       : 0
				   +0x002 sin_port         : 0
				   +0x004 sin_addr         : in_addr
				   +0x008 sin_zero         : [8]  ""
gdb: ������ʱû���õ�. 

51. new ���캯�����¶ϵ�
gdb: tab �Ϳ����ҳ�����
cdb:  ��x *!pattern*  �ҳ����һЩ������ Ȼ���� bm �¶ϵ�. 
cdb: ��new �ĺ���֮��  t һֱstep into ��ȥ. 

52. ��չ ģ��
cdb: .chains 
gdb: û��ģ��ĸ���, ���Ƕ�Ӧ��Ӧ�Ľű� source

53. lastError
cdb: !gle  //get last error 
gdb: call perror("last"); 

54. fork �ӽ��̵��� 
gdb:  set follow-fork-mode child 
cdb:    .childdbg (Debug Child Processes)

55. detach
gdb: quit �Ϳ���detach
cdb: quit ��������detach  qd(quit and detach) 

56. �̶߳ϵ�
cdb:  ��������̵߳Ķϵ㣺
	1. �û�������bpǰ�����̱߳�ţ��硰~0 bp dbgee!main+4
	2. �ں˳���ʹ��������ܵ�/p /t ѡ����ָ�����̺��߳�
gdb: thread n 

57. �ϵ� disable enable
cdb: be (breakpoint enable ) bc (bp cancl);  bd(bp  disable);

58. ���¼��ط��ű�
win: .reload /s /f   
	/s  ����ȫ��modules
	/f forces 
	֮ǰΪ�˱�֤��ȷ�ԣ��������� !sym noisy  ��֤ģ����, ������֮����lm �Ϳ�����ʾ���е� ���ű��ˡ� 

59. 

