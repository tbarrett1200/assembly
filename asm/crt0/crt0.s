.section __TEXT,__text

.globl start

start:
  movq (%rsp), %rdi
  leaq 8(%rsp), %rsi
  andq $0xfffffffffffffff0, %rsp
  movq %rbp, %rsp
  callq main
  movq %rax, %rdi
  movq $0x2000001, %rax
  syscall
