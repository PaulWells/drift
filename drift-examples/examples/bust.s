	.data	
	.comm	u,4860
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
	movl	$1,u+8
	movl	$7,u+12
	movl	$1,u+44
	movl	$7,u+48
	jmp	f1
p40:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+384
	movl	12(%ebp),%eax
	movl	%eax,u+380
	movl	$38,n
	cmpl	$17,u+376
	jne	f2
	incl	n
	movl	$19,u+376
	jmp	f3
f2:	movl	$41,n
	movl	$17,u+376
f3:	movl	$43,n
	movl	u+372,%eax
	imull	u+376,%eax
	movl	$10000,%esi
	movl	%eax,%edi
	pushl	%eax
	pushl	%edx
	movl	%edi,%edx
	movl	%edx,%eax
	sarl	$31,	%edx
	idivl	%esi
	movl	%edx,%esi
	popl	%edx
	popl	%eax
	movl	%esi,%eax
	movl	%eax,u+372
	incl	n
	movl	u+380,%eax
	movl	u+384,%ebx
	movl	%ebx,%esi
	movl	u+372,%ebx
	movl	%ebx,%edi
	pushl	%eax
	pushl	%edx
	movl	%edi,%edx
	movl	%edx,%eax
	sarl	$31,	%edx
	idivl	%esi
	movl	%edx,%esi
	popl	%edx
	popl	%eax
	movl	%esi,%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
f1:	movl	$48,n
	movl	$13277,u+372
	incl	n
	movl	$17,u+376
	movl	$1,u+388
	movl	$52,u+392
	jmp	f4
p151:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+612
	movl	$13,u+616
	movl	$67,n
	movl	$1,u+676
b5:	movl	$69,n
	movl	u+676,%eax
	cmpl	$13,%eax
	jle	f6
	cmpl	$1,%eax
	jge	f7
	pushl	n
	call	pttrap13
f7:f6:	decl	%eax
	shl	$2,%eax
	lea	u+620,%ebx
	addl	%ebx,%eax
	movl	$0,(%eax)
	incl	n
	incl	u+676
	cmpl	$13,u+676
	jg	f8
	jmp	b5
f8:	movl	$74,n
	movl	$1,u+672
b9:	movl	$76,n
	lea	u+608,%eax
	pushl	%eax
	pushl	$13
	call	p40
	addl	$8,%esp
	movl	$77,n
b10:	movl	$78,n
	movl	u+608,%eax
	cmpl	$13,%eax
	jle	f11
	cmpl	$1,%eax
	jge	f12
	pushl	n
	call	pttrap13
f12:f11:	decl	%eax
	shl	$2,%eax
	lea	u+620,%ebx
	addl	%ebx,%eax
	cmpl	$4,(%eax)
	jne	f13
	incl	n
	lea	u+608,%eax
	pushl	%eax
	pushl	$13
	call	p40
	addl	$8,%esp
	movl	$80,n
	jmp	b10
f13:	movl	$82,n
	movl	u+672,%eax
	cmpl	$52,%eax
	jle	f14
	cmpl	$1,%eax
	jge	f15
	pushl	n
	call	pttrap13
f15:f14:	decl	%eax
	shl	$2,%eax
	lea	u+396,%ebx
	addl	%ebx,%eax
	movl	u+608,%ebx
	movl	%ebx,(%eax)
	incl	n
	movl	u+608,%eax
	cmpl	$13,%eax
	jle	f16
	cmpl	$1,%eax
	jge	f17
	pushl	n
	call	pttrap13
f17:f16:	decl	%eax
	shl	$2,%eax
	lea	u+620,%ebx
	addl	%ebx,%eax
	movl	u+608,%ebx
	cmpl	$13,%ebx
	jle	f18
	cmpl	$1,%ebx
	jge	f19
	pushl	n
	call	pttrap13
f19:f18:	decl	%ebx
	shl	$2,%ebx
	lea	u+620,%ecx
	addl	%ecx,%ebx
	movl	(%ebx),%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	movl	$85,n
	incl	u+672
	cmpl	$52,u+672
	jg	f20
	jmp	b9
f20:	movl	$89,n
	movl	$0,u+604
	leave	
	ret	
p351:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+680
	movl	$93,n
	incl	u+604
	incl	n
	movl	u+680,%eax
	movl	u+604,%ebx
	cmpl	$52,%ebx
	jle	f21
	cmpl	$1,%ebx
	jge	f22
	pushl	n
	call	pttrap13
f22:f21:	decl	%ebx
	shl	$2,%ebx
	lea	u+396,%ecx
	addl	%ecx,%ebx
	movl	(%ebx),%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
p389:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+684
	movl	$98,n
	movl	u+684,%eax
	movl	$52,%ebx
	subl	u+604,%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
f4:	movl	$1,u+688
	movl	$13,u+692
	jmp	f23
p426:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+4032
	movl	12(%ebp),%eax
	movl	%eax,u+4028
	movl	16(%ebp),%eax
	movl	%eax,u+4024
	movl	$111,n
	movl	u+4032,%eax
	.data	
s448:	.asciz	""
	.text	
	lea	s448,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$113,n
	movl	$1,u+4040
b24:	movl	$115,n
	movl	u+4024,%eax
	cmpl	%eax,u+4040
	jg	f25
	incl	n
	movl	u+4032,%eax
	movl	u+4032,%ebx
	.data	
s482:	.asciz	" "
	.text	
	lea	s482,%ecx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ecx,%edx
	pushl	%edx
	pushl	%ebx
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	movl	u+4028,%ecx
	movl	u+4040,%edx
	cmpl	4(%ecx),%edx
	jle	f26
	cmpl	(%ecx),%edx
	jge	f27
	pushl	n
	call	pttrap13
f27:f26:	subl	(%ecx),%edx
	shl	$2,%edx
	addl	$8,%ecx
	addl	%ecx,%edx
	movl	(%edx),%edx
	cmpl	$13,%edx
	jle	f28
	cmpl	$1,%edx
	jge	f29
	pushl	n
	call	pttrap13
f29:f28:	decl	%edx
	shl	$8,%edx
	lea	u+696,%ecx
	addl	%ecx,%edx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	incl	u+4040
	jmp	b24
f25:	leave	
	ret	
f23:	movl	$122,n
	.data	
s532:	.asciz	"A"
	.text	
	lea	s532,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+696,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s545:	.asciz	"2"
	.text	
	lea	s545,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+952,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s558:	.asciz	"3"
	.text	
	lea	s558,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1208,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s571:	.asciz	"4"
	.text	
	lea	s571,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1464,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s584:	.asciz	"5"
	.text	
	lea	s584,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1720,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s597:	.asciz	"6"
	.text	
	lea	s597,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1976,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s610:	.asciz	"7"
	.text	
	lea	s610,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2232,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s623:	.asciz	"8"
	.text	
	lea	s623,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2488,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s636:	.asciz	"9"
	.text	
	lea	s636,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2744,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s649:	.asciz	"10"
	.text	
	lea	s649,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3000,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s663:	.asciz	"J"
	.text	
	lea	s663,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3256,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s676:	.asciz	"Q"
	.text	
	lea	s676,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3512,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s689:	.asciz	"K"
	.text	
	lea	s689,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3768,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	jmp	f30
p695:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+4044
	movl	$143,n
	movl	$0,u+96
	incl	n
	movl	$0,u+92
	incl	n
	movl	$0,u+88
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s749:	.asciz	"New shuffle."
	.text	
	lea	s749,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s794:	.asciz	"Enter player name (E.O.Thorp for Thorp, your name for you, q to quit): "
	.text	
	lea	s794,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+110,%eax
	pushl	%eax
	call	pttrap107
	addl	$8,%esp
	movl	$152,n
	pushl	u+0
	call	pttrap4
	addl	$4,%esp
	.data	
s904:	.asciz	"q"
	.text	
	lea	s904,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
	pushl	%eax
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	je	f31
	incl	n
	movl	u+4044,%eax
	movb	$0,(%eax)
	jmp	f32
f31:	movl	$156,n
	.data	
s929:	.asciz	"E.O.Thorp"
	.text	
	lea	s929,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
	pushl	%eax
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	jne	f33
	incl	n
	pushl	u+4
	.data	
s950:	.asciz	"What does he/she stand on? "
	.text	
	lea	s950,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+368,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	incl	n
	pushl	u+0
	call	pttrap4
	addl	$4,%esp
b34:	movl	$160,n
	cmpl	$0,u+368
	jle	f35
	cmpl	$20,u+368
	jle	f36
f35:	incl	n
	pushl	u+4
	.data	
s1038:	.asciz	"(1..20): "
	.text	
	lea	s1038,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+368,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	incl	n
	pushl	u+0
	call	pttrap4
	addl	$4,%esp
	jmp	b34
f36:f33:	movl	$164,n
	movl	$166,n
	.data	
s1093:	.asciz	"E.O.Thorp"
	.text	
	lea	s1093,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
	pushl	%eax
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	je	f37
	movl	$168,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1122:	.asciz	"E.O.Thorp plays this time."
	.text	
	lea	s1122,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f38
f37:	movl	$170,n
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1185:	.asciz	"Next player is "
	.text	
	lea	s1185,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+110,%ebx
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
s1206:	.asciz	"."
	.text	
	lea	s1206,%ebx
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1232:	.asciz	"He stops at "
	.text	
	lea	s1232,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+368
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s1271:	.asciz	"."
	.text	
	lea	s1271,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$174,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$15,%eax
	cmpl	u+368,%eax
	jle	f39
	incl	n
	pushl	u+4
	.data	
s1307:	.asciz	"(What a hamburger!)"
	.text	
	lea	s1307,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f40
f39:	movl	$177,n
	pushl	u+4
	.data	
s1354:	.asciz	"Good luck, "
	.text	
	lea	s1354,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+110,%ebx
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
s1371:	.asciz	"."
	.text	
	lea	s1371,%ebx
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f40:f38:	movl	$181,n
	movl	u+4044,%eax
	movb	$1,(%eax)
f32:	leave	
	ret	
p1412:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+4048
	movl	$192,n
	lea	u+4052,%eax
	pushl	%eax
	call	p389
	addl	$4,%esp
	movl	$194,n
	cmpl	$10,u+4052
	jle	f41
	movl	$196,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1457:	.asciz	"New game."
	.text	
	lea	s1457,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	u+96
	incl	n
	movl	u+4048,%eax
	movb	$1,(%eax)
	jmp	f42
f41:	movl	$200,n
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1524:	.asciz	"Too few cards left for another game."
	.text	
	lea	s1524,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1584:	.asciz	"Of "
	.text	
	lea	s1584,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+96
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s1614:	.asciz	" games, "
	.text	
	lea	s1614,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s1651:	.asciz	" won "
	.text	
	lea	s1651,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+92
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s1683:	.asciz	", dealer won "
	.text	
	lea	s1683,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+88
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s1723:	.asciz	"."
	.text	
	lea	s1723,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$205,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	u+92,%eax
	cmpl	%eax,u+88
	jle	f43
	incl	n
	pushl	u+4
	.data	
s1760:	.asciz	"House cleans up on "
	.text	
	lea	s1760,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+110,%ebx
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
s1785:	.asciz	" this time."
	.text	
	lea	s1785,%ebx
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f44
f43:	movl	$207,n
	movl	u+88,%eax
	cmpl	%eax,u+92
	jle	f45
	incl	n
	.data	
s1835:	.asciz	"E.O.Thorp"
	.text	
	lea	s1835,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
	pushl	%eax
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	je	f46
	incl	n
	pushl	u+4
	.data	
s1855:	.asciz	"E.O.Thorp does it again."
	.text	
	lea	s1855,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f47
f46:	movl	$211,n
	pushl	u+4
	.data	
s1910:	.asciz	" must have doctored the shuffle."
	.text	
	lea	s1910,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
	pushl	%eax
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f47:	jmp	f48
f45:	movl	$214,n
	pushl	u+4
	.data	
s1972:	.asciz	"Even shuffle."
	.text	
	lea	s1972,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f48:f44:	movl	$217,n
	movl	u+4048,%eax
	movb	$0,(%eax)
f42:	leave	
	ret	
p2022:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$224,n
	incl	u+84
	incl	n
	movl	u+84,%eax
	cmpl	$7,%eax
	jle	f49
	cmpl	$1,%eax
	jge	f50
	pushl	n
	call	pttrap13
f50:f49:	decl	%eax
	shl	$2,%eax
	lea	u+52,%ebx
	addl	%ebx,%eax
	pushl	%eax
	call	p351
	addl	$4,%esp
	movl	$226,n
	leave	
	ret	
p2054:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$232,n
	incl	u+80
	incl	n
	movl	u+80,%eax
	cmpl	$7,%eax
	jle	f51
	cmpl	$1,%eax
	jge	f52
	pushl	n
	call	pttrap13
f52:f51:	decl	%eax
	shl	$2,%eax
	lea	u+16,%ebx
	addl	%ebx,%eax
	pushl	%eax
	call	p351
	addl	$4,%esp
	movl	$234,n
	leave	
	ret	
p2086:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$242,n
	movb	$0,u+108
	incl	n
	movb	$0,u+109
	incl	n
	movl	$0,u+84
	incl	n
	movl	$0,u+80
	movl	$248,n
	call	p2022
	addl	$0,%esp
	movl	$248,n
	incl	n
	call	p2054
	addl	$0,%esp
	movl	$249,n
	incl	n
	call	p2022
	addl	$0,%esp
	movl	$250,n
	movl	$252,n
	call	p2054
	addl	$0,%esp
	movl	$252,n
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	lea	u+4056,%eax
	pushl	%eax
	call	p426
	addl	$12,%esp
	movl	$253,n
	pushl	u+4
	.data	
s2166:	.asciz	"The initial deal gives "
	.text	
	lea	s2166,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s2216:	.asciz	" :"
	.text	
	lea	s2216,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+4056,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	lea	u+4056,%eax
	pushl	%eax
	call	p426
	addl	$12,%esp
	movl	$255,n
	pushl	u+4
	.data	
s2273:	.asciz	"  and the dealer :"
	.text	
	lea	s2273,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+4056,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s2318:	.asciz	"."
	.text	
	lea	s2318,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	leave	
	ret	
p2340:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+4324
	movl	12(%ebp),%eax
	movl	%eax,u+4320
	movl	16(%ebp),%eax
	movl	%eax,u+4316
	movl	20(%ebp),%eax
	movl	%eax,u+4312
	movl	$267,n
	movl	u+4324,%eax
	movl	$0,(%eax)
	incl	n
	movl	$0,u+4328
	movl	$270,n
	movl	$1,u+4332
b53:	movl	$272,n
	movl	u+4312,%eax
	cmpl	%eax,u+4332
	jg	f54
	movl	$274,n
	movl	u+4316,%eax
	movl	u+4332,%ebx
	cmpl	4(%eax),%ebx
	jle	f55
	cmpl	(%eax),%ebx
	jge	f56
	pushl	n
	call	pttrap13
f56:f55:	subl	(%eax),%ebx
	shl	$2,%ebx
	addl	$8,%eax
	addl	%eax,%ebx
	jmp	f57
v2411:	movl	$275,n
	movl	$277,n
	movl	u+4324,%eax
	movl	u+4324,%ebx
	movl	u+4316,%ecx
	movl	u+4332,%edx
	cmpl	4(%ecx),%edx
	jle	f58
	cmpl	(%ecx),%edx
	jge	f59
	pushl	n
	call	pttrap13
f59:f58:	subl	(%ecx),%edx
	shl	$2,%edx
	addl	$8,%ecx
	addl	%ecx,%edx
	movl	(%edx),%edx
	addl	(%ebx),%edx
	movl	%edx,(%eax)
	jmp	m2399
v2436:	movl	$278,n
	movl	$280,n
	movl	u+4324,%eax
	movl	u+4324,%ebx
	movl	$11,%ecx
	addl	(%ebx),%ecx
	movl	%ecx,(%eax)
	incl	n
	incl	u+4328
	jmp	m2399
a2399:b60:	movl	$282,n
	movl	$282,n
	movl	$284,n
	movl	u+4324,%eax
	movl	u+4324,%ebx
	movl	$10,%ecx
	addl	(%ebx),%ecx
	movl	%ecx,(%eax)
	jmp	m2399
f57:	movl	(%ebx),%ebx
	decl	%ebx
	cmpl	$9,%ebx
	ja	b60
	shl	$2,%ebx
	movl	c2399(%ebx),%ebx
	jmp	*%ebx
	.data	
c2399:	.long	v2436
	.long	v2411
	.long	v2411
	.long	v2411
	.long	v2411
	.long	v2411
	.long	v2411
	.long	v2411
	.long	v2411
	.long	v2411
	.text	
m2399:	movl	$285,n
	movl	$287,n
	incl	u+4332
	jmp	b53
f54:b61:	movl	$291,n
	movl	u+4324,%eax
	cmpl	$21,(%eax)
	jle	f62
	cmpl	$0,u+4328
	je	f63
	incl	n
	movl	u+4324,%eax
	movl	u+4324,%ebx
	movl	(%ebx),%ebx
	subl	$10,%ebx
	movl	%ebx,(%eax)
	incl	n
	decl	u+4328
	jmp	b61
f63:f62:	movl	$296,n
	movl	u+4320,%eax
	cmpl	$0,u+4328
	jle	f64
	movb	$1,%bl
	jmp	f65
f64:	movb	$0,%bl
f65:	movb	%bl,(%eax)
	leave	
	ret	
p2585:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$309,n
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	lea	u+4336,%eax
	pushl	%eax
	lea	u+104,%eax
	pushl	%eax
	call	p2340
	addl	$16,%esp
	movl	$311,n
	cmpl	$21,u+104
	jle	f66
	incl	n
	pushl	u+4
	.data	
s2628:	.asciz	"Dealer goes bust."
	.text	
	lea	s2628,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movb	$1,u+109
	incl	n
	incl	u+92
	jmp	f67
f66:	movl	$315,n
	cmpl	$21,u+104
	jne	f68
	incl	n
	pushl	u+4
	.data	
s2702:	.asciz	"Dealer calls blackjack."
	.text	
	lea	s2702,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movb	$1,u+109
	incl	n
	incl	u+88
	jmp	f69
f68:	movl	$320,n
	movl	$17,%eax
	cmpl	u+104,%eax
	jle	f70
	movl	$322,n
	call	p2054
	addl	$0,%esp
	movl	$322,n
	jmp	f71
f70:	movl	$323,n
	movb	$1,u+109
f71:	movl	$326,n
	cmpb	$0,u+109
	je	f72
	incl	n
	pushl	u+4
	.data	
s2812:	.asciz	"Dealer stands with "
	.text	
	lea	s2812,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+104
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s2858:	.asciz	"."
	.text	
	lea	s2858,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$329,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	u+100,%eax
	cmpl	%eax,u+104
	jle	f73
	incl	n
	pushl	u+4
	.data	
s2895:	.asciz	"House wins."
	.text	
	lea	s2895,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	u+88
	jmp	f74
f73:	movl	$332,n
	movl	u+104,%eax
	cmpl	%eax,u+100
	jle	f75
	incl	n
	pushl	u+4
	.data	
s2959:	.asciz	" wins."
	.text	
	lea	s2959,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
	pushl	%eax
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	u+92
	jmp	f76
f75:	movl	$336,n
	pushl	u+4
	.data	
s3006:	.asciz	"Tie game."
	.text	
	lea	s3006,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f76:f74:	jmp	f77
f72:	movl	$339,n
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	lea	u+4337,%eax
	pushl	%eax
	call	p426
	addl	$12,%esp
	movl	$340,n
	pushl	u+4
	.data	
s3062:	.asciz	"Dealer takes a card and now has "
	.text	
	lea	s3062,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+4337,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3121:	.asciz	"."
	.text	
	lea	s3121,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f77:f69:f67:	leave	
	ret	
p3150:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$351,n
	movl	u+100,%eax
	cmpl	%eax,u+368
	jle	f78
	movl	$353,n
	call	p2022
	addl	$0,%esp
	movl	$353,n
	jmp	f79
f78:	movl	$354,n
	movb	$1,u+108
f79:	leave	
	ret	
p3188:	pushl	%ebp
	movl	%esp, %ebp	
	movb	8(%ebp),%al
	movb	%al,u+4593
	movl	$364,n
	movl	u+16,%eax
	movl	%eax,u+4596
	movl	$366,n
	cmpb	$0,u+4593
	je	f80
	movl	$368,n
	cmpl	$8,u+4596
	jle	f81
	movl	$370,n
	cmpl	$18,u+100
	jle	f82
	movb	$1,%al
	jmp	f83
f82:	movb	$0,%al
f83:	movb	%al,u+108
	jmp	f84
f81:	movl	$373,n
	cmpl	$17,u+100
	jle	f85
	movb	$1,%al
	jmp	f86
f85:	movb	$0,%al
f86:	movb	%al,u+108
f84:	jmp	f87
f80:	movl	$377,n
	cmpl	$1,u+4596
	jle	f88
	movl	$4,%eax
	cmpl	u+4596,%eax
	jle	f89
	movl	$379,n
	cmpl	$12,u+100
	jle	f90
	movb	$1,%al
	jmp	f91
f90:	movb	$0,%al
f91:	movb	%al,u+108
	jmp	f92
f89:f88:	movl	$380,n
	cmpl	$3,u+4596
	jle	f93
	movl	$7,%eax
	cmpl	u+4596,%eax
	jle	f94
	movl	$382,n
	cmpl	$11,u+100
	jle	f95
	movb	$1,%al
	jmp	f96
f95:	movb	$0,%al
f96:	movb	%al,u+108
	jmp	f97
f94:f93:	movl	$385,n
	cmpl	$16,u+100
	jle	f98
	movb	$1,%al
	jmp	f99
f98:	movb	$0,%al
f99:	movb	%al,u+108
f97:f92:f87:	movl	$389,n
	cmpb	$0,u+108
	jne	f100
	movl	$391,n
	call	p2022
	addl	$0,%esp
	movl	$391,n
f100:	movl	$391,n
	leave	
	ret	
p3370:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$402,n
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	lea	u+4600,%eax
	pushl	%eax
	lea	u+100,%eax
	pushl	%eax
	call	p2340
	addl	$16,%esp
	movl	$404,n
	cmpl	$21,u+100
	jne	f101
	incl	n
	pushl	u+4
	.data	
s3416:	.asciz	" calls blackjack."
	.text	
	lea	s3416,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
	pushl	%eax
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movb	$1,u+108
	incl	n
	movb	$1,u+109
	incl	n
	incl	u+92
	jmp	f102
f101:	movl	$409,n
	cmpl	$21,u+100
	jle	f103
	incl	n
	pushl	u+4
	.data	
s3502:	.asciz	" goes bust."
	.text	
	lea	s3502,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
	pushl	%eax
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movb	$1,u+108
	incl	n
	movb	$1,u+109
	incl	n
	incl	u+88
	jmp	f104
f103:	movl	$415,n
	.data	
s3570:	.asciz	"E.O.Thorp"
	.text	
	lea	s3570,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
	pushl	%eax
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	je	f105
	incl	n
	movb	u+4600,%al
	pushl	%eax
	call	p3188
	addl	$4,%esp
	movl	$417,n
	jmp	f106
f105:	movl	$418,n
	incl	n
	call	p3150
	addl	$0,%esp
	movl	$419,n
f106:	movl	$421,n
	cmpb	$0,u+108
	je	f107
	incl	n
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3633:	.asciz	" stands with "
	.text	
	lea	s3633,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+100
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s3673:	.asciz	"."
	.text	
	lea	s3673,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f108
f107:	movl	$424,n
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	lea	u+4601,%eax
	pushl	%eax
	call	p426
	addl	$12,%esp
	movl	$425,n
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3733:	.asciz	" takes a card and now has "
	.text	
	lea	s3733,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+4601,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3786:	.asciz	"."
	.text	
	lea	s3786,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f108:f104:f102:	leave	
	ret	
f30:	movl	$439,n
	pushl	u+4
	.data	
s3821:	.asciz	"This program simulates the game of blackjack."
	.text	
	lea	s3821,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s3899:	.asciz	"The dealer plays the compulsory strategy of standing on 17 or better."
	.text	
	lea	s3899,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4001:	.asciz	"The player plays either"
	.text	
	lea	s4001,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4048:	.asciz	"  [1] The standard naive strategy of standing on n or better, or"
	.text	
	lea	s4048,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4136:	.asciz	"  [2] A simplified version of the strategy described by  E.O.Thorp"
	.text	
	lea	s4136,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4226:	.asciz	"      in his book 'Beat the Dealer' (Vintage Books, 1966) pp. 20-21."
	.text	
	lea	s4226,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4327:	.asciz	"Input :"
	.text	
	lea	s4327,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4358:	.asciz	"  For each shuffle, a player name (character string of <= 20 characters),"
	.text	
	lea	s4358,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4455:	.asciz	"  and if (the player name specified is not 'E.O.Thorp', the count [n]"
	.text	
	lea	s4455,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4548:	.asciz	"  on which the player stands."
	.text	
	lea	s4548,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4610:	.asciz	"If the player name specified is 'E.O.Thorp', the player strategy used"
	.text	
	lea	s4610,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s4692:	.asciz	" will be Thorp's."
	.text	
	lea	s4692,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$455,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4735:	.asciz	"Otherwise, the player will use the standard stop on count > n strategy."
	.text	
	lea	s4735,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4839:	.asciz	"The program will simulate one complete shuffle of play for each player."
	.text	
	lea	s4839,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$460,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	lea	u+4857,%eax
	pushl	%eax
	call	p695
	addl	$4,%esp
	movl	$462,n
b109:	movl	$463,n
	cmpb	$0,u+4857
	je	f110
	movl	$466,n
	call	p151
	addl	$0,%esp
	movl	$466,n
	lea	u+4857,%eax
	pushl	%eax
	call	p1412
	addl	$4,%esp
	movl	$468,n
b111:	movl	$469,n
	cmpb	$0,u+4857
	je	f112
	movl	$473,n
	call	p2086
	addl	$0,%esp
	movl	$473,n
b113:	movl	$474,n
	cmpb	$0,u+108
	jne	f114
	movl	$476,n
	call	p3370
	addl	$0,%esp
	movl	$476,n
	jmp	b113
f114:b115:	movl	$479,n
	cmpb	$0,u+109
	jne	f116
	movl	$481,n
	call	p2585
	addl	$0,%esp
	movl	$481,n
	jmp	b115
f116:	movl	$483,n
	lea	u+4857,%eax
	pushl	%eax
	call	p1412
	addl	$4,%esp
	movl	$484,n
	jmp	b111
f112:	movl	$486,n
	lea	u+4857,%eax
	pushl	%eax
	call	p695
	addl	$4,%esp
	movl	$487,n
	jmp	b109
f110:	movl	$489,n
	call	pttrap0
	leave	
	ret	
