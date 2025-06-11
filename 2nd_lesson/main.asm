section .data
    msg db "Hello from NASM 64-bit!", 0

section .text
    global main
    extern printf

main:
    sub rsp, 40                ; Allocate shadow space (required by Windows x64)
    lea rcx, [rel msg]         ; Use RIP-relative addressing
    call printf
    add rsp, 40
    ret
