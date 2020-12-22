	.text
	.globl	_start
_start:
	mov	#4, r3			! 4 = sys_write
	mov	#1, r4			! STDOUT_FILENO
	mova	msg, r0			! address of buffer...
	mov	r0, r5			! ...goes into r5
	mov	#len, r6		! length of buffer
	trapa	#31			! syscall

	mov.l	sys_exit_group, r3	! "mov #252, r3" sign-extends badly
	mov	#0, r4			! exit status 0
	trapa	#31			! syscall

	.align	2
sys_exit_group:
	.long	252
msg:
	.ascii	"hello, world\n"
len=.-msg

! Note that "trapa #31" is the way to go according to kernel source,
! the "trapa #0x17" from the man page works as well but is no longer
! recommended.
!
! At first I had a separate .long pointer to load the address of "msg"
! using "mov.l ptr, r5" but the "mova" combo I use now is shorter at
! the price of an additional instruction. Also "mova" only works with
! r0 and a small offset; and the address must be long-aligned.
