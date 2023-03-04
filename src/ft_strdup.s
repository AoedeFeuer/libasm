;       char	*ft_strdup(const char *s1)
;       {
;       	char *s2;
;       
;       	if (!(s2 = (char *)malloc(ft_strlen(s1) + 1)))
;       		return (0);
;       	ft_strcpy(s2, s1);
;       	return (s2);
;       }

; nasm -f macho64 ft_strdup.s && gcc ft_strdup.c ft_strdup.o && ./a.out
global    _ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_strcpy

section   .text
_ft_strdup:
    xor     rax, rax
    push    rdi             ; save orig str
    call    _ft_strlen      ; call len(rdi)
    pop     rdi             ; rdi = orig str
    mov     rdx, rax        ; rdx = return strlen
    inc     rdx             ; rdx + 1

    push    rdi             ; save orig str
    mov     rdi, rdx        ; malloc(size rdx)
    call    _malloc
    cmp     rax, 0          ; if malloc return null
    je      error_malloc
    pop     rdi             ; rdi = orig str

    push    rdi             ; save orig str
    mov     rcx, rdi        ; rdi to another reg
    mov     rsi, rcx        ; 2nd arg = src (from rdi)
    mov     rdi, rax        ; 1st arg = dst (from malloc rax)
    call    _ft_strcpy
    pop     rdi

    ret

error_malloc:
    mov     rax, 0          ; return rax = null
    ret
