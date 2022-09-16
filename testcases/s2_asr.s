    .arch armv8-a
    .text
    .align  2
start:
    eor     x1, x1, x1
    mvn     x1, x1
    adds    x2, x1, x1
    asr     x3, x2, #1
    
    eor     x5, x5, x5
    mvn     x5, x5
    stur    x3, [x5]
    nop
    ret
    .size   start, .-start
    .ident  "GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
    .section    .note.GNU-stack,"",@progbits
    