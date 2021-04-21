extern	_ft_strlen
extern	_ft_strcpy
extern	___error
extern	_malloc

global	_ft_strdup
section .text
_ft_strdup:
	push	rdi
	call	_ft_strlen
	mov		rbx, rdi
	mov		rdi, rax
	call	_malloc
	cmp		rax, 0
	je		.error
	pop		rdi
	mov		rdi, rax
	mov		rsi, rbx
	call	_ft_strcpy
	ret

.error:
	call	___error
	mov		rdi, 0
	mov		[rax], rdi
	mov		rax, 0
	ret
