#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
; hello.asm 
section .data            ; ���ݶ�����
        msg db "Hello, world!", 0xA     ; Ҫ������ַ���
        len equ $ - msg                 ; �ִ�����
section .text            ; ���������
global _start            ; ָ����ں���
_start:                  ; ����Ļ����ʾһ���ַ���
        mov edx, len     ; ���������ַ�������
        mov ecx, msg     ; ��������Ҫ��ʾ���ַ���
        mov ebx, 1       ; ����һ���ļ�������(stdout) 
        mov eax, 4       ; ϵͳ���ú�(sys_write) 
        int 0x80         ; �����ں˹���
                         ; �˳�����
        mov ebx, 0       ; ����һ���˳�����
        mov eax, 1       ; ϵͳ���ú�(sys_exit) 
        int 0x80         ; �����ں˹���


; ���� nasm -f elf hello.asm nasm�õ���intel�� ����﷨
;�ٽ������� ld -o hello hello.o 
; ./hello �Ϳ���ִ����. 
