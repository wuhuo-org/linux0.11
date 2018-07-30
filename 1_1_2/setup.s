    .code16
    movw %cs, %ax
    movw %ax, %ds
    movw %ax, %es
    movw $msg, %bp
    movw $0x1301, %ax
    movb $7, %bl
    movw msg_len, %cx
    movw $0x0100, %dx
    int  $0x10
    jmp  .
msg:
    .ascii "hello, world."
msg_len:
    .word .-msg
