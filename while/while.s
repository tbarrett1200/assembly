# params rdi, rsi, rdx, rcx, r8, r9, stack (right to left)
# return rax, rdx
# alignment 16-byte at call

# scratch:	rax, rdi, rsi, rdx, rcx, r8, r9, r10, r11
# preserve:	rbx, rsp, rbp, r12, r13, r14, r15

.section __DATA,__data

str1:
  .asciz "value: %d\n"

.section __TEXT,__text

.globl start

start:
  andq $0xfffffffffffffff0, %rsp

  movq $69, %rbx

compare:
  cmpq $0, %rbx
  je end

  # while body
  leaq str1(%rip), %rdi
  movq $0, %rax
  movq %rbx, %rsi
  callq _printf
  decq %rbx
  # while body

  jmp compare
end:
	movq $0, %rdi
  movq $0x2000001, %rax
  syscall
