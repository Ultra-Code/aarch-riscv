vim: ft=asm
.file "intel_as.s"
.intel_syntax noprefix

.section .data
	var:
		.int 40
	var2:
		.int 90
	var3:
		.int 30

.section .rodata
	prompt_str:
		.string "Enter your name"
	prompt_str_len:
		.size len,prompt_str_len-prompt_str #the .set,.equ or .size directive can be used
	greeting:
		.string "¡Hola! ¿como estas?"
		len= .-greeting

.section .bss
	.lcomm buff, 32

.macro write str,str_size
	mov rax,1
	mov rdi,1
	mov rsi,\str
	mov rdx,\str_size
	syscall
 .endm

 .macro read buff,buff_size
	mov rax,0
	mov rdi,0 #stdin
	mov rsi,\buff
	mov rdx,\buff_size
	syscall
	.endm

.section .text
		.global _start
		_start:

		write prompt_str,prompt_str_len
		read buff,32
		push rax
		write greeting,len
		pop rax
		write buff,rax
		jmp exit

		understand_cmp:
			mov rdx,[var]
			cmp rdx,[var2]
			jg  checklast
			mov rdx,[var2]
		checklast:
			cmp rdx,[var3]
			jg  exit
			mov rdx,[var3]
		exit:
			mov rax,60
			mov rdi,rdx
			syscall


