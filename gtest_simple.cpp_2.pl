#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
//###################################################
//ASSERT_EQ 	EXPECT_EQ 	���
//ASSERT_NE 	EXPECT_NE 	����
//ASSERT_GT 	EXPECT_GT 	����
//ASSERT_LT 	EXPECT_LT 	С��
//ASSERT_GE 	EXPECT_GE 	���ڻ����
//ASSERT_LE 	EXPECT_LE 	С�ڻ����
//ASSERT_TRUE 	EXPECT_TRUE 	����
//ASSERT_FALSE 	EXPECT_FALSE 	�м�
//ASSERT_FLOAT_EQ 	EXPECT_FLOAT_EQ 	�����ȸ���ֵ���
//ASSERT_DOUBLE_EQ 	EXPECT_DOUBLE_EQ 	˫���ȸ���ֵ���
//ASSERT_NEAR 	EXPECT_NEAR 	����ֵ�ӽ�
//ASSERT_STREQ 	EXPECT_STREQ 	C�ַ������
//ASSERT_STRNE 	EXPECT_STRNE 	C�ַ�������
//ASSERT_STRCASEEQ 	EXPECT_STRCASEEQ 	C�ַ�����ȣ����Դ�Сд��
//ASSERT_STRCASENE 	EXPECT_STRCASENE 	C�ַ������ȣ����Դ�Сд��
#include <fstream>
#include <dirent.h>
#include <string> 
#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <QzjUnit.hpp>
//#include <MLmyUnit.hpp>
#include <map>
#include <iostream> 
#include <algorithm>
#include <vector> 
#include <iterator>  
#include <gtest/gtest.h>

char mbr[512];
TEST(endian , size)
{
	EXPECT_EQ( sizeof(mbr), 512 );
	EXPECT_EQ( sizeof(int), 4 );
	EXPECT_EQ( sizeof(long), 4 );
	EXPECT_EQ( sizeof(long long ), 8 );
}

TEST(fat, info)
{
	EXPECT_EQ((1-1) ,0);
	
}
int main(int argc, char * argv[])
{
	//print
	testing::InitGoogleTest(&argc, argv);
    RUN_ALL_TESTS();
    return 1;
	
	//printFSInfo("/dev/sdb1") ;
}

