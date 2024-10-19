%include 'in_out.asm'

SECTION .data

prim: DB '(11+x)*2-6',0
x1: DB 'Введите значение х: ',0
otv1: DB 'Ответ при х= ',0

SECTION .bss
p: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax,prim
call sprintLF

mov eax,x1
call sprint

mov ecx,p
mov edx,80
call sread

mov eax,p
call atoi

xor edx,edx

add eax,11
mov ebx,2
mul ebx
sub eax,6

mov edi,eax

mov eax,otv1
call sprint
mov eax,p
call sprint
mov eax,edi
call iprintLF

call quit
