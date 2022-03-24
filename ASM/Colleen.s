; je suis un commentaire
section .data
    string: db "; je suis un commentaire%2$csection .data%2$c    string: db %3$c%1$s%3$c, 0 %2$csection .text%2$c    global start%2$c    global _main%2$c    extern _printf%2$c%2$cstart:%2$c    call _main%2$c    ret%2$c%2$c_main:%2$c    push rbp%2$c    mov  rbp, rsp%2$c    lea rdi, [rel string] ; moi aussi%2$c    lea rsi, [rel string]%2$c    mov rdx, 10%2$c    mov rcx, 34%2$c    call _printf%2$c    leave%2$c    ret%2$c", 0 
section .text
    global start
    global _main
    extern _printf

start:
    call _main
    ret

_main:
    push rbp
    mov  rbp, rsp
    lea rdi, [rel string] ; moi aussi
    lea rsi, [rel string]
    mov rdx, 10
    mov rcx, 34
    call _printf
    leave
    ret
