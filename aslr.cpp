#include <stdio.h>
unsigned long 
find_start(void)
{
	__asm__("movl %esp, %eax");
}
int main()
{
	printf("0x%x \n", find_start());
}
//��Ubuntu 10.04.3 LTS�����н����

