vim: ft=asm
.intel_syntax noprefix
.global _start

#
# CONSTANTS
#
.section .constants
SYS_WRITE = 1
SYS_EXIT = 60
STDOUT = 1

#
# Initialised data goes here
#
.SECTION .data
hello:
    .asciz  "Hello World!\n"      # char *
    hello_len = .- hello          # size_t

#
# Code goes here
#
.SECTION .text

  _start:
    # syscall(SYS_WRITE, STDOUT, hello, hello_len);
    ;mov     rax, SYS_WRITE
    ;mov     rdi, STDOUT
    ;lea     rsi, [hello]
    ;mov     rdx, hello_len
    ;syscall

    lea     rdi,[hello]
    push    rax

    # syscall(SYS_EXIT, <sys_write return value> - hello_len);
    mov     rax, SYS_EXIT
    pop     rdi
    sub     rdi, hello_len
    syscall
