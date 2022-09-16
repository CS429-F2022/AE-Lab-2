	.arch armv8-a
	.text
	.align	2
start:
	movk	x0, #0
	movk	x1, #15
	movk	x2, #10
	movk	x3, #65535
	movk	x4, #1
	ands	x0, x0, x0 
    ands	x1, x3, x1 
    ands    x0, x1, x0

	eor 	x5, x5, x5
	mvn 	x5, x5
	stur	x0, [x5]

	ret
	.size	start, .-start
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
