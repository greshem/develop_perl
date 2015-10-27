__DATA__
//###################################################
//ASSERT_EQ 	EXPECT_EQ 	相等
//ASSERT_NE 	EXPECT_NE 	不等
//ASSERT_GT 	EXPECT_GT 	大于
//ASSERT_LT 	EXPECT_LT 	小于
//ASSERT_GE 	EXPECT_GE 	大于或等于
//ASSERT_LE 	EXPECT_LE 	小于或等于
//ASSERT_TRUE 	EXPECT_TRUE 	判真
//ASSERT_FALSE 	EXPECT_FALSE 	判假
//ASSERT_FLOAT_EQ 	EXPECT_FLOAT_EQ 	单精度浮点值相等
//ASSERT_DOUBLE_EQ 	EXPECT_DOUBLE_EQ 	双精度浮点值相等
//ASSERT_NEAR 	EXPECT_NEAR 	浮点值接近
//ASSERT_STREQ 	EXPECT_STREQ 	C字符串相等
//ASSERT_STRNE 	EXPECT_STRNE 	C字符串不等
//ASSERT_STRCASEEQ 	EXPECT_STRCASEEQ 	C字符串相等（忽略大小写）
//ASSERT_STRCASENE 	EXPECT_STRCASENE 	C字符串不等（忽略大小写）

#include <fstream>
#include <string> 
#include <map>
#include <iostream> 
#include <algorithm>
#include <vector> 
#include <iterator>  
#include <string.h>
#include <gtest/gtest.h>
//###################################################

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
//更多的测试 模仿上面的例子 
int main(int argc, char * argv[])
{
	testing::InitGoogleTest(&argc, argv);
    RUN_ALL_TESTS();
    return 0;
}

