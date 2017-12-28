.section __TEXT,__text

.globl start

start:
	movq $0, %rdi
  movq $0x2000001, %rax
  syscall
