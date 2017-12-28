# params rdi, rsi, rdx, rcx, r8, r9, stack (right to left)
# return rax, rdx
# alignment 16-byte at call

# scratch:	rax, rdi, rsi, rdx, rcx, r8, r9, r10, r11
# preserve:	rbx, rsp, rbp, r12, r13, r14, r15

.section __DATA,__data

str1:
  .asciz "true"
str2:
  .asciz "false"

.section __TEXT,__text

.globl start

start:
  andq $0xfffffffffffffff0, %rsp

  movq $1, %rbx

  # compare
if:
  # if block code
  leaq str1(%rip), %rdi
  callq _puts
  jmp end
elif:
else:
  # else block code
  leaq str2(%rip), %rdi
  callq _puts
end:
	movq $0, %rdi
  movq $0x2000001, %rax
  syscall
