	.file	"sort.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sort
	.type	sort, @function
sort:
	li	a5,1
	bleu	a1,a5,.L2
	mv	t1,a0
	addi	t3,a1,-1
	li	a7,0
	li	a6,-1
	j	.L6
.L4:
	addi	a4,a4,1
	slli	a4,a4,2
	add	a4,a0,a4
	sw	a1,0(a4)
	addi	a7,a7,1
	addi	t1,t1,4
	beq	a7,t3,.L2
.L6:
	lw	a1,4(t1)
	sext.w	a4,a7
	mv	a5,t1
	blt	a4,zero,.L4
.L3:
	lw	a3,0(a5)
	ble	a3,a1,.L4
	sw	a3,4(a5)
	addiw	a4,a4,-1
	addi	a5,a5,-4
	bne	a4,a6,.L3
	j	.L4
.L2:
	slli	a5,a2,2
	add	a0,a0,a5
	lw	a0,-4(a0)
	ret
	.size	sort, .-sort
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
