# A variety of syscall-only hellos

I love learning assembly languages and the best start usually is
to write a simple "hello, world" program.
I also love hacking without a standard library, so every single
`hello.S` here uses the `SYS_write` and `SYS_exit_group` syscalls
directly.
Of course neither is a good reason to actually write code without
a standard library in assembly; but hey, you can just ignore this
repository and go on with your life, right?
