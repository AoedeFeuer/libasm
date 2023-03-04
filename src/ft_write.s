; nasm -f macho64 ft_write.s && gcc ft_write.c ft_write.o && ./a.out
; BITS 64
global    _ft_write
extern    ___error

section   .text
_ft_write:
        mov     rax, 0x02000004         ; system call for write, rdi = fd, rsi = buf, rdx = byte
        syscall
        jc      call_err
        ret
call_err:
        mov     r12, rax
        sub     rsp, 8
        call    ___error
        add     rsp, 8
        mov     [rax], r12
        mov     rax, -1
        ret