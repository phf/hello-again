	.text
	.globl	_start
_start:
	mov	$1, %eax	# 1 = sys_write
	mov	$1, %edi	# STDOUT_FILENO
	lea	msg(%rip), %esi	# address of buffer
	mov	$len, %edx	# length of buffer
	syscall

	mov	$231, %eax	# 231 = sys_exit_group
	xor	%edi, %edi	# exit status 0
	syscall
msg:
	.ascii	"hello, world\n"
len=.-msg
