	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_foo
	.align	4, 0x90
_foo:                                   ## @foo
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	leal	L_.str-L0$pb(%eax), %eax
	movl	%eax, (%esp)
	calll	_printf
	movl	%eax, -4(%ebp)          ## 4-byte Spill
	addl	$8, %esp
	popl	%ebp
	retl

	.globl	_bar
	.align	4, 0x90
_bar:                                   ## @bar
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	L1$pb
L1$pb:
	popl	%eax
	leal	L_.str1-L1$pb(%eax), %eax
	movl	%eax, (%esp)
	calll	_printf
	movl	%eax, -4(%ebp)          ## 4-byte Spill
	addl	$8, %esp
	popl	%ebp
	retl

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	$0, -4(%ebp)
	calll	_foo
	xorl	%eax, %eax
	addl	$8, %esp
	popl	%ebp
	retl

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Hey there, I'm foo!\n"

L_.str1:                                ## @.str1
	.asciz	"Did you call me?\n"


.subsections_via_symbols
