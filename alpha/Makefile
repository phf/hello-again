LDFLAGS=--static -s -nostdlib -lgcc -Wl,--build-id=none

hello: hello.o
hello.o: hello.S

clean:
	$(RM) hello *.o
