	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"%u "
	.align	3
.LC2:
	.string	"\n%u"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	ld	a4,0(a5)
	sd	a4,8(sp)
	ld	a4,8(a5)
	sd	a4,16(sp)
	lw	a5,16(a5)
	sw	a5,24(sp)
	addi	s0,sp,8
	addi	s2,sp,28
	mv	s1,s0
	lui	s3,%hi(.LC1)
.L2:
	lw	a1,0(s1)
	addi	a0,s3,%lo(.LC1)
	call	printf
	addi	s1,s1,4
	bne	s1,s2,.L2
	li	a0,10
	call	putchar
	li	a2,4
	li	a1,5
	addi	a0,sp,8
	call	sort
	lui	s1,%hi(.LC1)
.L3:
	lw	a1,0(s0)
	addi	a0,s1,%lo(.LC1)
	call	printf
	addi	s0,s0,4
	bne	s0,s2,.L3
	li	a2,4
	li	a1,5
	addi	a0,sp,8
	call	sort
	mv	a1,a0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
	li	a0,0
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	15
	.word	6
	.word	9
	.word	1
	.word	5
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
