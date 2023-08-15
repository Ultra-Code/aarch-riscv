	.file	"newasm.cxx"
	.intel_syntax noprefix
# GNU C++20 (GCC) version 12.0.0 20210516 (experimental) (x86_64-pc-linux-gnu)
#	compiled by GNU C version 12.0.0 20210509 (experimental), GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.18-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=skylake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mno-clwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mno-rdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -msgx -mno-sha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=4096 -mtune=skylake -masm=intel -std=c++20
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	_Z3styv
	.type	_Z3styv, @function
_Z3styv:
.LFB2251:
	.cfi_startproc
# newasm/newasm.cxx:6: }
	nop
	ud2
	.cfi_endproc
.LFE2251:
	.size	_Z3styv, .-_Z3styv
	.globl	_Z13calculate_sumiii
	.type	_Z13calculate_sumiii, @function
_Z13calculate_sumiii:
.LFB2252:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi	# first, first
	mov	DWORD PTR -8[rbp], esi	# second, second
	mov	DWORD PTR -12[rbp], edx	# third, third
# newasm/newasm.cxx:10:   return first + second + third;
	mov	edx, DWORD PTR -4[rbp]	# tmp85, first
	mov	eax, DWORD PTR -8[rbp]	# tmp86, second
	add	edx, eax	# _1, tmp86
# newasm/newasm.cxx:10:   return first + second + third;
	mov	eax, DWORD PTR -12[rbp]	# tmp87, third
	add	eax, edx	# _5, _1
# newasm/newasm.cxx:11: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2252:
	.size	_Z13calculate_sumiii, .-_Z13calculate_sumiii
#APP

  .text
  .globl asm_calculate_sum
  .type asm_calculate_sum, @function

asm_calculate_sum:
	.cfi_startproc
	pushq	%rbp	#
	#.cfi_def_cfa_offset 16
	#.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	#.cfi_def_cfa_register 6
	#movl	%edi, -4(%rbp)	# first, first
	#movl	%esi, -8(%rbp)	# second, second
	#movl	%edx, -12(%rbp)	# third, third
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


#NO_APP
	.globl	_Z17calculate_productii
	.type	_Z17calculate_productii, @function
_Z17calculate_productii:
.LFB2253:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi	# left_operand, left_operand
	mov	DWORD PTR -8[rbp], esi	# right_operand, right_operand
# newasm/newasm.cxx:49:   return left_operand * right_operand;
	mov	eax, DWORD PTR -4[rbp]	# tmp84, left_operand
	imul	eax, DWORD PTR -8[rbp]	# _3, right_operand
# newasm/newasm.cxx:50: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2253:
	.size	_Z17calculate_productii, .-_Z17calculate_productii
	.globl	asm_calculate_product
	.type	asm_calculate_product, @function
asm_calculate_product:
.LFB2254:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi	# left_operand, left_operand
	mov	DWORD PTR -8[rbp], esi	# right_operand, right_operand
# newasm/newasm.cxx:58:   asm(R"(
#APP
# 58 "newasm/newasm.cxx" 1

      .text
      #.globl asm_calculate_product
      #.type asm_calculate_product, @function

   #asm_calculate_product:
	 #   .cfi_startproc
   #   pushq %rbp #save state of previous base pointer
   #   movq  %rsp,%rbp #init rbp with a copy of rsp

      movl -4(%rbp),%eax #left_operand
      movl -8(%rbp),%ebx #right_operand
      imul %ebx,%eax #multipy left_operand && right_operand

   #   popq %rbp #restore the caller bp
   #   ret
   #   .cfi_endproc

# 0 "" 2
# newasm/newasm.cxx:76: }
#NO_APP
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2254:
	.size	asm_calculate_product, .-asm_calculate_product
	.globl	_Z18calculate_quotientPKlS0_
	.type	_Z18calculate_quotientPKlS0_, @function
_Z18calculate_quotientPKlS0_:
.LFB2255:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# divident, divident
	mov	QWORD PTR -16[rbp], rsi	# divisor, divisor
# newasm/newasm.cxx:82:   return *divident / *divisor;
	mov	rax, QWORD PTR -8[rbp]	# tmp86, divident
	mov	rax, QWORD PTR [rax]	# _1, *divident_4(D)
# newasm/newasm.cxx:82:   return *divident / *divisor;
	mov	rdx, QWORD PTR -16[rbp]	# tmp87, divisor
	mov	rcx, QWORD PTR [rdx]	# _2, *divisor_5(D)
# newasm/newasm.cxx:82:   return *divident / *divisor;
	cqo
	idiv	rcx	# _2
# newasm/newasm.cxx:83: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2255:
	.size	_Z18calculate_quotientPKlS0_, .-_Z18calculate_quotientPKlS0_
#APP

.att_syntax noprefix
.globl asm_calculate_quotient
.type asm_calculate_quotient, @function

asm_calculate_quotient:
      .cfi_startproc
      pushq rbp
      movq rsp,rbp

      movq -8(rbp),rax
      movq -16(rbp),rdx

      movl (rax),eax
      movl (rdx),ebx

      cltd
      idivl %ebx

      popq rbp
      ret
      .cfi_endproc

#NO_APP
	.globl	_Z16cal_multiple_sumiii
	.type	_Z16cal_multiple_sumiii, @function
_Z16cal_multiple_sumiii:
.LFB2256:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	and	rsp, -32	#,
	mov	DWORD PTR -20[rsp], edi	# first, first
	mov	DWORD PTR -24[rsp], esi	# second, second
	mov	DWORD PTR -28[rsp], edx	# third, third
# newasm/newasm.cxx:121:   return result{ .sigle_sum = first + second + third,
	mov	edx, DWORD PTR -20[rsp]	# tmp98, first
	mov	eax, DWORD PTR -24[rsp]	# tmp99, second
	add	edx, eax	# _1, tmp99
# newasm/newasm.cxx:121:   return result{ .sigle_sum = first + second + third,
	mov	eax, DWORD PTR -28[rsp]	# tmp100, third
	add	eax, edx	# _2, _1
# newasm/newasm.cxx:125:                                 + third * third * third };
	mov	DWORD PTR -12[rsp], eax	# D.66483.sigle_sum, _2
# newasm/newasm.cxx:122:                  .double_sum = first * first + second * second + third * third,
	mov	eax, DWORD PTR -20[rsp]	# tmp101, first
	imul	eax, eax	# tmp101, tmp101
	mov	edx, eax	# _3, tmp101
# newasm/newasm.cxx:122:                  .double_sum = first * first + second * second + third * third,
	mov	eax, DWORD PTR -24[rsp]	# tmp102, second
	imul	eax, eax	# _4, tmp102
# newasm/newasm.cxx:122:                  .double_sum = first * first + second * second + third * third,
	add	edx, eax	# _5, _4
# newasm/newasm.cxx:122:                  .double_sum = first * first + second * second + third * third,
	mov	eax, DWORD PTR -28[rsp]	# tmp103, third
	imul	eax, eax	# _6, tmp103
# newasm/newasm.cxx:122:                  .double_sum = first * first + second * second + third * third,
	add	eax, edx	# _7, _5
# newasm/newasm.cxx:125:                                 + third * third * third };
	mov	DWORD PTR -8[rsp], eax	# D.66483.double_sum, _7
# newasm/newasm.cxx:123:                  .tripple_sum = first * first * first
	mov	eax, DWORD PTR -20[rsp]	# tmp104, first
	imul	eax, eax	# _8, tmp104
# newasm/newasm.cxx:123:                  .tripple_sum = first * first * first
	imul	eax, DWORD PTR -20[rsp]	# _8, first
	mov	edx, eax	# _9, _8
# newasm/newasm.cxx:124:                                 + second * second * second
	mov	eax, DWORD PTR -24[rsp]	# tmp105, second
	imul	eax, eax	# _10, tmp105
# newasm/newasm.cxx:124:                                 + second * second * second
	imul	eax, DWORD PTR -24[rsp]	# _11, second
# newasm/newasm.cxx:124:                                 + second * second * second
	add	edx, eax	# _12, _11
# newasm/newasm.cxx:125:                                 + third * third * third };
	mov	eax, DWORD PTR -28[rsp]	# tmp106, third
	imul	eax, eax	# _13, tmp106
# newasm/newasm.cxx:125:                                 + third * third * third };
	imul	eax, DWORD PTR -28[rsp]	# _14, third
# newasm/newasm.cxx:125:                                 + third * third * third };
	add	eax, edx	# _15, _12
# newasm/newasm.cxx:125:                                 + third * third * third };
	mov	DWORD PTR -4[rsp], eax	# D.66483.tripple_sum, _15
	mov	rax, QWORD PTR -12[rsp]	# tmp107, D.66483
	mov	ecx, DWORD PTR -4[rsp]	# tmp108, D.66483
	mov	rdx, rcx	#, tmp108
# newasm/newasm.cxx:126: }
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2256:
	.size	_Z16cal_multiple_sumiii, .-_Z16cal_multiple_sumiii
	.section	.rodata
.LC0:
	.string	"result "
.LC1:
	.string	" is equal to "
.LC2:
	.string	" asm\n"
.LC3:
	.string	"product result is "
.LC4:
	.string	" and asm_product_result is "
.LC5:
	.string	" \n"
.LC6:
	.string	"quotient_result is "
	.align 8
.LC7:
	.string	" and asm_calculate_quotient is  "
.LC8:
	.string	"int main()"
.LC9:
	.string	"newasm/newasm.cxx"
	.align 8
.LC10:
	.string	"single == 6 && doubles == 14 && triple == 36"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2257:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 80	#,
# newasm/newasm.cxx:131:   auto result = calculate_sum(1, 2, 3);
	mov	edx, 3	#,
	mov	esi, 2	#,
	mov	edi, 1	#,
	call	_Z13calculate_sumiii	#
	mov	DWORD PTR -4[rbp], eax	# result, tmp101
# newasm/newasm.cxx:132:   auto asm_result = asm_calculate_sum(1, 2, 3);
	mov	edx, 3	#,
	mov	esi, 2	#,
	mov	edi, 1	#,
	call	asm_calculate_sum@PLT	#
	mov	DWORD PTR -8[rbp], eax	# asm_result, _21
# newasm/newasm.cxx:133:   std::cout << "result " << result << " is equal to " << asm_result
	lea	rax, .LC0[rip]	# tmp102,
	mov	rsi, rax	#, tmp102
	lea	rax, _ZSt4cout[rip]	# tmp103,
	mov	rdi, rax	#, tmp103
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	mov	rdx, rax	# _1,
# newasm/newasm.cxx:133:   std::cout << "result " << result << " is equal to " << asm_result
	mov	eax, DWORD PTR -4[rbp]	# tmp104, result
	mov	esi, eax	#, tmp104
	mov	rdi, rdx	#, _1
	call	_ZNSolsEi@PLT	#
	mov	rdx, rax	# _2,
	lea	rax, .LC1[rip]	# tmp105,
	mov	rsi, rax	#, tmp105
	mov	rdi, rdx	#, _2
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	mov	rdx, rax	# _3,
# newasm/newasm.cxx:134:             << " asm\n";
	mov	eax, DWORD PTR -8[rbp]	# tmp106, asm_result
	mov	esi, eax	#, tmp106
	mov	rdi, rdx	#, _3
	call	_ZNSolsEi@PLT	#
	mov	rdx, rax	# _4,
	lea	rax, .LC2[rip]	# tmp107,
	mov	rsi, rax	#, tmp107
	mov	rdi, rdx	#, _4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# newasm/newasm.cxx:135:   auto product_result = calculate_product(2, 3);
	mov	esi, 3	#,
	mov	edi, 2	#,
	call	_Z17calculate_productii	#
	mov	DWORD PTR -12[rbp], eax	# product_result, tmp108
# newasm/newasm.cxx:136:   auto asm_product_result = asm_calculate_product(2, 3);
	mov	esi, 3	#,
	mov	edi, 2	#,
	call	asm_calculate_product	#
	mov	DWORD PTR -16[rbp], eax	# asm_product_result, tmp109
# newasm/newasm.cxx:137:   std::cout << "product result is " << product_result
	lea	rax, .LC3[rip]	# tmp110,
	mov	rsi, rax	#, tmp110
	lea	rax, _ZSt4cout[rip]	# tmp111,
	mov	rdi, rax	#, tmp111
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	mov	rdx, rax	# _5,
# newasm/newasm.cxx:138:             << " and asm_product_result is " << asm_product_result << " \n";
	mov	eax, DWORD PTR -12[rbp]	# tmp112, product_result
	mov	esi, eax	#, tmp112
	mov	rdi, rdx	#, _5
	call	_ZNSolsEi@PLT	#
	mov	rdx, rax	# _6,
	lea	rax, .LC4[rip]	# tmp113,
	mov	rsi, rax	#, tmp113
	mov	rdi, rdx	#, _6
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	mov	rdx, rax	# _7,
# newasm/newasm.cxx:138:             << " and asm_product_result is " << asm_product_result << " \n";
	mov	eax, DWORD PTR -16[rbp]	# tmp114, asm_product_result
	mov	esi, eax	#, tmp114
	mov	rdi, rdx	#, _7
	call	_ZNSolsEi@PLT	#
	mov	rdx, rax	# _8,
	lea	rax, .LC5[rip]	# tmp115,
	mov	rsi, rax	#, tmp115
	mov	rdi, rdx	#, _8
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# newasm/newasm.cxx:139:   auto divident = int64_t(4);
	mov	QWORD PTR -48[rbp], 4	# divident,
# newasm/newasm.cxx:140:   auto divisor = int64_t(2);
	mov	QWORD PTR -56[rbp], 2	# divisor,
# newasm/newasm.cxx:141:   auto divident_1 = int(4);
	mov	DWORD PTR -60[rbp], 4	# divident_1,
# newasm/newasm.cxx:142:   auto divisor_1 = int(2);
	mov	DWORD PTR -64[rbp], 2	# divisor_1,
# newasm/newasm.cxx:143:   auto quotient_result = calculate_quotient(&divident, &divisor);
	lea	rdx, -56[rbp]	# tmp116,
	lea	rax, -48[rbp]	# tmp117,
	mov	rsi, rdx	#, tmp116
	mov	rdi, rax	#, tmp117
	call	_Z18calculate_quotientPKlS0_	#
	mov	QWORD PTR -24[rbp], rax	# quotient_result, tmp118
# newasm/newasm.cxx:144:   auto asm_quotient_result = asm_calculate_quotient(&divident_1, &divisor_1);
	lea	rdx, -64[rbp]	# tmp119,
	lea	rax, -60[rbp]	# tmp120,
	mov	rsi, rdx	#, tmp119
	mov	rdi, rax	#, tmp120
	call	asm_calculate_quotient@PLT	#
	mov	DWORD PTR -28[rbp], eax	# asm_quotient_result, _52
# newasm/newasm.cxx:145:   std::cout << "quotient_result is " << quotient_result
	lea	rax, .LC6[rip]	# tmp121,
	mov	rsi, rax	#, tmp121
	lea	rax, _ZSt4cout[rip]	# tmp122,
	mov	rdi, rax	#, tmp122
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	mov	rdx, rax	# _9,
# newasm/newasm.cxx:145:   std::cout << "quotient_result is " << quotient_result
	mov	rax, QWORD PTR -24[rbp]	# tmp123, quotient_result
	mov	rsi, rax	#, tmp123
	mov	rdi, rdx	#, _9
	call	_ZNSolsEl@PLT	#
	mov	rdx, rax	# _10,
# newasm/newasm.cxx:146:             << " and asm_calculate_quotient is  " << asm_quotient_result
	lea	rax, .LC7[rip]	# tmp124,
	mov	rsi, rax	#, tmp124
	mov	rdi, rdx	#, _10
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	mov	rdx, rax	# _11,
# newasm/newasm.cxx:147:             << '\n';
	mov	eax, DWORD PTR -28[rbp]	# tmp125, asm_quotient_result
	mov	esi, eax	#, tmp125
	mov	rdi, rdx	#, _11
	call	_ZNSolsEi@PLT	#
	mov	esi, 10	#,
	mov	rdi, rax	#, _12
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT	#
# newasm/newasm.cxx:149:   auto const &[single, doubles, triple] = cal_multiple_sum(1, 2, 3);
	mov	edx, 3	#,
	mov	esi, 2	#,
	mov	edi, 1	#,
	call	_Z16cal_multiple_sumiii	#
	mov	QWORD PTR -76[rbp], rax	# D.56982, tmp126
	mov	eax, DWORD PTR -68[rbp]	# tmp129, D.56982
	and	eax, 0	# tmp130,
	or	eax, edx	# tmp131, tmp128
	mov	DWORD PTR -68[rbp], eax	# D.56982, tmp131
# newasm/newasm.cxx:149:   auto const &[single, doubles, triple] = cal_multiple_sum(1, 2, 3);
	lea	rax, -76[rbp]	# tmp132,
	mov	QWORD PTR -40[rbp], rax	# D.56976, tmp132
	mov	rax, QWORD PTR -40[rbp]	# tmp133, D.56976
	mov	eax, DWORD PTR [rax]	# _13, _64->sigle_sum
# newasm/newasm.cxx:150:   assert(single == 6 && doubles == 14 && triple == 36);
	cmp	eax, 6	# _13,
	jne	.L12	#,
# newasm/newasm.cxx:149:   auto const &[single, doubles, triple] = cal_multiple_sum(1, 2, 3);
	mov	rax, QWORD PTR -40[rbp]	# tmp134, D.56976
	mov	eax, DWORD PTR 4[rax]	# _14, _64->double_sum
# newasm/newasm.cxx:150:   assert(single == 6 && doubles == 14 && triple == 36);
	cmp	eax, 14	# _14,
	jne	.L12	#,
# newasm/newasm.cxx:149:   auto const &[single, doubles, triple] = cal_multiple_sum(1, 2, 3);
	mov	rax, QWORD PTR -40[rbp]	# tmp135, D.56976
	mov	eax, DWORD PTR 8[rax]	# _15, _64->tripple_sum
# newasm/newasm.cxx:150:   assert(single == 6 && doubles == 14 && triple == 36);
	cmp	eax, 36	# _15,
	je	.L15	#,
.L12:
# newasm/newasm.cxx:150:   assert(single == 6 && doubles == 14 && triple == 36);
	lea	rax, .LC8[rip]	# tmp136,
	mov	rcx, rax	#, tmp136
	mov	edx, 150	#,
	lea	rax, .LC9[rip]	# tmp137,
	mov	rsi, rax	#, tmp137
	lea	rax, .LC10[rip]	# tmp138,
	mov	rdi, rax	#, tmp138
	call	__assert_fail@PLT	#
.L15:
# newasm/newasm.cxx:152:   asm("movq $60, %rax\n\t" // the exit syscall number on Linux
#APP
# 152 "newasm/newasm.cxx" 1
	movq $60, %rax
	movq $2,  %rdi
	syscall
# 0 "" 2
# newasm/newasm.cxx:155: }
#NO_APP
	mov	eax, 0	# _71,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2257:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2959:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR -4[rbp], edi	# __initialize_p, __initialize_p
	mov	DWORD PTR -8[rbp], esi	# __priority, __priority
# newasm/newasm.cxx:155: }
	cmp	DWORD PTR -4[rbp], 1	# __initialize_p,
	jne	.L18	#,
# newasm/newasm.cxx:155: }
	cmp	DWORD PTR -8[rbp], 65535	# __priority,
	jne	.L18	#,
# /usr/local/gcc-12/include/c++/12.0.0/iostream:74:   static ios_base::Init __ioinit;
	lea	rax, _ZStL8__ioinit[rip]	# tmp82,
	mov	rdi, rax	#, tmp82
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	lea	rax, __dso_handle[rip]	# tmp83,
	mov	rdx, rax	#, tmp83
	lea	rax, _ZStL8__ioinit[rip]	# tmp84,
	mov	rsi, rax	#, tmp84
	mov	rax, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]	# tmp86,
	mov	rdi, rax	#, tmp85
	call	__cxa_atexit@PLT	#
.L18:
# newasm/newasm.cxx:155: }
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2959:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z3styv, @function
_GLOBAL__sub_I__Z3styv:
.LFB2960:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# newasm/newasm.cxx:155: }
	mov	esi, 65535	#,
	mov	edi, 1	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2960:
	.size	_GLOBAL__sub_I__Z3styv, .-_GLOBAL__sub_I__Z3styv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z3styv
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 12.0.0 20210516 (experimental)"
	.section	.note.GNU-stack,"",@progbits
