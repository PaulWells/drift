	.data	
	.comm	u,4
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	jmp	f1
p9:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$42,%eax
	leave	
	ret	
p22:	pushl	%ebp
	movl	%esp, %ebp	
	.data	
s30:	.asciz	"forty-two"
	.text	
	lea	s30,%eax
	movl	%eax,%eax
	leave	
	ret	
f1:	movl	$11,n
	pushl	u+0
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p9
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$11,n
	pushl	%eax
	pushl	$10
	call	pttrap8
	addl	$12,%esp
	movl	$13,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	pushl	u+0
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p22
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$13,n
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	call	pttrap0
	leave	
	ret	
