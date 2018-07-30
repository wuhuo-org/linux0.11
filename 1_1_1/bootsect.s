    BOOTSEG = 0x07c0
    .code16
    ljmp $BOOTSEG, $go
go:
    movw %cs, %ax
    movw %ax, %ds
    movw %ax, %es
    movw $msg, %bp
    movw $0x1301, %ax
    movb $7, %bl
    movw msg_len, %cx
    xorw %dx, %dx
    int  $0x10
    jmp  .
msg:
    .ascii "Hello, world."
msg_len:
    .word . - msg
    .org 0x1fe
    .word 0xaa55
