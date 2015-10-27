#!/usr/bin/perl
$pattern=shift ;

foreach (<DATA>)
{
	if(defined($pattern))
	{
		($_=~/$pattern/)&& print $_ ;
	}
	else
	{
		print $_;
	}

}
__DATA__
GNU����		|GNU Project
Mainframes		|���ͻ�
��Ʊϵͳ		|Ticketing System
UML		|UML��
��־��ת		|Log rotation
��ʾ		|Inspiration
Napster		|Napster��˾
JSON		|JSON��
Finger		|��ָ
��ͥӰԺPC		|Home Theater PC
Ԥ��_Ԥ��		|_ Budget forecast
Age		|����
DocBook		|DocBook��
Talk		|̸��
��Ч����		|Performance Management
����		|Topics
��ý�������		|Multimedia codecs
RSS�Ķ���		|RSS Reader
VoIP		|����绰
������		|Workflow
�罻����		|Social networking
DVD		|DVD
Metadata		|Ԫ����
Jabber		|��������
Ӳ�����Ź�		|Hardware Watchdog
��Ч		|Special effects
BSDϵͳ		|BSD systems
Wiki		|ά��
AJAX		|AJAX��
Ӧ�÷�����		|Application Server
FIDO		|�ƶ�
��������_����		|E-commerce shopping _
��ʷ		|History
�ʾ�		|Post office
OLAP		|OLAP��
Init		|��ʼ��
ɨ����		|Scanners
Service		|����
CD����		|CD Player
ʵʱ����		|Real-time processing
���		|Albums
ϵ��		|Pedigree
����		|Screensavers
ҳ�������		|Page counter
CORBA		|CORBA��
��ԴԤ��		|Resource Booking
CD��Ƶ		|CD Audio
�����Ա༭ϵͳ		|Nonlinear Editing System
��̬ϵͳ��ѧ		|Ecosystem science
ץ��		|Screenshots
�Գƶദ��		|Symmetric multiprocessing
�洢		|Storage
����		|Fax
XML-RPC		|XML - RPC��
IMAP		|��IMAP
Messenger		|��ʹ
�Ŵ��㷨		|GA
����		|Mix
�����豸		|Serial device
���Ӽ��		|Connection check
���������		|Cross compiler
���ӱ��		|Spreadsheet
���ݲֿ�		|Data Warehouse
��׽		|Capture
WAP		|WAP��
�ʼ��б������		|Mailing list server
Telnet		|Զ�̵�¼
SOAP		|SOAP��
Emacs		|Emacs��
CDת��		|CD Conversion
CVS		|CVS��
ҵ�����ߵ�		|Business Radio
BT		|Ӣ������
Raster-Based		|���ڹ�դ
Ͷ��		|Investment
ICQ		|ICQ��
���ӿ�ѧ		|Molecular Science
����̨��Ϸ		|Console Games
Terminals		|��ͷ
Vector-Based		|����ʸ����
RSS		|��RSS
��������		|Digital camera
�����֤_Ŀ¼����		|_ Directory services authentication
POP3		|��POP3
Profiling		|����
���ѧ		|Sociology
LDAP		|LDAP��
AOL��ʱͨѶ����		|AOL Instant Messenger
���		|Package
�ն�		|Terminal
�����ѧ		|Earth Sciences
����		|Search
News		|����
�����		|Virtual Machine
���ܴ���		|Intelligent Agent
ֽ����Ϸ		|Card Games
����		|Wireless
����		|Voice
��߿�����		|Improve availability
�ӿ������Э��ת��		|Interface Engine and protocol conversion
�ڽ̺���ѧ		|Religion and Philosophy
ϵͳ����		|System Evaluation
��׽_¼��		|_ Recording Capture
ERP		|ERPϵͳ
�ճ�		|Schedule
DNS		|DNS��
�ʼ��������		|Mail Transfer Agent
���ڹ���		|Window Manager
����		|Astronomy
ѹ��		|Compression
�ִ���		|Word processing
�����ϳ�		|Sound Synthesis
CRM		|�ͻ���ϵ����
Brokering		|����
MIDI		|��MIDI
��Ƶ��׽		|Video Capture
����		|Analysis
ʱ�����		|Time tracking
ͼ���		|Library
Lists		|�б�
Internet�绰		|Internet Phone
����ϵͳ		|Sales System
��ѧ		|Chemistry
�汾����		|Version Control
HTML_XHTML		|HTML_XHTML
������		|Robot
���		|Design
��ʾ		|Display
�����ʼ��ͻ���		|E-mail client
��������Զ���		|Electronic design automation
�칫�׼�		|Office suite
��ģ		|Modeling
��Ⱥ		|Cluster
����		|Finance
��Ŀ����		|Project Management
Shells		|��
����		|Conference
��־����		|Log Analysis
����ϵͳ�ں�		|Operating system kernel
KDE		|KDE��
ͼ��ת��		|Graphics conversion
�����ʼ�����		|Spam filtering
��ӡ		|Print
3D��ģ		|3D Modeling
ʵʱ������Ϸ		|Real-time strategy game
ҽ��Ӧ��		|Medical Applications
������֤		|Quality Assurance
����		|Finance
����ǽ		|Firewall
ģ����		|Simulator
�༭��		|Editor
FTP		|��FTP
BBS		|��̳
�ĵ�		|Documents
�˻�����		|Man-machine interface
��ҵӦ��		|Enterprise Applications
��ý��		|Multimedia
����		|Physics
�㷨		|Algorithm
�ļ�����		|Document Management
����		|Backup
��һ�˳����		|First Person Shooter
������		|Player
�ı��༭��		|Text Editor
MP3		|MP3����
Linux		|Linux��
����		|Scheduling
�绰		|Phone
���԰�		|Message Board
Ӳ��		|Hardware
�������		|Software Release
Ӳ������		|Hardware drivers
�����������ѧ		|CAI
չʾ		|Show
Gnome		|٪��
��Ƶ		|Video
���ݸ�ʽ		|Data Format
ת��		|Conversion
������Ϸ		|Strategy Games
��װ		|Installation
ϵͳ-System		|System-System
�����		|Browser
���ݿ�����_������		|_ Server Database Engine
�ļ�ϵͳ		|File System
MUD��Ϸ		|MUD Games
XML		|XML��
б45�����Ϸ		|45 �� oblique angle Games
������Ϸ		|Puzzle Games
��־		|Log
�ֲ�ʽ����		|Distributed Computing
ͼƬ�����		|Picture Viewer
����ѧ		|Cryptography
HTTP������		|HTTP server
���ִ���		|Word Processing
�������		|Object-Oriented
Chat		|����
��Ϣ����		|Information Analysis
3D��Ⱦ		|3D rendering
������Ϣѧ		|Bioinformatics
������		|Compiler
����_����		|Index _ Search
������Ϸ		|Board Games
CGI����_��		|_ CGI tool library
Interpreters		|����
����_��Ƶ		|_ Audio Sound
ͼ��		|Graphics
�û�����		|User Interface
��ѧ����		|Science and Engineering
����		|Test
�ļ�����		|File Sharing
�˹�����		|Artificial Intelligence
���칤��		|Chat
���滷��		|Desktop Environment
�칫���_��ҵ���		|_ Business software office software
���ӻ�		|Visualization
���		|Monitoring
��ɫ����		|Role Playing
��ѧ		|Mathematics
����		|Simulation
���빤��		|Compilation Tools
����		|Network
��ȫ		|Security
��������		|Code Generation
����		|Other
ǰ�˹���		|Front-end tool
����		|Education
ͨѶ		|Communications
WWW_HTTP		|WWW_HTTP
���ݿ�		|Database
ϵͳ����		|System Management
��Ϸ_����		|Entertainment Games _
������		|Internet
���		|Framework
վ�����		|Site Management
Content		|����
�������		|Software Development
########################################################################
3 �汾����(SCCS)()
4 GNU����()
5 Mainframes()
5 ��׼ͨ���ñ�����(SGML)()
7 ������Ϣ����(NIS)()
7 ��Ʊϵͳ()
9 �汾����(RCS)()
11 UML()
12 ��־��ת()
12 ��ʾ()
13 Napster()
13 JSON()
14 Finger()
14 �������Ŵ���Э��(NNTP)()
15 ��ͥӰԺPC()
15 Ԥ��/Ԥ��()
16 Age()
16 ����ͼ���(OPAC)()
17 DocBook()
19 Talk()
19 ��Ч����()
20 ����()
23 �汾����(Subversion)()
24 ��ý�������()
24 RSS�Ķ���()
24 VoIP()
25 ������()
25 �罻����()
26 ��ҵ����(BI)()
26 DVD()
27 Metadata()
27 Jabber()
29 Ӳ�����Ź�()
29 ��Ч()
30 ��Դ(UPS)()
30 BSDϵͳ()
31 Wiki()
34 AJAX()
38 Ӧ�÷�����()
39 FIDO()
39 ��������/����()
39 ��ʷ()
40 �ʾ�()
44 OLAP()
44 ����(Blog)()
47 Init()
47 ɨ����()
48 Service()
48 CD����()
52 ʵʱ����()
53 Gnutella(�ļ���������)()
53 ���()
53 ϵ��()
55 ����()
57 ҳ�������()
59 CORBA()
59 ��ԴԤ��()
59 CD��Ƶ()
60 �����Ա༭ϵͳ()
60 ��̬ϵͳ��ѧ()
61 ץ��()
65 �Գƶദ��()
65 �洢()
66 ����()
66 XML-RPC()
70 IMAP()
73 Messenger()
74 �Ŵ��㷨()
78 ����()
79 �Ű����(TEX/LATEX)()
84 �����豸()
86 ���Ӽ��()
87 ���������()
91 ���ӱ��()
93 ���ݲֿ�()
93 ��׽()
95 WAP()
96 �ʼ��б������()
98 Telnet()
101 SOAP()
102 ���ػ�(L10N)()
106 Emacs()
108 CDת��()
108 CVS()
109 ҵ�����ߵ�()
109 BT()
112 Raster-Based()
115 Ͷ��()
118 ICQ()
120 ���ӿ�ѧ()
124 ����̨��Ϸ()
125 ������������(CASE)()
126 ���ʻ�(I18N)()
128 Terminals()
129 Vector-Based()
130 RSS()
131 ��������()
135 ���ݹ���ϵͳ(CMS)()
135 �����֤/Ŀ¼����()
136 POP3()
136 Profiling()
137 ���ѧ()
140 LDAP()
140 AOL��ʱͨѶ����()
142 ���()
149 �ն�()
152 �����ѧ()
152 ����()
156 ϵͳ����(Boot)()
159 News()
161 �����()
163 ���ܴ���()
164 ֽ����Ϸ()
164 ����()
166 ����()
166 ��߿�����()
172 �ӿ������Э��ת��()
172 �ڽ̺���ѧ()
173 ϵͳ����()
173 ��׽/¼��()
174 ERP()
175 �ճ�()
176 DNS()
180 �ʼ��������()
183 ���ڹ���()
183 ����()
185 ѹ��()
186 �ִ���()
191 �����ϳ�()
195 CRM()
201 Brokering)()
207 MIDI()
207 ��Ƶ��׽()
209 ����()
209 ʱ�����()
210 ͼ���()
214 ��(Streaming)()
214 Lists()
215 Internet�绰()
221 ����ϵͳ()
230 ��ѧ()
234 �汾����()
236 HTML/XHTML()
241 ������()
246 ���()
248 ��ʾ()
257 �����ʼ��ͻ���()
266 ��������Զ���()
269 �칫�׼�()
294 ��ģ()
296 ��Ⱥ()
310 ����()
313 ��Ŀ����()
328 Shells()
330 ����()
337 ��־����()
338 ����ϵͳ�ں�()
341 KDE()
342 ͼ��ת��()
343 �����ʼ�����()
345 ��ӡ()
350 3D��ģ()
352 �浵(Archiving)()
354 ʵʱ������Ϸ()
355 ҽ��Ӧ��()
362 ������֤()
375 ����()
376 ������Ϣϵͳ(GIS)()
383 ����ǽ()
386 ģ����()
395 �༭��()
395 FTP()
416 BBS()
418 �ĵ�()
418 �˻�����()
428 ��ҵӦ��()
434 ��ý��()
444 ����()
446 �㷨()
451 �ļ�����()
452 ����()
458 ��һ�˳����()
461 ������(Debuggers)()
463 ������()
464 �ı��༭��()
465 MP3()
470 Linux()
474 ����()
475 �绰()
478 ���԰�()
479 Ӳ��()
479 �������()
482 Ӳ������()
487 �����������ѧ()
492 չʾ()
496 ��������(IDE)()
497 Gnome()
505 ��Ƶ()
514 ���ݸ�ʽ()
519 ת��()
519 ������Ϸ()
525 ��װ()
526 ϵͳ-System()
529 �����()
539 ���ݿ�����/������()
549 �ļ�ϵͳ()
553 MUD��Ϸ()
589 XML()
606 б45�����Ϸ()
610 ������Ϸ()
617 ��־()
649 �ֲ�ʽ����()
665 ͼƬ�����()
672 ����ѧ()
680 HTTP������()
689 ���ִ���()
701 �������()
702 �����ʼ�(Email)()
740 Chat()
743 ��Ϣ����()
752 3D��Ⱦ()
755 ������Ϣѧ()
757 ������()
765 ����/����()
766 ������Ϸ()
846 CGI����/��()
868 Interpreters()
870 ����/��Ƶ()
876 ͼ��()
937 �û�����()
950 ��ѧ����()
953 ����()
967 �ļ�����()
1001 �˹�����()
1034 ���칤��()
1045 ���滷��()
1117 �칫���/��ҵ���()
1136 ���ӻ�()
1155 ���()
1171 ��ɫ����()
1192 ��ѧ()
1326 ����()
1329 ���빤��()
1366 ����()
1416 ��ȫ()
1452 ��������()
1544 ����()
1566 ǰ�˹���()
1573 ����()
1603 ͨѶ()
1636 WWW/HTTP()
1657 ���ݿ�()
1954 ϵͳ����()
2011 ��Ϸ/����()
2014 ������()
2039 ���()
2499 վ�����()
4197 Content()
4447 �������()

