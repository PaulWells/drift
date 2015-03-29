	.data	
	.comm	u,800
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
	movl	$10,n
	pushl	u+4
	.data	
s24:	.asciz	"enter box width and height: "
	.text	
	lea	s24,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+780,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	pushl	u+0
	lea	u+776,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	incl	n
	pushl	u+4
	.data	
s95:	.asciz	"enter number of boxes across and down: "
	.text	
	lea	s95,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+788,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	pushl	u+0
	lea	u+784,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	movl	$16,n
	incl	u+780
	incl	n
	incl	u+776
	movl	$20,n
