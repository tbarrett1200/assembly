.section __DATA,__data

str1:
    .asciz "argc: %d\n"
str2:
    .asciz "arg: %s\n"

.section __TEXT,__text

.globl start

start:

  movq (%rsp), %r12
  leaq 8(%rsp), %r13

  movq $0, %rdx
  movq %rsp, %rax
  movq $16, %rcx
  divq %rcx

  movq %rdx, %r14
  subq %r14, %rsp

  leaq str1(%rip), %rdi
  movq %r12, %rsi
  movq $0, %rax
  callq _printf

  movq $0, %r14

loop:
  leaq str2(%rip), %rdi
  movq (%r13, %r14, 8), %rsi
  movq $0, %rax
  callq _printf

  incq %r14

  cmp %r12, %r14
  jne loop

	movq $0, %rdi
  movq $0x2000001, %rax
  syscall
