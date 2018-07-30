    SETUPSEG = 0x07e0
    .code16
    movw $0x0201, %ax
    movw $0x0002, %cx
    movw $0x0080, %dx
    movw $SETUPSEG, %bx
    movw %bx, %es
    xorw %bx, %bx
    int  $0x13
    ljmp $SETUPSEG, $0
    .org 0x1fe
    .word 0xaa55
