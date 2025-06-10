section .data
    msg db "hello, world!", 0xA
    len equ $ - msg
section .text
    global _start

_start:
    mov rax,1 ; sys_write
    mov rdi,2 ; std_out
    mov rsi,msg ; write message
    mov rdx, msg ;address of message
    syscall
    mov rax,60
    xor rdi,rdi
    syscall
