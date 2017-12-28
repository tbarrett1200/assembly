# params rdi, rsi, rdx, rcx, r8, r9, stack (right to left)
# return rax, rdx
# alignment 16-byte at call

# scratch:	rax, rdi, rsi, rdx, rcx, r8, r9, r10, r11
# preserve:	rbx, rsp, rbp, r12, r13, r14, r15

.section __DATA,__data

str1:
  .asciz "Hello World"

.section __TEXT,__text

.globl start

start:
  leaq str1(%rip), %rdi
  movq $0, %rax
  callq _printf

	movq $0, %rdi
  movq $0x2000001, %rax
  syscall
