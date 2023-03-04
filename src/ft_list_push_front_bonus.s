;void ft_list_push_front(t_list **begin_list, void *data);

; nasm -f macho64 ft_list_push_front_bonus.s && gcc ft_list_push_front.c ft_list_push_front.o && ./a.out
; BITS 64
global    _ft_list_push_front
extern _malloc

section   .text
_ft_list_push_front:
    push    rbx
new_block_malloc:
    push    rdi             ; save head
    push    rsi             ; save data
    mov     rdi, 16         ; malloc(size rdx) 8 byte data + 8 byte pointer = 64 bit
    call    _malloc
    pop     rsi             ; rsi = orig data
    pop     rdi             ; rdi = orig head    
    cmp     rax, 0          ; if malloc return null
    je      error_malloc
load_data:
    xor     rbx, rbx
    mov     [rax], rsi
    mov     rbx, [rdi]      ; data to 0 shift
    mov     [rax + 8], rbx  ; pointer +64b shift
    mov		[rdi], rax      ; head = new block
    pop     rbx
    ret

error_malloc:
    mov     rax, 0          ; return rax = null
    pop     rbx
    ret
