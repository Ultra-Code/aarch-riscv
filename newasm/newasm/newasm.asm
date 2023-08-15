  .file "asm"
  .text
  .type asm_calculate_sum_, @function

.LFB101:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# first, first
	movl	%esi, -8(%rbp)	# second, second
	movl	%edx, -12(%rbp)	# third, third
# newasm/newasm.cxx:5:   return first + second + third;
	movl	-4(%rbp), %edx	# first, tmp85
	movl	-8(%rbp), %eax	# second, tmp86
	addl	%eax, %edx	# tmp86, _1
# newasm/newasm.cxx:5:   return first + second + third;
	movl	-12(%rbp), %eax	# third, tmp87
	addl	%edx, %eax	# _1, _5
# newasm/newasm.cxx:6: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc

