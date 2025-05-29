section .data
    num1 dw 50
    num2 dw 20
    num3 dw 15

section .text
    global _start

_start:
    mov ax, [num1]     ; AX = 50
    sub ax, [num2]     ; AX = 30
    sub ax, [num3]     ; AX = 15

    ; pasar el resultado a RDI
    movzx rdi, ax      ; RDI = 15
    mov rax, 60        ; syscall: exit
    syscall
