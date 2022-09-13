    .arch armv8-a
    .file "test_halt.c"
    .text
    .align 2
    .global start
    .type   start, %function

start:
    hlt #0
    movk x0, #10

    eor x5, x5, x5
    mvn x5, x5
    stur x0, [x5]
    ret
    .size   start, .-start
    .ident "GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
    .section       .note.GNU-stack,"",@progbits
