; BITS 64
global    _ft_read
extern    ___error

section   .text
_ft_read:
        mov     rax, 0x02000003         ; system call for read
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
