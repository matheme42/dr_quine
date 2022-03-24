%define MAINDEF global _main
%define USELESS "(╯°□°）╯︵ ┻━┻"
%define MACROS "🐟"
section .data
    string: db "%4$cdefine MAINDEF global _main%2$c%4$cdefine USELESS %3$c(╯°□°）╯︵ ┻━┻%3$c%2$c%4$cdefine MACROS %3$c🐟%3$c%2$csection .data%2$c    string: db %3$c%1$s%3$c, 0%2$c    name: db %3$cGrace_kid.s%3$c, 0%2$c    mode: db %3$cw%3$c, 0%2$csection .text%2$c    MAINDEF%2$c    extern _fprintf%2$c    extern _fopen%2$c    extern _fclose%2$c%2$c_main:%2$c    push rbp%2$c    mov  rbp, rsp%2$c    lea rdi, [rel name]%2$c    lea rsi, [rel mode]%2$c    call _fopen%2$c    cmp rax, 0%2$c    jl l1%2$c    mov rdi, rax%2$c    lea rsi, [rel string]%2$c    lea rdx, [rel string]%2$c    mov rcx, 10%2$c    mov r8, 34%2$c    mov r9, 37%2$c    call _fprintf%2$c    call _fclose%2$cl1:%2$c    leave%2$c    ret%2$c", 0
    name: db "Grace_kid.s", 0
    mode: db "w", 0
section .text
    MAINDEF
    extern _fprintf
    extern _fopen
    extern _fclose

_main:
    push rbp
    mov  rbp, rsp
    lea rdi, [rel name]
    lea rsi, [rel mode]
    call _fopen
    cmp rax, 0
    jl l1
    mov rdi, rax
    lea rsi, [rel string]
    lea rdx, [rel string]
    mov rcx, 10
    mov r8, 34
    mov r9, 37
    call _fprintf
    call _fclose
l1:
    leave
    ret
