#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
sparc 
Intergerͨ�üĴ�����

    32��ͨ�õ�integer�Ĵ�����Ϊ%r0��%r01��%r2, %r3, %r4, %r5 , %r6, ...  %r31�������������ڳ��������еĲ�ͬĿ�ģ��ָ��������˸��Եı�����peter��������н��ܣ�

����Ĵ�����

    ������%f0 .. %f31��ͨ������֧��ʵ�������ǿ����ڳɶԺͳ���(4��) �ĺܴ��һ�����Ĵ洢��

ר�üĴ�����

    %psr ������״̬�Ĵ���(Processor State Register)

    %wim ������Ч���μĴ���(Window Invalid Mask Register)

    %tbr Trap��ַ�Ĵ���(Trap Base Register)

    %y Y�Ĵ���(Y register)

    %y�Ĵ������ڳ˷��ͳ����С��ڳ����У��ݴ汻�����ĸ�32λ��Чλ��


�ڳ˷��У��ݴ�˻��ĸ�32λ��Чλ��
    %fsr ����״̬�Ĵ���(Floating-Point State Register)
    %csr Э������״̬�Ĵ���(Coprocessor-State Register)
    %fq ����ָ����мĴ���(Floating-Point Queue)
    %cq Э���������мĴ���(Coprocessor Queue)
    %hi��%lo ����һԪ��������ȡ�������ĸ�22λ�͵�10λ�� ��һ���������sethiָ�
