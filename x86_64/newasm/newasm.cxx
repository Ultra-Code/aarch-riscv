#include <iostream>
#include <cassert>
[[gnu::naked]] auto
sty() -> int
{
}
auto
calculate_sum(int first, int second, int third) -> int
{
  return first + second + third;
}

extern "C" auto
asm_calculate_sum(int first, int second, int third) -> int;
asm(
    R"(
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

)");

auto
calculate_product(int left_operand, int right_operand) -> int
{
  return left_operand * right_operand;
}

extern "C" auto
asm_calculate_product(int left_operand, int right_operand) -> int
{
  // when writing inline asm in function prolog and epilog
  // aren't needed since they are taken care of by the c++
  // calling conventions
  asm(R"(
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
)");
}

auto
calculate_quotient(int64_t const *const divident, int64_t const *const divisor)
    -> int64_t
{
  return *divident / *divisor;
}

extern "C" auto
asm_calculate_quotient(int const *divident, int const *divisor) -> int;
asm(R"(
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
)");

struct result
{
  int sigle_sum;
  int double_sum;
  int tripple_sum;
};

auto
cal_multiple_sum(int first, int second, int third) -> result
{
  return result{ .sigle_sum = first + second + third,
                 .double_sum = first * first + second * second + third * third,
                 .tripple_sum = first * first * first
                                + second * second * second
                                + third * third * third };
}
[[gnu::const]] auto
call_t(int &ref /*read_write*/, int const &c_ref /*read_only*/,
       int *const cptr_i /*read_write*/,
       int const *const cptr_ci /*read_only*/, int const *ptr_c, int *ptr)
{
  auto read = ref;
  ref += 1;

  auto read_c = c_ref;
  // c_ref += 1;

  auto read_i = *cptr_i;
  *cptr_i += 1;
  // cptr_i = &read;

  auto read_cc = *cptr_ci;
  //*cptr_ci += 1;
  // cptr_ci = &read;

  auto read_p = *ptr_c;
  //*ptr_c += 1;
  ptr_c = &read;

  auto read_u = *ptr;
  *ptr += 1;
  ptr = &read;
}

auto
main() -> int
{
  auto result = calculate_sum(1, 2, 3);
  auto asm_result = asm_calculate_sum(1, 2, 3);
  std::cout << "result " << result << " is equal to " << asm_result
            << " asm\n";
  auto product_result = calculate_product(2, 3);
  auto asm_product_result = asm_calculate_product(2, 3);
  std::cout << "product result is " << product_result
            << " and asm_product_result is " << asm_product_result << " \n";
  auto divident = int64_t(4);
  auto divisor = int64_t(2);
  auto divident_1 = int(4);
  auto divisor_1 = int(2);
  auto quotient_result = calculate_quotient(&divident, &divisor);
  auto asm_quotient_result = asm_calculate_quotient(&divident_1, &divisor_1);
  std::cout << "quotient_result is " << quotient_result
            << " and asm_calculate_quotient is  " << asm_quotient_result
            << '\n';

  auto const &[single, doubles, triple] = cal_multiple_sum(1, 2, 3);
  assert(single == 6 && doubles == 14 && triple == 36);
  // standard inline assembly
  asm("movq $60, %rax\n\t" // the exit syscall number on Linux
      "movq $2,  %rdi\n\t" // this program returns 2
      "syscall");
}
