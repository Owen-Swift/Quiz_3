section .text

	global _start

_start:

	mov eax, 1
	mov ecx, [num]		;originally used ebx, but can just use ecx to optimise

Fac:	mul ecx
	loop Fac 		;loop terminates once ecx = 0, so number is not lost

	mov [result], eax

	mov eax,1
	int 0x80

section .data

	num dd 6

section .bss

	result resd 1 		;anser should be 720
