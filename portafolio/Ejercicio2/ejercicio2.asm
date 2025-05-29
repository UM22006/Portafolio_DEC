section .data
    num1 dw 40
    num2 dw 12
    num3 dw 8

section .text
    global _start

_start:
    mov ax, [num1]    ; AX = 40
    sub ax, [num2]    ; AX = 28
    sub ax, [num3]    ; AX = 20

    movzx rdi, ax     ; RDI = 20
    mov rax, 60       ; syscall: exit
    syscall
