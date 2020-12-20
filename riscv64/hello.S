	.text
	.globl	_start
_start:
	li	a0, 1		# STDOUT_FILENO
	lla	a1, hello	# address of buffer
	li	a2, 13		# length of buffer
	li	a7, 64		# sys_write
	ecall			# syscall

	li	a0, 0		# status
	li	a7, 94		# sys_exit_group
	ecall			# syscall
hello:
	.string	"hello, world\n"
