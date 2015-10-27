#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

#2011_03_22_ 星期二 add by greshem

1. 与文件操作有关的命令 
	C-x C-f 查找文件并且在新缓冲区中打开 
	C-x C-v 读入另一个文件替换掉用
	C-x C-f打开的文件 
	C-x i 把文件插入到光标的当前位置 
	C-x C-s 保存文件 
	C-x C-w 把缓冲区内容写入一个文件 
	C-x C-c 退出Emacs

2. 与光标移动操作有关的命令 
	C-f 光标前移一个字符（右） 
	C-b 光标后移一个字符（左） 
	C-p 光标前移一行（上） 
	C-n 光标后移一行（下） 
	M-f 前移一个单词 
	M-b 后移一个单词 
	C-a 移动到行首 
	C-e 移动到行尾 
	M-e 前移一个句子 
	M-a 后移一个句子 
	M-} 前移一个段落 
	M-{ 后移一个段落 
	C-v 屏幕上卷一屏 
	M-v 屏幕下卷一屏 
	C-x ] 前移一页 
	C-x [ 后移一页 
	M-< 前移到文件头 
	M->; 后移到文件尾 
	C-l 重新绘制屏幕，当前行放在画面中心 
	M-n 或者 
	C-u n 重复执行n次后续命令 按下M-x后在辅助输入区中输入"goto-line"跳到指定的行，输入"goto-char"跳到指定的字符
   
3. 与文件删除操作有关的命令 
	C-d 删除光标位置上的字符 
	DEL 删除光标前面的字符 
	M-d 删除光标后面的单词 
	M-DEL 删除光标前面的单词 
	C-k 从光标位置删除到行尾 
	M-k 删除光标后面的句子 
	C-x DEL 删除光标前面的句子 
	C-y 恢复被删除的文本或者粘贴最近删除或复制的文本 
	C-w 删除文件块 按下M-x后在辅助输入区中输入"kill-paragraph"删除光标后面的段落，按下"backward-kill-paragraph"删除光标前面的段落

4. 与文本块操作有关的命令 
	C-@ 标记文本块的开始（或结束）位置 
	C-x C-x 互换插入点和文本标记的位置 
	C-w 或 SHIFT-DEL 删除文本块 
	M-w 复制文本块 
	M-h 标记段落 
	C-x C-p 标记页面 
	C-x h 标记整个缓冲区

5. 与位置交换操作有关的命令 
	C-t 交换两个字符的位置 
	M-t 交换两个单词的位置 
	C-x C-t 交换两个文本行的位置 按下M-x后在辅助输入区中输入"transpose-sentences"交换两个句子的位置，按下"transpose-paragraph"交换两个段落的位置

6. 与改变字母大小写操作有关的命令 
	M-c 单词首字母改为大写 
	M-u 单词的字母全部改为大写 
	M-l 单词的字母全部改为小写

7. 与查找操作相关的命令 
	C-s 向前递增查找 
	C-r 向后递增查找 
	C-s C-w 开始递增查找，把光标位置的单词做查找字符串 
	C-s C-y 开始递增查找，把光标位置到行尾之间的文本做查找字符串 
	C-s return searchstring return 向前开始非递增查找操作 
	C-r return searchstring return 向后开始非递增查找操作 
	C-s return C-w 向前开始单词查找（不受换行符、空格、标点符号影响） 
	C-r return C-w 向后开始单词查找（不受换行符、空格、标点符号影响）

8. 与使用编辑缓冲区和窗口有关的命令 
	C-x b 如果输入一个新的文件名则新建一个文件并且编辑,否则打开该文件 
	C-x s 保存全部缓冲区 
	C-x b 删除缓冲区 
	M-x rename-buffer 重命名当前缓冲区 
	C-x C-q 把当前编辑缓冲区设置为只读属性 
	C-x 0 删除当前所在的窗口 
	C-x 1 当前缓冲区满屏显示 
	C-x 2 创建上下排列的窗口 
	C-x 3 创建左右排列的窗口 
	C-x o 在窗口之间移动


1）与光标移动操作有关的命令
  C-f     光标前移一个字符（右）
  C-b     光标后移一个字符（左）
  C-p     光标前移一行（上）
  C-n     光标后移一行（下）
  M-f     前移一个单词
  M-b     后移一个单词
  C-a     移动到行首
  C-e     移动到行尾
  M-e     前移一个句子
  M-a     后移一个句子
  M-}     前移一个段落
  M-{     后移一个段落
  C-v     屏幕上卷一屏
  M-v     屏幕下卷一屏
  C-x ]    前移一页
  C-x [    后移一页
  M-<     前移到文件头
  M->;     后移到文件尾
  C-l     重新绘制屏幕，当前行放在画面中心
  M-n 或者 C-u n  重复执行n次后续命令

2）帮助
	C-h i    查看帮助信息文档
	C-h f   描述函数
	C-h v   描述变量
	C-h k   描述快捷键
	C-h w 显示命令被绑定到哪些快捷键上
	C-h C-f 显示emacs FAQ
	C-h p 显示本机Elisp包的信息
3）编程
	M C-a 移动光标到函数的开始处
	M C-e 移动光标到函数的结尾处
	M-;     添加注释
	C-c C-q 根据缩进风格缩进整个函数

4）书签

	C-x r m 在光标当前位置创建书签
	C-x r b 转到书签
	M-x bookmark-rename 重命名书签
	M-x bookmark-delete 删除书签
	M-x bookmark-save 保存书签
	C-x r l 列出书签清单

5）窗口

	C-x 2 水平分割窗格
	C-x 3 垂直分割窗格
	(C-u) C-x ^ 加高当前窗口，如果有C-u，则每次加高4行
	(C-u) C-x }  加宽当前窗口
	(C-u) C-x {  压窄当前窗口
	C-x 0 关掉当前窗口
	C-x 1 关掉其他窗口
	C-x o 跳到另一个窗口

6）终端
	M-x ansi-term  打开终端

7）buffer

	C-x k  关闭当前buffer
	C-x b 切换到前一个编辑的buffer
	C-x C-b :列出当前所有buffer
	C-x C-s 保存当前buffer
	C-x s 保存所有未保存的buffer，会提示你是否需要保存
	C-x C-w 文件另存为

8）拷贝 剪切 粘贴

	M-space (redefined) 设置mark; C-@ 是默认命令
	C-w (redefined)  剪切一块区域如果没有设置mark，则是剪切一行
	M-w (redefined) : 拷贝一块区域如果没有设置mark, 则是拷贝一行
	C-k  从当前位置剪切到行尾
	C-y  粘贴
	M-y  用C-y拉回最近被除去的文本后，换成 M-y可以拉回以前被除去的文本。键入多次的M-y可以拉回更早以前被除去的文本
	M-@ 复制一个单词

9）文件
	C-x C-f  打开文件
	C-x C-r 以只读形式打开文件
	C-x C-c 保存文件退出

10）查找替换
	C-s   向下查找
	C-r    向上查找
	M-x  replace-string  替换

11）缩放字体
	Ctrl-x Ctrl-+ 或 Ctrl-x Ctrl-=  放大字体
	Ctrl-x Ctrl– 缩小字体
	Ctrl-x Ctrl-0  重置字体
