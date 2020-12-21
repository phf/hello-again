	.text
	.globl	_start
_start:
	li	a0, 1		# STDOUT_FILENO
	lla	a1, msg		# address of buffer
	li	a2, 13		# length of buffer TODO make "len" work
	li	a7, 64		# 64 = sys_write
	ecall			# syscall

	li	a0, 0		# exit status
	li	a7, 94		# 94 = sys_exit_group
	ecall			# syscall
msg:
	.ascii	"hello, world\n"
len=.-msg
