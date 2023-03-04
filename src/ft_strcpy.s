;       char	*ft_strcpy(char *dst, const char *src)
;       {
;       	int i;
;       
;       	i = 0;
;       	while (src[i] != '\0')
;       	{
;       		dst[i] = src[i];
;       		i++;
;       	}
;       	dst[i] = '\0';
;       	return (dst);
;       }

; nasm -f macho64 ft_strcpy.s && gcc ft_strcpy.c ft_strcpy.o && ./a.out
global    _ft_strcpy

section   .text
_ft_strcpy:
    push rbx
    xor  rbx, rbx                   ; rbx = 0, use as counter i
while_loop:
    cmp byte [rsi + rbx], byte 0    ; src[i] == '\0' ?
    jz  ret_dest_str
    mov al, byte [rsi + rbx]
    mov byte [rdi + rbx], al        ; dst[i] = src[i]
    inc rbx                         ; i++
    jmp while_loop
ret_dest_str:
    mov byte [rdi + rbx], byte 0    ; dst[i] = '\0'
    mov rax, rdi                    ; return dst
    pop rbx
    ret
