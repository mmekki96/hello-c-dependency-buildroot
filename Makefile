MAJOR=1
VER=$(MAJOR).0
LIB=libhello.so

all: $(LIB)

$(LIB): hellolib.o
	$(CC) $< -shared -fPIC $(LDFLAGS) -Wl,-soname=$(LIB).$(MAJOR) -o $(LIB).$(VER)

%.o: %.c
	$(CC) -c $^

clean:
	rm -rf *.o *.so*
