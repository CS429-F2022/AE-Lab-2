	.arch armv8-a
	.file	"eor.c"
	.text
	.align	2
start:
	movk x0, #1
	movk x1, #9
	eor x0, x0, x0
	mvn x2, x0
	stur x1, [x2]
	
	ret
	.size	start, .-start
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
