    .arch armv8-a
    .text
    .align  2
start:
    movz    x1, #1
    lsl     x2, x1, #3
    
    eor     x5, x5, x5
    mvn     x5, x5
    stur    x2, [x5]
    nop
    ret
    .size   start, .-start
    .ident  "GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
    .section    .note.GNU-stack,"",@progbits
    