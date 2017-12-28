.section __TEXT,__text

.globl start

# quits with an exit code of sum(5)
start:
	movq $10, %rdi
	callq sum
	movq %rax, %rdi
  movq $0x2000001, %rax
  syscall

# long sum(long num);
# summation of all natural numbers less than or equal to 'num'
sum:
	movq $0, %rax
	movq %rdi, %rcx
sum_loop:
	addq %rcx, %rax
	dec %rcx
	loop sum_loop
	ret
