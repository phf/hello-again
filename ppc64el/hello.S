	.text
	.globl	_start
_start:
	# admittedly I am not sure why this is needed
	# or what it even does for that matter; TODO?
	.localentry	_start, 0

	li	r0, 4		# 4 = sys_write
	li	r3, 1		# STDOUT_FILENO
	lis	r4, msg@h	# address of buffer...
	ori	r4, r4, msg@l	# ...takes two steps
	li	r5, len		# length of buffer
	sc			# syscall

	li	r0, 234		# 234 = sys_exit_group
	li	r3, 0		# exit status 0
	sc			# syscall
msg:
	.ascii	"hello, world\n"
len=.-msg
