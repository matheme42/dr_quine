section .data
    string: db "section .data%2$c    string: db %3$c%1$s%3$c, 0%2$c    name: db %3$cSully_%4$cd.s%3$c, 0%2$c    mode: db %3$cw%3$c, 0%2$c    sys: db %3$cnasm -f macho64 Sully_%4$c1$d.s -o Sully_%4$c1$d.o ; gcc Sully_%4$c1$d.o -o Sully_%4$c1$d ; ./Sully_%4$c1$d ; rm Sully_%4$c1$d Sully_%4$c1$d.o%3$c, 0%2$csection .text%2$c    global _main%2$c    extern _fprintf%2$c    extern _fopen%2$c    extern _fclose%2$c    extern _memset%2$c    extern _system%2$c    extern _strcpy%2$c    extern _sprintf%2$c%2$c_main:%2$c    push rbp%2$c    mov  rbp, rsp%2$c    sub  rsp, 0x80%2$c    mov r12, %5$d%2$c    cmp r12, 0%2$c    jz _quit%2$c    dec r12%2$c    mov rdi, rsp%2$c    lea rsi, [rel name]%2$c    mov rdx, r12%2$c    call _sprintf%2$c    mov rdi, rsp%2$c    lea rsi, [rel mode]%2$c    call _fopen%2$c    cmp rax, 0%2$c    jz _quit%2$c    mov r13, rax%2$c    mov rdi, rax%2$c    lea rsi, [rel string]%2$c    lea rdx, [rel string]%2$c    mov rcx, 10%2$c    mov r8, 34%2$c    mov r9, 37%2$c    mov [rsp], r12%2$c    call _fprintf%2$c    mov rdi, r13%2$c    call _fclose%2$c    mov rdi, rsp%2$c    lea rsi, [rel sys]%2$c    mov rdx, r12%2$c    call _sprintf%2$c    mov rdi, rsp%2$c    call _system%2$c_quit:%2$c    leave%2$c    ret", 0
    name: db "Sully_%d.s", 0
    mode: db "w", 0
    sys: db "nasm -f macho64 Sully_%1$d.s -o Sully_%1$d.o ; gcc Sully_%1$d.o -o Sully_%1$d ; ./Sully_%1$d ; rm Sully_%1$d Sully_%1$d.o", 0
section .text
    global _main
    extern _fprintf
    extern _fopen
    extern _fclose
    extern _memset
    extern _system
    extern _strcpy
    extern _sprintf

_main:
    push rbp
    mov  rbp, rsp
    sub  rsp, 0x80
    mov r12, 5
    cmp r12, 0
    jz _quit
    dec r12
    mov rdi, rsp
    lea rsi, [rel name]
    mov rdx, r12
    call _sprintf
    mov rdi, rsp
    lea rsi, [rel mode]
    call _fopen
    cmp rax, 0
    jz _quit
    mov r13, rax
    mov rdi, rax
    lea rsi, [rel string]
    lea rdx, [rel string]
    mov rcx, 10
    mov r8, 34
    mov r9, 37
    mov [rsp], r12
    call _fprintf
    mov rdi, r13
    call _fclose
    mov rdi, rsp
    lea rsi, [rel sys]
    mov rdx, r12
    call _sprintf
    mov rdi, rsp
    call _system
_quit:
    leave
    ret