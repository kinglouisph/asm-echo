format elf64 executable
entry start
use64

segment readable executable
start:
	;read stdin
	mov rax, 0
	mov rdi, 0
	lea rsi, [hello]
	mov rdx, 20
	syscall
	

	
	;print 
	mov rax, 1
	mov rdi, 1
	lea rsi, [hello]
	mov rdx, 21
	syscall

	;exit
	mov rax, 60
	mov rdi, 0
	syscall
	
segment readable writable
hello:	db "                    ", 10
