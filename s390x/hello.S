	.text
	.globl	_start
_start:
	lghi	%r1, 4		# 4 = sys_write
	lghi	%r2, 1		# STDOUT_FILENO
	larl	%r3, msg	# address of buffer
	lghi	%r4, len	# length of buffer
	svc	0		# syscall

	lghi	%r1, 248	# 248 = sys_exit_group
	lghi	%r2, 42		# exit status 0
	svc	0		# syscall
msg:
	.ascii	"hello, world\n"
len=.-msg
