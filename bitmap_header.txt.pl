#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
BMP的文件头共14个字节。
+-----------------+-----------+----------------------------------------------+
|   字节顺序  	  | 数据结构  | 	描述                                     |
+-----------------+-----------+----------------------------------------------+
|   1,2  		  | word 	  | 高8位为字母’B’，低8位为字母’M’           |
|                 |           |                                              |
|   3,4,5,6		  | uint	  | 文件尺寸                                     |
|                 |           |                                              |
|   7,8			  | word	  | 保留字1                                      |
|                 |           |                                              |
|   9,10		  | word	  | 保留字2                                      |
|                 |           |                                              |
|   11,12,13,14	  | uint	  | 位图数据部分相对于文件首的起始偏移量         |
+-----------------+-----------+----------------------------------------------+
数据部分偏移量的存在，说明图像数据部分并不一定要紧随图像参数或调色板之后放置，BMP图片的制作者其实可以在调色板之后、数据部分之前填充任何内容，只要正确地设置偏移量即可。 

图像参数信息

这一个数据块共40字节或56字节。前40字节的内容如下：
+-----------------+-------------------+--------------------------------------+
|   字节顺序	  | 数据结构		  | 描述                                 |
+-----------------+-------------------+--------------------------------------+
|   15,16,17,18	  | uint			  | 当前结构体的大小，通常是40或56       |
|                 |                   |                                      |
|   19,20,21,22	  | int				  | 图像宽度（像素）                     |
|                 |                   |                                      |
|   23,24,25,26	  | int				  | 图像高度（像素）                     |
|                 |                   |                                      |
|   27,28		  | word			  | 这个字的值永远是1                    |
|                 |                   |                                      |
|   29,30		  | word			  | 每像素占用的位数，即bpp              |
|                 |                   |                                      |
|   31,32,33,34	  | uint			  | 压缩方式                             |
|                 |                   |                                      |
|   35,36,37,38	  | uint			  | 图像的尺寸（字节数）                 |
|                 |                   |                                      |
|   39,40,41,42	  | int				  | 水平分辨率，pixels-per-meter         |
|                 |                   |                                      |
|   43,44,45,46	  | int				  | 垂直分辨率，pixels-per-meter         |
|                 |                   |                                      |
|   47,48,49,50	  | uint			  | 引用色彩数                           |
|                 |                   |                                      |
|   51,52,53,54	  | uint			  | 关键色彩数                           |
+-----------------+-------------------+--------------------------------------+
水平分辨率和垂直分辨率我从来没用过。看上去应该是与设备相关的参数。

如果你是一个有优化癖的程序员，你一定会问，图像的宽和高为什么是int型而不是uint型呢？因为想象中负数宽和高似乎没有意义。比较滑稽的是，在BMP格式中，负数的高是有意义的。为了与高搭配，因此图像的宽也定义为int型。负数高的意义我们将在图像数据块中讨论。

第31-34字节存储着一个uint型参数，它代表图像数据的压缩方式。该参数的取值范围是0、1、2或3等等。这些取值的含义分别是：

0 —— RGB方式
1 —— 8bpp的run-length-encoding方式
2 —— 4bpp的run-length-encoding方式
3 —— bit-fields方式

只有压缩方式选项被置为bit-fields时，当前结构体的大小为56字节，否则为40字节。 

调色板 256 * 4
#########################

