%include 'in_out.asm'

SECTION .data
prim1 DB '3a ,a<3' ,0
prim2 DB 'x+1, a=>3',0
X1 DB 'Введите значение Х:',0
A1 DB 'Введите значение a:',0
otv DB 'Ответ: ',0

SECTION .bss
X RESB 20
A RESB 20
F RESB 20
SECTION .text
GLOBAL _start
_start:

mov eax,prim1
call sprintLF
mov eax,prim2
call sprintLF

mov eax,X1
call sprint

mov ecx,X
mov edx,10
call sread

mov eax,X
call atoi
mov [X],eax

mov eax,A1
call sprint

mov ecx,A
mov edx,10
call sread

mov eax,A
call atoi
mov [A],eax

mov ecx,[X]
mov [F],ecx

mov ecx,3
cmp ecx,[A]
jl check_or
mov eax,[A]
mov ebx,3
mul ebx
mov [F],eax
jmp fin 

check_or:
mov ecx,[X]
add ecx,1
mov [F],ecx

fin:
mov eax,otv
call sprint
mov eax,[F]
call iprintLF
call quit


















