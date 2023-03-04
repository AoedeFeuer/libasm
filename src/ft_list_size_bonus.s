; nasm -f macho64 ft_list_size.s && gcc ft_list_size.c ft_list_size.o && ./a.out
; BITS 64
global    _ft_list_size

section   .text
_ft_list_size:
    push    rbx
    xor     rbx, rbx 
    xor     rcx, rcx                 ; rcx = 0, use as counter i
    mov     rbx, rdi
while_loop:
    cmp     rbx, byte 0             ; head == '\0' ?
    jz      end
    mov     rbx, QWORD[rbx + 8]     ; head = head->next
    inc     rcx                     ; i++
    jmp     while_loop
end:
    mov     rax, rcx                ; save i to return value
    pop     rbx
    ret
