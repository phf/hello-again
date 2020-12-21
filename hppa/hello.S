	.text
	.globl	_start
_start:
	ldi	1, %r26				; STDOUT_FILENO
	ldil	l%msg, %ret0			; address of buffer (left, upper 21 bits)
	ldo	r%msg(%ret0), %r25		; address of buffer (right, lower 11 bits)
	ldi	len, %r24			; length of buffer
	be,l	0x100(%sr2, %r0), %sr0, %r31	; syscall
	ldi	4, %r20				; 4 = sys_write (delay slot)

	ldi	0, %r26				; exit status 0
	be,l	0x100(%sr2, %r0), %sr0, %r31	; syscall
	ldi	222, %r20			; 222 = sys_exit_group (delay slot)
msg:
	.ascii	"hello, world\n"
len=.-msg
