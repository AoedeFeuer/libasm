;;   void	ft_list_remove_if(t_list **begin_list, void *data_ref, int (*cmp)());
;; nasm -f macho64 ft_list_remove_if_bonus.s && gcc ft_list_remove_if.c ft_list_remove_if.o && ./a.out
;; BITS 64
;global    _ft_list_remove_if
;extern _free
;
;section   .text
;
;_ft_list_remove_if:
;    push    rbx
;    xor     rbx, rbx
;    mov     rbx, rdi                ; head = head
;    test    rdi, rdi
;    jz      end
;while_loop:
;    cmp     rbx, byte 0             ; head == '\0' ?
;    jz      end
;    mov r10, rdx
;    push    rdi
;    push    rsi
;    push    rdx
;    mov     rsi, rsi
;    mov     rdi, QWORD [rbx]
;    call    [r10]                     ; cmp(head, data)
;    pop     rdx
;    pop     rsi
;    pop     rdi
;    cmp     rax, 0                  ; cmp == 0 (true)
;    jne      del_elem
;
;del_elem:
;    mov		rdi, QWORD[rbx + 8]
;    push    rdi
;    push    rsi
;    push    rdx
;    mov     rdi, [rbx]
;    call    _free
;    pop     rdx
;    pop     rsi
;    pop     rdi
;    jmp     end
;
;end:
;    mov rax, rdi
;    pop     rbx
;    ret


;_ft_list_remove_if:
;    push    rbx
;    xor     rbx, rbx
;    mov     rbx, rdi                ; head = head
;    mov     r13, rdi                ; node = head
;    cmp     rbx, rbx
;    jz      end
;while_loop:
;    cmp     rbx, byte 0             ; head == '\0' ?
;    jz      end
;    mov     r12, QWORD[rbx + 8]     ; next = head->next
;
;    push    rdi
;    push    rsi
;    push    rdx
;    mov     rsi, rsi
;    mov     rdi, QWORD [rbx]
;    call    rdx                     ; cmp(head, data)
;    pop     rdx
;    pop     rsi
;    pop     rdi
;    cmp     rax, 0                  ; cmp == 0 (true)
;    jz      del_elem
;do_step:
;    mov     r13, QWORD [rbx]
;    mov     rbx, [r12]                ;head = head->next
;    jmp     while_loop
;
;del_elem:
;    cmp     rbx, rdi                ; head == orig head
;    je      change_head
;next_step:
;    mov		QWORD[r13 + 8], r12
;    push    rdi
;    push    rsi
;    push    rdx
;    mov     rdi, QWORD [rbx]
;    call    _free
;    pop     rdx
;    pop     rsi
;    pop     rdi
;    jmp     do_step
;
;change_head:
;    mov     rdi, r12                ; orig head = next
;    jmp     next_step
;end:
;    mov     rax, rdi
;    pop     rbx
;    ret
;
