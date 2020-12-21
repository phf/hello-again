	.text
	.globl	_start
_start:
	moveq	#4, %d0		| 4 = sys_write
	moveq	#1, %d1		| STDOUT_FILENO
	leal	msg, %a0	| address of buffer...
	movel	%a0, %d2	| ...gets passed in %d2 :-(
	moveq	#len, %d3	| length of buffer
	trap	#0		| syscall

	moveq	#8, %d0		| (moveq/notb shorter than movel)
	notb	%d0		| 247 = sys_exit_group
	moveq	#0, %d1		| exit status
	trap	#0		| syscall
msg:
	.ascii	"hello, world\n"
len=.-msg
