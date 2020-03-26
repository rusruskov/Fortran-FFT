	.file	"fortranfft.f95"
	.text
	.globl	__fortranfft_MOD_fft2
	.type	__fortranfft_MOD_fft2, @function
__fortranfft_MOD_fft2:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %r15
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	imulq	%r15, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	$0, -264(%rbp)
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movl	$0, %r14d
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -268(%rbp)
	movl	$0, -52(%rbp)
.L5:
	movl	-268(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L8
	movq	-72(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	movq	$16, -192(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$16, -208(%rbp)
	movb	$1, -196(%rbp)
	movb	$4, -195(%rbp)
	movq	$0, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%r15, -184(%rbp)
	movq	%rax, %rcx
	salq	$4, %rcx
	movq	-240(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -224(%rbp)
	addq	-264(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_internal_pack@PLT
	movq	%rax, %r13
	movq	-96(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	movq	$16, -128(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$16, -144(%rbp)
	movb	$1, -132(%rbp)
	movb	$4, -131(%rbp)
	movq	$0, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rbx, -120(%rbp)
	movq	%rax, %rcx
	salq	$4, %rcx
	movq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -160(%rbp)
	addq	%r14, %rax
	movq	%rax, -152(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_internal_pack@PLT
	movq	%rax, %r12
	movq	-248(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%r12, %rcx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	__fortranfft_MOD_fft
	movq	-224(%rbp), %rax
	cmpq	%rax, %r13
	je	.L3
	movq	%r13, %rdi
	call	free@PLT
.L3:
	movq	-160(%rbp), %rax
	cmpq	%rax, %r12
	je	.L4
	leaq	-160(%rbp), %rax
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_gfortran_internal_unpack@PLT
	movq	%r12, %rdi
	call	free@PLT
.L4:
	addl	$1, -52(%rbp)
	jmp	.L5
.L8:
	nop
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %r12d
	movl	$0, -52(%rbp)
.L7:
	cmpl	%r12d, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L9
	movq	-88(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	movq	$16, -192(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$16, -208(%rbp)
	movb	$1, -196(%rbp)
	movb	$4, -195(%rbp)
	movq	$1, -176(%rbp)
	addq	$1, %rdx
	movq	%rdx, -168(%rbp)
	movq	$1, -184(%rbp)
	movq	%rax, %rdx
	imulq	%rbx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -224(%rbp)
	leaq	-1(%r14), %rdx
	imulq	%rbx, %rax
	addq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-88(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	movq	$16, -128(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$16, -144(%rbp)
	movb	$1, -132(%rbp)
	movb	$4, -131(%rbp)
	movq	$1, -112(%rbp)
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movq	$1, -120(%rbp)
	movq	%rax, %rdx
	imulq	%rbx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -160(%rbp)
	leaq	-1(%r14), %rdx
	imulq	%rbx, %rax
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rcx
	movq	-224(%rbp), %rsi
	movq	-248(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	__fortranfft_MOD_fft
	addl	$1, -52(%rbp)
	jmp	.L7
.L9:
	nop
	nop
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	__fortranfft_MOD_fft2, .-__fortranfft_MOD_fft2
	.globl	__fortranfft_MOD_fft
	.type	__fortranfft_MOD_fft, @function
__fortranfft_MOD_fft:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	subl	$1, %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %r8
	movl	$0, %r9d
	salq	$4, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -88(%rbp)
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	subl	$1, %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	salq	$4, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -104(%rbp)
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jg	.L11
	movq	-272(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__fortranfft_MOD_dft
	jmp	.L12
.L11:
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L13
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -108(%rbp)
	movq	-56(%rbp), %rax
	subq	$1, %rax
	sarq	%rax
	movq	$-1, %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	$16, -208(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$16, -224(%rbp)
	movb	$1, -212(%rbp)
	movb	$4, -211(%rbp)
	movq	$0, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	$2, -200(%rbp)
	movq	-256(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_internal_pack@PLT
	movq	%rax, %r12
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	subl	$1, %eax
	movslq	%eax, %rbx
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$16, -160(%rbp)
	movb	$1, -148(%rbp)
	movb	$4, -147(%rbp)
	movq	$1, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	%rbx, %rax
	shrq	$63, %rax
	movl	%eax, %edx
	leaq	1(%rbx), %rax
	movq	$16, -144(%rbp)
	testl	%edx, %edx
	je	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	salq	$4, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
.L15:
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, %eax
.L17:
	cmpq	%rbx, %rax
	jg	.L16
	movq	-264(%rbp), %rdx
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movq	-264(%rbp), %rdx
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0
	movq	%xmm1, %rcx
	movq	%xmm0, %rdx
	movq	%rcx, %xmm1
	movq	%rdx, %xmm0
	movapd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	movapd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm1, %xmm0
	subsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm1
	addsd	%xmm0, %xmm0
	movq	-176(%rbp), %rdx
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rdx, %rcx
	movsd	%xmm1, (%rcx)
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	addq	$8, %rdx
	movsd	%xmm0, (%rdx)
	addq	$1, %rax
	jmp	.L17
.L16:
	movq	-176(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-108(%rbp), %rax
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	__fortranfft_MOD_fft
	movq	-240(%rbp), %rax
	cmpq	%rax, %r12
	je	.L18
	movq	%r12, %rdi
	call	free@PLT
.L18:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -112(%rbp)
	movq	-56(%rbp), %rax
	sarq	%rax
	movq	$-1, %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	$16, -208(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$16, -224(%rbp)
	movb	$1, -212(%rbp)
	movb	$4, -211(%rbp)
	movq	$0, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	$2, -200(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_internal_pack@PLT
	movq	%rax, %r12
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	subl	$1, %eax
	movslq	%eax, %rbx
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$16, -160(%rbp)
	movb	$1, -148(%rbp)
	movb	$4, -147(%rbp)
	movq	$1, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	%rbx, %rax
	shrq	$63, %rax
	movl	%eax, %edx
	leaq	1(%rbx), %rax
	movq	$16, -144(%rbp)
	testl	%edx, %edx
	je	.L19
	movl	$1, %eax
	jmp	.L20
.L19:
	salq	$4, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
.L20:
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, %eax
.L22:
	cmpq	%rbx, %rax
	jg	.L21
	movq	-264(%rbp), %rdx
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movq	-264(%rbp), %rdx
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0
	movq	%xmm1, %rcx
	movq	%xmm0, %rdx
	movq	%rcx, %xmm1
	movq	%rdx, %xmm0
	movapd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	movapd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm1, %xmm0
	subsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm1
	addsd	%xmm0, %xmm0
	movq	-176(%rbp), %rdx
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rdx, %rcx
	movsd	%xmm1, (%rcx)
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	addq	$8, %rdx
	movsd	%xmm0, (%rdx)
	addq	$1, %rax
	jmp	.L22
.L21:
	movq	-176(%rbp), %rdx
	movq	-88(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	__fortranfft_MOD_fft
	movq	-240(%rbp), %rax
	cmpq	%rax, %r12
	je	.L23
	movq	%r12, %rdi
	call	free@PLT
.L23:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movl	$0, %eax
.L25:
	cmpq	%rcx, %rax
	jg	.L24
	movq	-88(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	(%rdx), %xmm6
	movq	-88(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	8(%rdx), %xmm5
	movq	-104(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	(%rdx), %xmm3
	movq	-104(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	8(%rdx), %xmm1
	movq	-264(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	(%rdx), %xmm0
	movq	-264(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	8(%rdx), %xmm2
	movapd	%xmm3, %xmm4
	mulsd	%xmm0, %xmm4
	movapd	%xmm1, %xmm7
	mulsd	%xmm2, %xmm7
	mulsd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm0
	subsd	%xmm7, %xmm4
	movapd	%xmm4, %xmm1
	addsd	%xmm2, %xmm0
	addsd	%xmm6, %xmm1
	addsd	%xmm5, %xmm0
	movq	-272(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	%xmm1, (%rdx)
	movq	-272(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	addq	$8, %rdx
	movsd	%xmm0, (%rdx)
	addq	$1, %rax
	jmp	.L25
.L24:
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	subl	$1, %eax
	movslq	%eax, %rdi
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movslq	%eax, %rcx
	movl	$0, %eax
.L27:
	cmpq	%rdi, %rax
	jg	.L12
	movq	-88(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	(%rdx), %xmm5
	movq	-88(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	8(%rdx), %xmm4
	movq	-104(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	(%rdx), %xmm3
	movq	-104(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	8(%rdx), %xmm1
	movq	-264(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	(%rdx), %xmm0
	movq	-264(%rbp), %rdx
	movq	%rax, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	movsd	8(%rdx), %xmm2
	movapd	%xmm3, %xmm6
	mulsd	%xmm0, %xmm6
	movapd	%xmm1, %xmm7
	mulsd	%xmm2, %xmm7
	mulsd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm0
	subsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm1
	addsd	%xmm2, %xmm0
	leaq	(%rax,%rcx), %rdx
	subsd	%xmm1, %xmm5
	movapd	%xmm5, %xmm1
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movq	-272(%rbp), %rsi
	movq	%rdx, %r8
	salq	$4, %r8
	addq	%r8, %rsi
	movsd	%xmm1, (%rsi)
	movq	-272(%rbp), %rsi
	salq	$4, %rdx
	addq	%rsi, %rdx
	addq	$8, %rdx
	movsd	%xmm0, (%rdx)
	addq	$1, %rax
	jmp	.L27
.L13:
	movq	-272(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__fortranfft_MOD_dft
.L12:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	__fortranfft_MOD_fft, .-__fortranfft_MOD_fft
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.globl	__fortranfft_MOD_dft
	.type	__fortranfft_MOD_dft, @function
__fortranfft_MOD_dft:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %ebx
	movl	$0, -20(%rbp)
.L32:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %r12d
	movl	$0, -24(%rbp)
.L31:
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L34
	cvtsi2sdl	-20(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	.LC1(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	movapd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	pxor	%xmm4, %xmm4
	mulsd	%xmm0, %xmm4
	pxor	%xmm5, %xmm5
	mulsd	%xmm5, %xmm2
	mulsd	%xmm1, %xmm0
	subsd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm2
	pxor	%xmm0, %xmm0
	divsd	%xmm2, %xmm0
	pxor	%xmm4, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm2
	movapd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm1
	divsd	%xmm2, %xmm0
	movq	.LC3(%rip), %xmm2
	xorpd	%xmm1, %xmm2
	movq	.LC3(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm2, %rdx
	movq	%xmm0, %rax
	movq	%rdx, %xmm0
	movq	%rax, %xmm1
	call	cexp@PLT
	movq	%xmm0, %rdx
	movq	%xmm1, %rax
	movq	%rdx, %xmm5
	movq	%rax, %xmm4
	movl	-24(%rbp), %eax
	cltq
	movq	-64(%rbp), %rdx
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	movq	-64(%rbp), %rdx
	salq	$4, %rax
	addq	%rdx, %rax
	movsd	8(%rax), %xmm1
	movapd	%xmm5, %xmm2
	mulsd	%xmm0, %xmm2
	movapd	%xmm4, %xmm3
	mulsd	%xmm1, %xmm3
	mulsd	%xmm5, %xmm1
	mulsd	%xmm4, %xmm0
	subsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	sum_exp.4102(%rip), %xmm1
	movsd	8+sum_exp.4102(%rip), %xmm0
	addsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm0
	movsd	%xmm1, sum_exp.4102(%rip)
	movsd	%xmm0, 8+sum_exp.4102(%rip)
	addl	$1, -24(%rbp)
	jmp	.L31
.L34:
	nop
	movl	-20(%rbp), %eax
	cltq
	movsd	sum_exp.4102(%rip), %xmm1
	movsd	8+sum_exp.4102(%rip), %xmm0
	movq	-72(%rbp), %rdx
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movsd	%xmm1, (%rdx)
	movq	-72(%rbp), %rdx
	salq	$4, %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movsd	%xmm0, (%rax)
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, sum_exp.4102(%rip)
	movsd	8+.LC4(%rip), %xmm0
	movsd	%xmm0, 8+sum_exp.4102(%rip)
	addl	$1, -20(%rbp)
	jmp	.L32
.L33:
	nop
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	__fortranfft_MOD_dft, .-__fortranfft_MOD_dft
	.globl	__fortranfft_MOD_generate_exp
	.type	__fortranfft_MOD_generate_exp, @function
__fortranfft_MOD_generate_exp:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %r12d
	movl	$0, -20(%rbp)
.L37:
	cmpl	%r12d, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L38
	cvtsi2sdl	-20(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	.LC1(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm2
	pxor	%xmm0, %xmm0
	divsd	%xmm2, %xmm0
	pxor	%xmm4, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm2
	movapd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm1
	divsd	%xmm2, %xmm0
	movq	.LC3(%rip), %xmm2
	xorpd	%xmm1, %xmm2
	movq	.LC3(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm2, %rcx
	movq	%xmm0, %rdx
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	%rcx, %xmm0
	movq	%rdx, %xmm1
	call	cexp@PLT
	movq	%xmm0, %rdx
	movq	%xmm1, %rax
	movq	%rdx, %xmm1
	movq	%rax, %xmm0
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movsd	%xmm1, (%rax)
	movq	-48(%rbp), %rax
	salq	$4, %rbx
	movq	%rbx, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movsd	%xmm0, (%rax)
	addl	$1, -20(%rbp)
	jmp	.L37
.L38:
	nop
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	__fortranfft_MOD_generate_exp, .-__fortranfft_MOD_generate_exp
	.local	sum_exp.4102
	.comm	sum_exp.4102,16,8
	.section	.rodata
	.align 8
.LC1:
	.long	1413754136
	.long	1075388923
	.align 16
.LC3:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 9.2.1-9ubuntu2) 9.2.1 20191008"
	.section	.note.GNU-stack,"",@progbits
