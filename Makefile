MAJOR=1
VER=$(MAJOR).0
LIB=libhello.so

all: $(LIB)

$(LIB): %.o
	$(CC) $< -shared -fPIC -Wl,-soname=$(MAJOR) -o $(LIB).$(VER)

%.o: %.c
	$(CC) -c $^

clean:
	rm -rf *.o *.so*
