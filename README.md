# A variety of syscall-only hellos

I love learning assembly languages and the best way to start with a "new" one
usually is hacking a simple "hello, world" program.
I also love working without a standard library, so every single `hello.S` here
uses the `SYS_write` and `SYS_exit_group` syscalls directly; yes, so far it's
all "Linux only" I am afraid.
Of course "love" alone is probably not a good-enough reason to *actually*
develop software in assembly without a standard library; but hey, you can just
ignore this repository and go on with your life, right?
