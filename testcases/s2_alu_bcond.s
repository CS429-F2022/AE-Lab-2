    .arch armv8-a
    .text
    .align 2
    .global start
    .type   start, %function
start:
    movk x1, #420
    movk x2, #420
    subs x3, x1, x2
    b.eq .L1
    
    eor x5, x5, x5
    mvn x5, x5
    stur x1, [x5]
    ret
.L1:
    movk x4, #69
    eor x5, x5, x5
    mvn x5, x5
    stur x4, [x5]
    ret
    .size start, .-start
    .ident "GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
    .section .note.GNU-stack,"",@progbits
