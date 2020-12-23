ASFLAGS=-mregnames
LDFLAGS=--static -s -nostdlib -lgcc -Wl,--build-id=none -z noseparate-code

hello: hello.o
hello.o: hello.S

clean:
	$(RM) hello *.o
