	.text
	.globl	_start
_start:
	br	$gp, 1f		# the mystery that is...
1:	ldgp	$gp, 0($gp)	# ...the global pointer?

	lda	$0, 4($31)	# 4 = sys_write
	lda	$16, 1($31)	# STDOUT_FILENO
	ldah	$17, msg($31)	!gprelhigh
	lda	$17, msg($31)	# address of buffer
	lda	$18, len($31)	# length of buffer
	callsys

	lda	$0, 405($31)	# 405 = sys_exit_group
	lda	$16, 0($31)	# exit status 0
	callsys
msg:
	.ascii	"hello, world\n"
len=.-msg
