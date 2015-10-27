#!/bin/bash
for each in $(cat /tmp/octave_matix.txt  |sort -n  |uniq  ); 
do /bin/getToday.sh > ${each}_数学.txt; 
echo $each >>  ${each}_数学.txt; done
ls

#==========================================================================
#算法导论, 每行的数据 如下 
#!/bin/bash
for each in $(cat algo.txt   |sort -n  |uniq  ); 
do 
/bin/getToday.sh   > ${each}_算法.txt; 
echo "算法导论 "  >> ${each}_算法.txt
echo $each >>  ${each}_算法.txt; done
ls

for each in $(dir -1 |grep 第); 
do 
echo mv $each $(echo $each |sed 's/第.*章_//g' ); 
done 


# 第一章_计算中算法的角色_The_Role_of_Algorithms_in_Computing
# 第二章_开始_Getting_Started
# 第三章_函数的增长率_Growth_of_Functions
# 第四章_递归_Recurrences
# 第五章_概率分析与随机化算法_Probabilistic_Analysis_and_Randomized_Algorithms
# 第六章_堆排序_Heapsort
# 第七章_快速排序_Quicksort
# 第八章_线性时间中的排序_Sorting_in_Linear_Time
# 第九章_中值与顺序统计_Medians_and_Order_Statistics
# 第十章_基本的数据结构_Elementary_Data_Structures
# 第十一章_散列表_Hash_Tables
# 第十二章_二叉查找树_Binary_Search_Trees
# 第十三章_红-黑树_Red-Black_Trees
# 第十四章_扩充的数据结构_Augmenting_Data_Structures
# 第十五章_动态规划_Dynamic_Programming
# 第十六章_贪婪算法_Greedy_Algorithms
# 第十七章_分摊分析_Amortized_Analysis
# 第十八章_B-树_B-Trees
# 第十九章_二项式堆_Binomial_Heaps
# 第二十章_斐波纳契堆_Fibonacci_Heaps
# 第二十一章_不相交集的数据结构_Data_Structures_for_Disjoint_Sets
# 第二十二章_基本的图算法_Elementary_Graph_Algorithms
# 第二十三章_最小生成树_Minimum_Spanning_Trees
# 第二十四章_单源最短路径_Single-Source_Shortest_Paths
# 第二十五章_全对的最短路径_All-Pairs_Shortest_Paths
# 第二十六章_最大流_Maximum_Flow
# 第二十七章_排序网络_Sorting_Networks
# 第二十八章_矩阵运算_Matrix_Operations
# 第二十九章_线性规划_Linear_Programming
# 第三十章_多项式与快速傅里叶变换_Polynomials_and_the_FFT
# 第三十一章_数论算法_Number-Theoretic_Algorithms
# 第三十二章_字符串匹配_String_Matching
# 第三十三章_计算几何学_Computational_Geometry
# 第三十四章_NP-完备性_NP-Completeness
# 第三十五章_近似算法_Approximation_Algorithms
