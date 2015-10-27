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
GNU工程		|GNU Project
Mainframes		|大型机
售票系统		|Ticketing System
UML		|UML的
日志轮转		|Log rotation
启示		|Inspiration
Napster		|Napster公司
JSON		|JSON的
Finger		|手指
家庭影院PC		|Home Theater PC
预算_预测		|_ Budget forecast
Age		|年龄
DocBook		|DocBook的
Talk		|谈话
绩效管理		|Performance Management
主题		|Topics
多媒体解码器		|Multimedia codecs
RSS阅读器		|RSS Reader
VoIP		|网络电话
工作流		|Workflow
社交网络		|Social networking
DVD		|DVD
Metadata		|元数据
Jabber		|胡言乱语
硬件看门狗		|Hardware Watchdog
特效		|Special effects
BSD系统		|BSD systems
Wiki		|维基
AJAX		|AJAX的
应用服务器		|Application Server
FIDO		|菲多
电子商务_购物		|E-commerce shopping _
历史		|History
邮局		|Post office
OLAP		|OLAP的
Init		|初始化
扫描仪		|Scanners
Service		|服务
CD播放		|CD Player
实时处理		|Real-time processing
相册		|Albums
系谱		|Pedigree
屏保		|Screensavers
页面计数器		|Page counter
CORBA		|CORBA的
资源预定		|Resource Booking
CD音频		|CD Audio
非线性编辑系统		|Nonlinear Editing System
生态系统科学		|Ecosystem science
抓屏		|Screenshots
对称多处理		|Symmetric multiprocessing
存储		|Storage
传真		|Fax
XML-RPC		|XML - RPC的
IMAP		|的IMAP
Messenger		|信使
遗传算法		|GA
混音		|Mix
串行设备		|Serial device
连接检查		|Connection check
交叉编译器		|Cross compiler
电子表格		|Spreadsheet
数据仓库		|Data Warehouse
捕捉		|Capture
WAP		|WAP的
邮件列表服务器		|Mailing list server
Telnet		|远程登录
SOAP		|SOAP的
Emacs		|Emacs的
CD转换		|CD Conversion
CVS		|CVS的
业务无线电		|Business Radio
BT		|英国电信
Raster-Based		|基于光栅
投资		|Investment
ICQ		|ICQ的
分子科学		|Molecular Science
控制台游戏		|Console Games
Terminals		|码头
Vector-Based		|基于矢量的
RSS		|的RSS
数字摄像		|Digital camera
身份认证_目录服务		|_ Directory services authentication
POP3		|的POP3
Profiling		|剖析
社会学		|Sociology
LDAP		|LDAP的
AOL即时通讯工具		|AOL Instant Messenger
打包		|Package
终端		|Terminal
地球科学		|Earth Sciences
搜索		|Search
News		|新闻
虚拟机		|Virtual Machine
智能代理		|Intelligent Agent
纸牌游戏		|Card Games
无线		|Wireless
语音		|Voice
提高可用性		|Improve availability
接口引擎和协议转换		|Interface Engine and protocol conversion
宗教和哲学		|Religion and Philosophy
系统评测		|System Evaluation
捕捉_录制		|_ Recording Capture
ERP		|ERP系统
日程		|Schedule
DNS		|DNS的
邮件传输代理		|Mail Transfer Agent
窗口管理		|Window Manager
天文		|Astronomy
压缩		|Compression
字处理		|Word processing
声音合成		|Sound Synthesis
CRM		|客户关系管理
Brokering		|经纪
MIDI		|的MIDI
视频捕捉		|Video Capture
分析		|Analysis
时间跟踪		|Time tracking
图书馆		|Library
Lists		|列表
Internet电话		|Internet Phone
销售系统		|Sales System
化学		|Chemistry
版本控制		|Version Control
HTML_XHTML		|HTML_XHTML
机器人		|Robot
设计		|Design
显示		|Display
电子邮件客户端		|E-mail client
电子设计自动化		|Electronic design automation
办公套件		|Office suite
建模		|Modeling
集群		|Cluster
金融		|Finance
项目管理		|Project Management
Shells		|壳
会议		|Conference
日志分析		|Log Analysis
操作系统内核		|Operating system kernel
KDE		|KDE的
图形转换		|Graphics conversion
垃圾邮件过滤		|Spam filtering
打印		|Print
3D建模		|3D Modeling
实时策略游戏		|Real-time strategy game
医疗应用		|Medical Applications
质量保证		|Quality Assurance
财务		|Finance
防火墙		|Firewall
模拟器		|Simulator
编辑器		|Editor
FTP		|的FTP
BBS		|论坛
文档		|Documents
人机界面		|Man-machine interface
企业应用		|Enterprise Applications
多媒体		|Multimedia
物理		|Physics
算法		|Algorithm
文件管理		|Document Management
备份		|Backup
第一人称射击		|First Person Shooter
播放器		|Player
文本编辑器		|Text Editor
MP3		|MP3播放
Linux		|Linux的
调度		|Scheduling
电话		|Phone
留言板		|Message Board
硬件		|Hardware
软件发布		|Software Release
硬件驱动		|Hardware drivers
计算机辅助教学		|CAI
展示		|Show
Gnome		|侏儒
视频		|Video
数据格式		|Data Format
转换		|Conversion
策略游戏		|Strategy Games
安装		|Installation
系统-System		|System-System
浏览器		|Browser
数据库引擎_服务器		|_ Server Database Engine
文件系统		|File System
MUD游戏		|MUD Games
XML		|XML的
斜45°角游戏		|45 ° oblique angle Games
益智游戏		|Puzzle Games
日志		|Log
分布式计算		|Distributed Computing
图片浏览器		|Picture Viewer
密码学		|Cryptography
HTTP服务器		|HTTP server
文字处理		|Word Processing
面向对象		|Object-Oriented
Chat		|聊天
信息分析		|Information Analysis
3D渲染		|3D rendering
生物信息学		|Bioinformatics
编译器		|Compiler
索引_搜索		|Index _ Search
棋盘游戏		|Board Games
CGI工具_库		|_ CGI tool library
Interpreters		|口译
声音_音频		|_ Audio Sound
图形		|Graphics
用户界面		|User Interface
科学工程		|Science and Engineering
测试		|Test
文件共享		|File Sharing
人工智能		|Artificial Intelligence
聊天工具		|Chat
桌面环境		|Desktop Environment
办公软件_商业软件		|_ Business software office software
可视化		|Visualization
监控		|Monitoring
角色扮演		|Role Playing
数学		|Mathematics
仿真		|Simulation
编译工具		|Compilation Tools
网络		|Network
安全		|Security
代码生成		|Code Generation
其他		|Other
前端工具		|Front-end tool
教育		|Education
通讯		|Communications
WWW_HTTP		|WWW_HTTP
数据库		|Database
系统管理		|System Management
游戏_娱乐		|Entertainment Games _
互联网		|Internet
框架		|Framework
站点管理		|Site Management
Content		|内容
软件开发		|Software Development
########################################################################
3 版本控制(SCCS)()
4 GNU工程()
5 Mainframes()
5 标准通用置标语言(SGML)()
7 网络信息服务(NIS)()
7 售票系统()
9 版本控制(RCS)()
11 UML()
12 日志轮转()
12 启示()
13 Napster()
13 JSON()
14 Finger()
14 网络新闻传输协议(NNTP)()
15 家庭影院PC()
15 预算/预测()
16 Age()
16 在线图书馆(OPAC)()
17 DocBook()
19 Talk()
19 绩效管理()
20 主题()
23 版本控制(Subversion)()
24 多媒体解码器()
24 RSS阅读器()
24 VoIP()
25 工作流()
25 社交网络()
26 商业智能(BI)()
26 DVD()
27 Metadata()
27 Jabber()
29 硬件看门狗()
29 特效()
30 电源(UPS)()
30 BSD系统()
31 Wiki()
34 AJAX()
38 应用服务器()
39 FIDO()
39 电子商务/购物()
39 历史()
40 邮局()
44 OLAP()
44 博客(Blog)()
47 Init()
47 扫描仪()
48 Service()
48 CD播放()
52 实时处理()
53 Gnutella(文件共享网络)()
53 相册()
53 系谱()
55 屏保()
57 页面计数器()
59 CORBA()
59 资源预定()
59 CD音频()
60 非线性编辑系统()
60 生态系统科学()
61 抓屏()
65 对称多处理()
65 存储()
66 传真()
66 XML-RPC()
70 IMAP()
73 Messenger()
74 遗传算法()
78 混音()
79 排版软件(TEX/LATEX)()
84 串行设备()
86 连接检查()
87 交叉编译器()
91 电子表格()
93 数据仓库()
93 捕捉()
95 WAP()
96 邮件列表服务器()
98 Telnet()
101 SOAP()
102 本地化(L10N)()
106 Emacs()
108 CD转换()
108 CVS()
109 业务无线电()
109 BT()
112 Raster-Based()
115 投资()
118 ICQ()
120 分子科学()
124 控制台游戏()
125 计算机辅助设计(CASE)()
126 国际化(I18N)()
128 Terminals()
129 Vector-Based()
130 RSS()
131 数字摄像()
135 内容管理系统(CMS)()
135 身份认证/目录服务()
136 POP3()
136 Profiling()
137 社会学()
140 LDAP()
140 AOL即时通讯工具()
142 打包()
149 终端()
152 地球科学()
152 搜索()
156 系统引导(Boot)()
159 News()
161 虚拟机()
163 智能代理()
164 纸牌游戏()
164 无线()
166 语音()
166 提高可用性()
172 接口引擎和协议转换()
172 宗教和哲学()
173 系统评测()
173 捕捉/录制()
174 ERP()
175 日程()
176 DNS()
180 邮件传输代理()
183 窗口管理()
183 天文()
185 压缩()
186 字处理()
191 声音合成()
195 CRM()
201 Brokering)()
207 MIDI()
207 视频捕捉()
209 分析()
209 时间跟踪()
210 图书馆()
214 流(Streaming)()
214 Lists()
215 Internet电话()
221 销售系统()
230 化学()
234 版本控制()
236 HTML/XHTML()
241 机器人()
246 设计()
248 显示()
257 电子邮件客户端()
266 电子设计自动化()
269 办公套件()
294 建模()
296 集群()
310 金融()
313 项目管理()
328 Shells()
330 会议()
337 日志分析()
338 操作系统内核()
341 KDE()
342 图形转换()
343 垃圾邮件过滤()
345 打印()
350 3D建模()
352 存档(Archiving)()
354 实时策略游戏()
355 医疗应用()
362 质量保证()
375 财务()
376 地理信息系统(GIS)()
383 防火墙()
386 模拟器()
395 编辑器()
395 FTP()
416 BBS()
418 文档()
418 人机界面()
428 企业应用()
434 多媒体()
444 物理()
446 算法()
451 文件管理()
452 备份()
458 第一人称射击()
461 调试器(Debuggers)()
463 播放器()
464 文本编辑器()
465 MP3()
470 Linux()
474 调度()
475 电话()
478 留言板()
479 硬件()
479 软件发布()
482 硬件驱动()
487 计算机辅助教学()
492 展示()
496 开发环境(IDE)()
497 Gnome()
505 视频()
514 数据格式()
519 转换()
519 策略游戏()
525 安装()
526 系统-System()
529 浏览器()
539 数据库引擎/服务器()
549 文件系统()
553 MUD游戏()
589 XML()
606 斜45°角游戏()
610 益智游戏()
617 日志()
649 分布式计算()
665 图片浏览器()
672 密码学()
680 HTTP服务器()
689 文字处理()
701 面向对象()
702 电子邮件(Email)()
740 Chat()
743 信息分析()
752 3D渲染()
755 生物信息学()
757 编译器()
765 索引/搜索()
766 棋盘游戏()
846 CGI工具/库()
868 Interpreters()
870 声音/音频()
876 图形()
937 用户界面()
950 科学工程()
953 测试()
967 文件共享()
1001 人工智能()
1034 聊天工具()
1045 桌面环境()
1117 办公软件/商业软件()
1136 可视化()
1155 监控()
1171 角色扮演()
1192 数学()
1326 仿真()
1329 编译工具()
1366 网络()
1416 安全()
1452 代码生成()
1544 其他()
1566 前端工具()
1573 教育()
1603 通讯()
1636 WWW/HTTP()
1657 数据库()
1954 系统管理()
2011 游戏/娱乐()
2014 互联网()
2039 框架()
2499 站点管理()
4197 Content()
4447 软件开发()

