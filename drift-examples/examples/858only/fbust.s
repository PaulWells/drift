	.data	
	.comm	u,4322
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
	movl	%eax,u+380
	movl	$37,n
	cmpl	$17,u+376
	jne	f2
	incl	n
	movl	$19,u+376
	jmp	f3
f2:	movl	$40,n
	movl	$17,u+376
f3:	movl	$42,n
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
	movl	u+380,%eax
	movl	%eax,%esi
	movl	u+372,%eax
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
	incl	%eax
	movl	%eax,%eax
	leave	
	ret	
f1:	movl	$47,n
	movl	$13277,u+372
	incl	n
	movl	$17,u+376
	movl	$1,u+384
	movl	$52,u+388
	jmp	f4
p144:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+608
	movl	$13,u+612
	movl	$66,n
	movl	$1,u+672
b5:	movl	$68,n
	movl	u+672,%eax
	cmpl	$13,%eax
	jle	f6
	cmpl	$1,%eax
	jge	f7
	pushl	n
	call	pttrap13
f7:f6:	decl	%eax
	shl	$2,%eax
	lea	u+616,%ebx
	addl	%ebx,%eax
	movl	$0,(%eax)
	incl	n
	incl	u+672
	cmpl	$13,u+672
	jg	f8
	jmp	b5
f8:	movl	$73,n
	movl	$1,u+668
b9:	movl	$75,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$13
	call	p40
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$76,n
	movl	%eax,u+604
b10:	movl	$77,n
	movl	u+604,%eax
	cmpl	$13,%eax
	jle	f11
	cmpl	$1,%eax
	jge	f12
	pushl	n
	call	pttrap13
f12:f11:	decl	%eax
	shl	$2,%eax
	lea	u+616,%ebx
	addl	%ebx,%eax
	cmpl	$4,(%eax)
	jne	f13
	incl	n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$13
	call	p40
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$79,n
	movl	%eax,u+604
	jmp	b10
f13:	movl	$81,n
	movl	u+668,%eax
	cmpl	$52,%eax
	jle	f14
	cmpl	$1,%eax
	jge	f15
	pushl	n
	call	pttrap13
f15:f14:	decl	%eax
	shl	$2,%eax
	lea	u+392,%ebx
	addl	%ebx,%eax
	movl	u+604,%ebx
	movl	%ebx,(%eax)
	incl	n
	movl	u+604,%eax
	cmpl	$13,%eax
	jle	f16
	cmpl	$1,%eax
	jge	f17
	pushl	n
	call	pttrap13
f17:f16:	decl	%eax
	shl	$2,%eax
	lea	u+616,%ebx
	addl	%ebx,%eax
	movl	u+604,%ebx
	cmpl	$13,%ebx
	jle	f18
	cmpl	$1,%ebx
	jge	f19
	pushl	n
	call	pttrap13
f19:f18:	decl	%ebx
	shl	$2,%ebx
	lea	u+616,%ecx
	addl	%ecx,%ebx
	movl	(%ebx),%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	movl	$84,n
	incl	u+668
	cmpl	$52,u+668
	jg	f20
	jmp	b9
f20:	movl	$88,n
	movl	$0,u+600
	leave	
	ret	
p344:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$92,n
	incl	u+600
	movl	u+600,%eax
	cmpl	$52,%eax
	jle	f21
	cmpl	$1,%eax
	jge	f22
	pushl	n
	call	pttrap13
f22:f21:	decl	%eax
	shl	$2,%eax
	lea	u+392,%ebx
	addl	%ebx,%eax
	movl	(%eax),%eax
	movl	%eax,%eax
	leave	
	ret	
p375:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$52,%eax
	subl	u+600,%eax
	incl	%eax
	movl	%eax,%eax
	leave	
	ret	
f4:	movl	$1,u+676
	movl	$13,u+680
	jmp	f23
p405:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+4016
	movl	12(%ebp),%eax
	movl	%eax,u+4012
	movl	$111,n
	.data	
s421:	.asciz	""
	.text	
	lea	s421,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+4028,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$113,n
	movl	$1,u+4024
b24:	movl	$115,n
	movl	u+4012,%eax
	cmpl	%eax,u+4024
	jg	f25
	incl	n
	.data	
s453:	.asciz	" "
	.text	
	lea	s453,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+4028,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	u+4016,%ebx
	movl	u+4024,%ecx
	cmpl	4(%ebx),%ecx
	jle	f26
	cmpl	(%ebx),%ecx
	jge	f27
	pushl	n
	call	pttrap13
f27:f26:	subl	(%ebx),%ecx
	shl	$2,%ecx
	addl	$8,%ebx
	addl	%ebx,%ecx
	movl	(%ecx),%ecx
	cmpl	$13,%ecx
	jle	f28
	cmpl	$1,%ecx
	jge	f29
	pushl	n
	call	pttrap13
f29:f28:	decl	%ecx
	shl	$8,%ecx
	lea	u+684,%ebx
	addl	%ebx,%ecx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
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
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+4028,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	incl	u+4024
	jmp	b24
f25:	movl	u+4028,%eax
	movl	%eax,%eax
	leave	
	ret	
f23:	movl	$124,n
	.data	
s509:	.asciz	"A"
	.text	
	lea	s509,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+684,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s522:	.asciz	"2"
	.text	
	lea	s522,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+940,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s535:	.asciz	"3"
	.text	
	lea	s535,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1196,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s548:	.asciz	"4"
	.text	
	lea	s548,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1452,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s561:	.asciz	"5"
	.text	
	lea	s561,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1708,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s574:	.asciz	"6"
	.text	
	lea	s574,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1964,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s587:	.asciz	"7"
	.text	
	lea	s587,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2220,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s600:	.asciz	"8"
	.text	
	lea	s600,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2476,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s613:	.asciz	"9"
	.text	
	lea	s613,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2732,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s626:	.asciz	"10"
	.text	
	lea	s626,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2988,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s640:	.asciz	"J"
	.text	
	lea	s640,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3244,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s653:	.asciz	"Q"
	.text	
	lea	s653,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3500,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s666:	.asciz	"K"
	.text	
	lea	s666,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3756,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	jmp	f30
p672:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$147,n
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
s723:	.asciz	"New shuffle."
	.text	
	lea	s723,%eax
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
s768:	.asciz	"Enter player name (E.O.Thorp for Thorp, your name for you, q to quit): "
	.text	
	lea	s768,%eax
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
	pushl	u+0
	call	pttrap4
	addl	$4,%esp
	movl	$156,n
	.data	
s878:	.asciz	"q"
	.text	
	lea	s878,%eax
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
	movb	$0,u+4284
	jmp	f32
f31:	movl	$160,n
	.data	
s902:	.asciz	"E.O.Thorp"
	.text	
	lea	s902,%eax
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
s923:	.asciz	"What does he/she stand on? "
	.text	
	lea	s923,%eax
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
b34:	movl	$164,n
	cmpl	$0,u+368
	jle	f35
	cmpl	$20,u+368
	jle	f36
f35:	incl	n
	pushl	u+4
	.data	
s1011:	.asciz	"(1..20): "
	.text	
	lea	s1011,%eax
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
f36:f33:	movl	$168,n
	movl	$170,n
	.data	
s1066:	.asciz	"E.O.Thorp"
	.text	
	lea	s1066,%eax
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
	movl	$172,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1095:	.asciz	"E.O.Thorp plays this time."
	.text	
	lea	s1095,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f38
f37:	movl	$174,n
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1158:	.asciz	"Next player is "
	.text	
	lea	s1158,%eax
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
s1179:	.asciz	"."
	.text	
	lea	s1179,%ebx
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
s1205:	.asciz	"He stops at "
	.text	
	lea	s1205,%eax
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
s1244:	.asciz	"."
	.text	
	lea	s1244,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$178,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$15,%eax
	cmpl	u+368,%eax
	jle	f39
	incl	n
	pushl	u+4
	.data	
s1280:	.asciz	"(What a hamburger!)"
	.text	
	lea	s1280,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f40
f39:	movl	$181,n
	pushl	u+4
	.data	
s1327:	.asciz	"Good luck, "
	.text	
	lea	s1327,%eax
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
s1344:	.asciz	"."
	.text	
	lea	s1344,%ebx
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
f40:f38:	movl	$185,n
	movb	$1,u+4284
f32:	movb	u+4284,%al
	movb	%al,%al
	leave	
	ret	
p1390:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$199,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p375
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$199,n
	cmpl	$10,%eax
	jle	f41
	movl	$201,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1421:	.asciz	"New game."
	.text	
	lea	s1421,%eax
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
	movb	$1,u+4285
	jmp	f42
f41:	movl	$205,n
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s1487:	.asciz	"Too few cards left for another game."
	.text	
	lea	s1487,%eax
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
s1547:	.asciz	"Of "
	.text	
	lea	s1547,%eax
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
s1577:	.asciz	" games, "
	.text	
	lea	s1577,%eax
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
s1614:	.asciz	" won "
	.text	
	lea	s1614,%eax
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
s1646:	.asciz	", dealer won "
	.text	
	lea	s1646,%eax
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
s1686:	.asciz	"."
	.text	
	lea	s1686,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$210,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	u+92,%eax
	cmpl	%eax,u+88
	jle	f43
	incl	n
	pushl	u+4
	.data	
s1723:	.asciz	"House cleans up on "
	.text	
	lea	s1723,%eax
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
s1748:	.asciz	" this time."
	.text	
	lea	s1748,%ebx
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
f43:	movl	$212,n
	movl	u+88,%eax
	cmpl	%eax,u+92
	jle	f45
	incl	n
	.data	
s1798:	.asciz	"E.O.Thorp"
	.text	
	lea	s1798,%eax
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
s1818:	.asciz	"E.O.Thorp does it again."
	.text	
	lea	s1818,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f47
f46:	movl	$216,n
	pushl	u+4
	.data	
s1873:	.asciz	" must have doctored the shuffle."
	.text	
	lea	s1873,%eax
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
f45:	movl	$219,n
	pushl	u+4
	.data	
s1935:	.asciz	"Even shuffle."
	.text	
	lea	s1935,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f48:f44:	movl	$222,n
	movb	$0,u+4285
f42:	movb	u+4285,%al
	movb	%al,%al
	leave	
	ret	
p1990:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$231,n
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
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p344
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	movl	$233,n
	movl	%ebx,(%eax)
	leave	
	ret	
p2022:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$239,n
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
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p344
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	movl	$241,n
	movl	%ebx,(%eax)
	leave	
	ret	
p2054:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$247,n
	movb	$0,u+108
	incl	n
	movb	$0,u+109
	incl	n
	movl	$0,u+84
	incl	n
	movl	$0,u+80
	movl	$253,n
	call	p1990
	addl	$0,%esp
	movl	$253,n
	incl	n
	call	p2022
	addl	$0,%esp
	movl	$254,n
	incl	n
	call	p1990
	addl	$0,%esp
	movl	$255,n
	movl	$257,n
	call	p2022
	addl	$0,%esp
	movl	$257,n
	pushl	u+4
	.data	
s2115:	.asciz	"The initial deal gives "
	.text	
	lea	s2115,%eax
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
s2165:	.asciz	" :"
	.text	
	lea	s2165,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	call	p405
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$257,n
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
s2213:	.asciz	"  and the dealer :"
	.text	
	lea	s2213,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	call	p405
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$258,n
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s2266:	.asciz	"."
	.text	
	lea	s2266,%eax
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
p2288:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+4296
	movl	12(%ebp),%eax
	movl	%eax,u+4292
	movl	16(%ebp),%eax
	movl	%eax,u+4288
	movl	$270,n
	movl	$0,u+4304
	incl	n
	movl	$0,u+4300
	movl	$273,n
	movl	$1,u+4308
b53:	movl	$275,n
	movl	u+4288,%eax
	cmpl	%eax,u+4308
	jg	f54
	movl	$277,n
	movl	u+4292,%eax
	movl	u+4308,%ebx
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
v2355:	movl	$278,n
	movl	$280,n
	movl	u+4292,%eax
	movl	u+4308,%ebx
	cmpl	4(%eax),%ebx
	jle	f58
	cmpl	(%eax),%ebx
	jge	f59
	pushl	n
	call	pttrap13
f59:f58:	subl	(%eax),%ebx
	shl	$2,%ebx
	addl	$8,%eax
	addl	%eax,%ebx
	movl	(%ebx),%ebx
	addl	%ebx,u+4304
	jmp	m2343
v2378:	movl	$281,n
	movl	$283,n
	movl	$11,%eax
	addl	%eax,u+4304
	incl	n
	incl	u+4300
	jmp	m2343
a2343:b60:	movl	$285,n
	movl	$285,n
	movl	$287,n
	movl	$10,%eax
	addl	%eax,u+4304
	jmp	m2343
f57:	movl	(%ebx),%ebx
	decl	%ebx
	cmpl	$9,%ebx
	ja	b60
	shl	$2,%ebx
	movl	c2343(%ebx),%ebx
	jmp	*%ebx
	.data	
c2343:	.long	v2378
	.long	v2355
	.long	v2355
	.long	v2355
	.long	v2355
	.long	v2355
	.long	v2355
	.long	v2355
	.long	v2355
	.long	v2355
	.text	
m2343:	movl	$288,n
	movl	$290,n
	incl	u+4308
	jmp	b53
f54:b61:	movl	$294,n
	cmpl	$21,u+4304
	jle	f62
	cmpl	$0,u+4300
	je	f63
	incl	n
	movl	$10,%eax
	subl	%eax,u+4304
	incl	n
	decl	u+4300
	jmp	b61
f63:f62:	movl	$299,n
	movl	u+4296,%eax
	cmpl	$0,u+4300
	jle	f64
	movb	$1,%bl
	jmp	f65
f64:	movb	$0,%bl
f65:	movb	%bl,(%eax)
	movl	u+4304,%eax
	movl	%eax,%eax
	leave	
	ret	
p2526:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$313,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	lea	u+4312,%eax
	pushl	%eax
	call	p2288
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$315,n
	movl	%eax,u+104
	cmpl	$21,u+104
	jle	f66
	incl	n
	pushl	u+4
	.data	
s2569:	.asciz	"Dealer goes bust."
	.text	
	lea	s2569,%eax
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
f66:	movl	$319,n
	cmpl	$21,u+104
	jne	f68
	incl	n
	pushl	u+4
	.data	
s2643:	.asciz	"Dealer calls blackjack."
	.text	
	lea	s2643,%eax
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
f68:	movl	$324,n
	movl	$17,%eax
	cmpl	u+104,%eax
	jle	f70
	movl	$326,n
	call	p2022
	addl	$0,%esp
	movl	$326,n
	jmp	f71
f70:	movl	$327,n
	movb	$1,u+109
f71:	movl	$330,n
	cmpb	$0,u+109
	je	f72
	incl	n
	pushl	u+4
	.data	
s2753:	.asciz	"Dealer stands with "
	.text	
	lea	s2753,%eax
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
s2799:	.asciz	"."
	.text	
	lea	s2799,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$333,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	u+100,%eax
	cmpl	%eax,u+104
	jle	f73
	incl	n
	pushl	u+4
	.data	
s2836:	.asciz	"House wins."
	.text	
	lea	s2836,%eax
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
f73:	movl	$336,n
	movl	u+104,%eax
	cmpl	%eax,u+100
	jle	f75
	incl	n
	pushl	u+4
	.data	
s2900:	.asciz	" wins."
	.text	
	lea	s2900,%eax
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
f75:	movl	$340,n
	pushl	u+4
	.data	
s2947:	.asciz	"Tie game."
	.text	
	lea	s2947,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f76:f74:	jmp	f77
f72:	movl	$343,n
	pushl	u+4
	.data	
s2986:	.asciz	"Dealer takes a card and now has "
	.text	
	lea	s2986,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	call	p405
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$343,n
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3053:	.asciz	"."
	.text	
	lea	s3053,%eax
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
p3082:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$354,n
	movl	u+100,%eax
	cmpl	%eax,u+368
	jle	f78
	movl	$356,n
	call	p1990
	addl	$0,%esp
	movl	$356,n
	jmp	f79
f78:	movl	$357,n
	movb	$1,u+108
f79:	leave	
	ret	
p3120:	pushl	%ebp
	movl	%esp, %ebp	
	movb	8(%ebp),%al
	movb	%al,u+4313
	movl	$367,n
	movl	u+16,%eax
	movl	%eax,u+4316
	movl	$369,n
	cmpb	$0,u+4313
	je	f80
	movl	$371,n
	cmpl	$8,u+4316
	jle	f81
	movl	$373,n
	cmpl	$18,u+100
	jle	f82
	movb	$1,%al
	jmp	f83
f82:	movb	$0,%al
f83:	movb	%al,u+108
	jmp	f84
f81:	movl	$376,n
	cmpl	$17,u+100
	jle	f85
	movb	$1,%al
	jmp	f86
f85:	movb	$0,%al
f86:	movb	%al,u+108
f84:	jmp	f87
f80:	movl	$380,n
	cmpl	$1,u+4316
	jle	f88
	movl	$4,%eax
	cmpl	u+4316,%eax
	jle	f89
	movl	$382,n
	cmpl	$12,u+100
	jle	f90
	movb	$1,%al
	jmp	f91
f90:	movb	$0,%al
f91:	movb	%al,u+108
	jmp	f92
f89:f88:	movl	$383,n
	cmpl	$3,u+4316
	jle	f93
	movl	$7,%eax
	cmpl	u+4316,%eax
	jle	f94
	movl	$385,n
	cmpl	$11,u+100
	jle	f95
	movb	$1,%al
	jmp	f96
f95:	movb	$0,%al
f96:	movb	%al,u+108
	jmp	f97
f94:f93:	movl	$388,n
	cmpl	$16,u+100
	jle	f98
	movb	$1,%al
	jmp	f99
f98:	movb	$0,%al
f99:	movb	%al,u+108
f97:f92:f87:	movl	$392,n
	cmpb	$0,u+108
	jne	f100
	movl	$394,n
	call	p1990
	addl	$0,%esp
	movl	$394,n
f100:	movl	$394,n
	leave	
	ret	
p3302:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$404,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	lea	u+4320,%eax
	pushl	%eax
	call	p2288
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$406,n
	movl	%eax,u+100
	cmpl	$21,u+100
	jne	f101
	incl	n
	pushl	u+4
	.data	
s3348:	.asciz	" calls blackjack."
	.text	
	lea	s3348,%eax
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
f101:	movl	$411,n
	cmpl	$21,u+100
	jle	f103
	incl	n
	pushl	u+4
	.data	
s3434:	.asciz	" goes bust."
	.text	
	lea	s3434,%eax
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
f103:	movl	$417,n
	.data	
s3502:	.asciz	"E.O.Thorp"
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
	movb	u+4320,%al
	pushl	%eax
	call	p3120
	addl	$4,%esp
	movl	$419,n
	jmp	f106
f105:	movl	$420,n
	incl	n
	call	p3082
	addl	$0,%esp
	movl	$421,n
f106:	movl	$423,n
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
s3565:	.asciz	" stands with "
	.text	
	lea	s3565,%eax
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
s3605:	.asciz	"."
	.text	
	lea	s3605,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f108
f107:	movl	$426,n
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3648:	.asciz	" takes a card and now has "
	.text	
	lea	s3648,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	call	p405
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$426,n
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3709:	.asciz	"."
	.text	
	lea	s3709,%eax
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
f30:	movl	$437,n
	pushl	u+4
	.data	
s3744:	.asciz	"This program simulates the game of blackjack."
	.text	
	lea	s3744,%eax
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
s3822:	.asciz	"The dealer plays the compulsory strategy of standing on 17 or better."
	.text	
	lea	s3822,%eax
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
s3924:	.asciz	"The player plays either"
	.text	
	lea	s3924,%eax
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
s3971:	.asciz	"  [1] The standard naive strategy of standing on n or better, or"
	.text	
	lea	s3971,%eax
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
s4059:	.asciz	"  [2] A simplified version of the strategy described by  E.O.Thorp"
	.text	
	lea	s4059,%eax
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
s4149:	.asciz	"      in his book 'Beat the Dealer' (Vintage Books, 1966) pp. 20-21."
	.text	
	lea	s4149,%eax
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
s4250:	.asciz	"Input :"
	.text	
	lea	s4250,%eax
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
s4281:	.asciz	"  For each shuffle, a player name (character string of <= 20 characters),"
	.text	
	lea	s4281,%eax
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
s4378:	.asciz	"  and if (the player name specified is not 'E.O.Thorp', the count [n]"
	.text	
	lea	s4378,%eax
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
s4471:	.asciz	"  on which the player stands."
	.text	
	lea	s4471,%eax
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
s4533:	.asciz	"If the player name specified is 'E.O.Thorp', the player strategy used"
	.text	
	lea	s4533,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s4615:	.asciz	" will be Thorp's."
	.text	
	lea	s4615,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$453,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	.data	
s4658:	.asciz	"Otherwise, the player will use the standard stop on count > n strategy."
	.text	
	lea	s4658,%eax
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
s4762:	.asciz	"The program will simulate one complete shuffle of play for each player."
	.text	
	lea	s4762,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	movl	$458,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
b109:	movl	$459,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p672
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$461,n
	cmpl	$0,%eax
	je	f110
	movl	$463,n
	call	p144
	addl	$0,%esp
	movl	$463,n
b111:	movl	$464,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p1390
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$466,n
	cmpl	$0,%eax
	je	f112
	movl	$468,n
	call	p2054
	addl	$0,%esp
	movl	$468,n
b113:	movl	$469,n
	cmpb	$0,u+108
	jne	f114
	movl	$471,n
	call	p3302
	addl	$0,%esp
	movl	$471,n
	jmp	b113
f114:b115:	movl	$474,n
	cmpb	$0,u+109
	jne	f116
	movl	$476,n
	call	p2526
	addl	$0,%esp
	movl	$476,n
	jmp	b115
f116:	jmp	b111
f112:	jmp	b109
f110:	movl	$480,n
	call	pttrap0
	leave	
	ret	
