section .data
    num1 dw 30
    num2 dw 10
    num3 dw 5

section .text
    global _start

_start:
    mov ax, [num1]     ; AX = 30
    sub ax, [num2]     ; AX = 20
    sub ax, [num3]     ; AX = 15

    ; pasar resultado a RDI (registro de 64 bits para syscall exit)
    movzx rdi, ax      ; mover AX (16 bits) a RDI (64 bits), sin signo
    mov rax, 60        ; syscall número 60 = exit
    syscall            ; llamar a exit(resultado)
