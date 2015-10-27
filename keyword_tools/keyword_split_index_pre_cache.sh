#!/bin/bash
for each in $(cat /tmp/octave_matix.txt  |sort -n  |uniq  ); 
do /bin/getToday.sh > ${each}_��ѧ.txt; 
echo $each >>  ${each}_��ѧ.txt; done
ls

#==========================================================================
#�㷨����, ÿ�е����� ���� 
#!/bin/bash
for each in $(cat algo.txt   |sort -n  |uniq  ); 
do 
/bin/getToday.sh   > ${each}_�㷨.txt; 
echo "�㷨���� "  >> ${each}_�㷨.txt
echo $each >>  ${each}_�㷨.txt; done
ls

for each in $(dir -1 |grep ��); 
do 
echo mv $each $(echo $each |sed 's/��.*��_//g' ); 
done 


# ��һ��_�������㷨�Ľ�ɫ_The_Role_of_Algorithms_in_Computing
# �ڶ���_��ʼ_Getting_Started
# ������_������������_Growth_of_Functions
# ������_�ݹ�_Recurrences
# ������_���ʷ�����������㷨_Probabilistic_Analysis_and_Randomized_Algorithms
# ������_������_Heapsort
# ������_��������_Quicksort
# �ڰ���_����ʱ���е�����_Sorting_in_Linear_Time
# �ھ���_��ֵ��˳��ͳ��_Medians_and_Order_Statistics
# ��ʮ��_���������ݽṹ_Elementary_Data_Structures
# ��ʮһ��_ɢ�б�_Hash_Tables
# ��ʮ����_���������_Binary_Search_Trees
# ��ʮ����_��-����_Red-Black_Trees
# ��ʮ����_��������ݽṹ_Augmenting_Data_Structures
# ��ʮ����_��̬�滮_Dynamic_Programming
# ��ʮ����_̰���㷨_Greedy_Algorithms
# ��ʮ����_��̯����_Amortized_Analysis
# ��ʮ����_B-��_B-Trees
# ��ʮ����_����ʽ��_Binomial_Heaps
# �ڶ�ʮ��_쳲�������_Fibonacci_Heaps
# �ڶ�ʮһ��_���ཻ�������ݽṹ_Data_Structures_for_Disjoint_Sets
# �ڶ�ʮ����_������ͼ�㷨_Elementary_Graph_Algorithms
# �ڶ�ʮ����_��С������_Minimum_Spanning_Trees
# �ڶ�ʮ����_��Դ���·��_Single-Source_Shortest_Paths
# �ڶ�ʮ����_ȫ�Ե����·��_All-Pairs_Shortest_Paths
# �ڶ�ʮ����_�����_Maximum_Flow
# �ڶ�ʮ����_��������_Sorting_Networks
# �ڶ�ʮ����_��������_Matrix_Operations
# �ڶ�ʮ����_���Թ滮_Linear_Programming
# ����ʮ��_����ʽ����ٸ���Ҷ�任_Polynomials_and_the_FFT
# ����ʮһ��_�����㷨_Number-Theoretic_Algorithms
# ����ʮ����_�ַ���ƥ��_String_Matching
# ����ʮ����_���㼸��ѧ_Computational_Geometry
# ����ʮ����_NP-�걸��_NP-Completeness
# ����ʮ����_�����㷨_Approximation_Algorithms
