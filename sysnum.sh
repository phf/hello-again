#!/bin/sh
#
# Find syscall number on current platform. For example (on amd64):
#
#    $ ./syscallnum.sh exit_group
#    231
#
# If "SYS_exit_group" comes out instead, we failed to find the number.
#
# See https://unix.stackexchange.com/a/422882 for the origin of this script.
# Also see https://fedora.juszkiewicz.com.pl/syscalls.html for a huge table.
printf SYS_$1 | gcc -include sys/syscall.h -E - | tail -n 1
