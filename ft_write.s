global	_ft_write
extern	___error

section .text
_ft_write:
	mov		rax, 0x02000004
	syscall
	jc		.error
	mov		rax, rdx
	ret

.error:
	push	r8
	mov		r8, rax
	call	___error
	mov		[rax], r8
	mov		rax, -1
	pop		r8
	ret
