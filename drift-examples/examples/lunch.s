	.data	
	.comm	u,4124
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$1,u+4
	movl	$8,u+8
	movl	$1,u+2060
	movl	$8,u+2064
	movl	$11,n
	.data	
s44:	.asciz	"fly"
	.text	
	lea	s44,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+12,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s59:	.asciz	"spider"
	.text	
	lea	s59,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+268,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s77:	.asciz	"bird"
	.text	
	lea	s77,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+524,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s93:	.asciz	"cat"
	.text	
	lea	s93,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+780,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s108:	.asciz	"dog"
	.text	
	lea	s108,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1036,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s123:	.asciz	"goat"
	.text	
	lea	s123,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1292,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s139:	.asciz	"cow"
	.text	
	lea	s139,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1548,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s154:	.asciz	"horse"
	.text	
	lea	s154,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1804,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$21,n
	.data	
s171:	.asciz	"I don't know why she swallowed a fly."
	.text	
	lea	s171,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2068,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s220:	.asciz	"That wiggled and jiggled and tickled inside her."
	.text	
	lea	s220,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2324,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s280:	.asciz	"How absurd, to swallow a bird."
	.text	
	lea	s280,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2580,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s322:	.asciz	"Imagine that, she swallowed a cat."
	.text	
	lea	s322,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2836,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s368:	.asciz	"What a hog, to swallow a dog."
	.text	
	lea	s368,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3092,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s409:	.asciz	"What a dope, to swallow a goat."
	.text	
	lea	s409,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3348,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s452:	.asciz	"I don't know how she swallowed that cow."
	.text	
	lea	s452,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3604,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s504:	.asciz	"She died of course."
	.text	
	lea	s504,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3860,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$31,n
	pushl	u+0
	.data	
s532:	.asciz	"I Know an Old Lady"
	.text	
	lea	s532,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$34,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$1,u+4120
b1:	movl	$36,n
	movl	$9,%eax
	cmpl	u+4120,%eax
	jle	f2
	movl	$38,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	pushl	u+0
	.data	
s602:	.asciz	"I know an old lady"
	.text	
	lea	s602,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	pushl	u+0
	.data	
s644:	.asciz	"Who swallowed a "
	.text	
	lea	s644,%eax
	movl	u+4120,%ebx
	cmpl	$8,%ebx
	jle	f3
	cmpl	$1,%ebx
	jge	f4
	pushl	n
	call	pttrap13
f4:f3:	decl	%ebx
	shl	$8,%ebx
	lea	u+12,%ecx
	addl	%ecx,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	pushl	u+0
	movl	u+4120,%eax
	cmpl	$8,%eax
	jle	f5
	cmpl	$1,%eax
	jge	f6
	pushl	n
	call	pttrap13
f6:f5:	decl	%eax
	shl	$8,%eax
	lea	u+2068,%ebx
	addl	%ebx,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$42,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	u+4120,%eax
	movl	%eax,u+4116
b7:	movl	$44,n
	movl	$2,%eax
	cmpl	u+4116,%eax
	jg	f8
	incl	n
	pushl	u+0
	.data	
s746:	.asciz	"She swallowed the "
	.text	
	lea	s746,%eax
	movl	u+4116,%ebx
	cmpl	$8,%ebx
	jle	f9
	cmpl	$1,%ebx
	jge	f10
	pushl	n
	call	pttrap13
f10:f9:	decl	%ebx
	shl	$8,%ebx
	lea	u+12,%ecx
	addl	%ecx,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	.data	
s790:	.asciz	" to catch the "
	.text	
	lea	s790,%eax
	movl	u+4116,%ebx
	decl	%ebx
	cmpl	$8,%ebx
	jle	f11
	cmpl	$1,%ebx
	jge	f12
	pushl	n
	call	pttrap13
f12:f11:	decl	%ebx
	shl	$8,%ebx
	lea	u+12,%ecx
	addl	%ecx,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	.data	
s818:	.asciz	","
	.text	
	lea	s818,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	decl	u+4116
	jmp	b7
f8:	movl	$50,n
	cmpl	$1,u+4120
	jle	f13
	incl	n
	pushl	u+0
	lea	u+2068,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
f13:	movl	$52,n
	movl	$54,n
	movl	$8,%eax
	cmpl	u+4120,%eax
	jle	f14
	incl	n
	pushl	u+0
	.data	
s914:	.asciz	"Perhaps she'll die."
	.text	
	lea	s914,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
f14:	movl	$56,n
	movl	$58,n
	incl	u+4120
	jmp	b1
f2:	movl	$63,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	pushl	u+0
	.data	
s983:	.asciz	"The end."
	.text	
	lea	s983,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$65,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	pushl	u+0
	.data	
s1017:	.asciz	"Thank you very much, you're too kind."
	.text	
	lea	s1017,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$67,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	pushl	u+0
	.data	
s1080:	.asciz	"I'll be here until Thursday - try the veal!"
	.text	
	lea	s1080,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$69,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	call	pttrap0
	leave	
	ret	
