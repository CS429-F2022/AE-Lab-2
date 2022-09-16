    .arch armv8-a
    .text
    .align 2
    .global start
    .type   start, %function
start:
    movk x1, #7
    eor x2, x2, x2
    adds x29, x30, x2 // Jank way of storing return address
    bl foo
    movk x1, #9
    eor x5, x5, x5
    mvn x5, x5
    stur x1, [x5]
    ret x29

foo:
    eor x5, x5, x5
    mvn x5, x5
    stur x1, [x5]
    ret
    .size start, .-start
    .ident "GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
    .section .note.GNU-stack,"",@progbits