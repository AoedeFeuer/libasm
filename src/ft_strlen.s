; nasm -f macho64 ft_strlen.s && gcc ft_strlen.c ft_strlen.o && ./a.out
; BITS 64
global    _ft_strlen

section   .text
_ft_strlen:
    push    rbx 
    xor     rbx, rbx                ; rbx = 0, use as counter i
while_loop:
    cmp     [rdi + rbx], byte 0     ; str[i] == '\0' ?
    jz      end
    inc     rbx                     ; i++
    jmp     while_loop
end:
    mov     rax, rbx                ; save i to return value
    pop     rbx
    ret