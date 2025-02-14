// This file is generated from a similarly-named Perl script in the BoringSSL
// source tree. Do not edit by hand.

#if defined(__has_feature)
#if __has_feature(memory_sanitizer) && !defined(OPENSSL_NO_ASM)
#define OPENSSL_NO_ASM
#endif
#endif

#if defined(__x86_64__) && !defined(OPENSSL_NO_ASM) && defined(__ELF__)
#if defined(BORINGSSL_PREFIX)
#include <boringssl_prefix_symbols_asm.h>
#endif
.text	




.globl	CRYPTO_rdrand
.hidden CRYPTO_rdrand
.type	CRYPTO_rdrand,@function
.align	16
CRYPTO_rdrand:
.cfi_startproc	
	xorq	%rax,%rax
.byte	72,15,199,242
	testq	%rdx,%rdx
	jz	.Lerr
	cmpq	$-1,%rdx
	je	.Lerr

	adcq	%rax,%rax
	movq	%rdx,0(%rdi)
	.byte	0xf3,0xc3
.Lerr:
	xorq	%rax,%rax
	.byte	0xf3,0xc3
.cfi_endproc	
.size	CRYPTO_rdrand,.-CRYPTO_rdrand





.globl	CRYPTO_rdrand_multiple8_buf
.hidden CRYPTO_rdrand_multiple8_buf
.type	CRYPTO_rdrand_multiple8_buf,@function
.align	16
CRYPTO_rdrand_multiple8_buf:
.cfi_startproc	
	testq	%rsi,%rsi
	jz	.Lout
	movq	$8,%rdx
.Lloop:
.byte	72,15,199,241
	jnc	.Lerr_multiple
	testq	%rcx,%rcx
	jz	.Lerr_multiple
	cmpq	$-1,%rcx
	je	.Lerr_multiple
	movq	%rcx,0(%rdi)
	addq	%rdx,%rdi
	subq	%rdx,%rsi
	jnz	.Lloop
.Lout:
	movq	$1,%rax
	.byte	0xf3,0xc3
.Lerr_multiple:
	xorq	%rax,%rax
	.byte	0xf3,0xc3
.cfi_endproc	
.size	CRYPTO_rdrand_multiple8_buf,.-CRYPTO_rdrand_multiple8_buf
#endif
#if defined(__ELF__)
// See https://www.airs.com/blog/archives/518.
.section .note.GNU-stack,"",%progbits
#endif
