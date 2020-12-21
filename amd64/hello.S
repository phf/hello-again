	.text
	.globl	_start
_start:
	mov	$1, %eax	# 1 = sys_write
	mov	%eax, %edi	# STDOUT_FILENO (mov register < mov literal)
	lea	msg(%rip), %esi	# address of buffer (relative < absolute)
	mov	$len, %edx	# length of buffer
	syscall

	mov	$231, %eax	# 231 = sys_exit_group
	xor	%edi, %edi	# exit status 0
	syscall
msg:
	.ascii	"hello, world\n"
len=.-msg
