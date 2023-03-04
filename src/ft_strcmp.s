; nasm -f macho64 ft_strcmp.s && gcc ft_strcmp.c ft_strcmp.o && ./a.out
; BITS 64

;       int		ft_strcmp(const char *s1, const char *s2)
;       {
;       	size_t i;
;       
;       	i = 0;
;       	while ((s1[i] == s2[i]) && (s1[i] != '\0') && (s2[i] != '\0'))
;       		i++;
;       	return ((unsigned char)s1[i] - (unsigned char)s2[i]);
;       }

global    _ft_strcmp
section   .text
_ft_strcmp:
    push    rbx
    xor     rbx, rbx                ; rbx = 0, use as counter i
while_loop:
    movzx   rax, byte [rdi + rbx]   ; str[i]
    movzx   rdx, byte [rsi + rbx]   ; str2[i]
    cmp     rdx, rax                ; str[i] == str2[i] ?
    jne     finale_sub
    cmp     rax, byte 0             ; str[i] == '\0' ?
    jz      finale_sub
    cmp     rdx, byte 0             ; str2[i] == '\0' ?
    jz      finale_sub
    inc     rbx                     ; i++
    jmp     while_loop
finale_sub:
    sub     rax, rdx                ; unsigned (str[i] - str2[i])
    pop     rbx
    ret
