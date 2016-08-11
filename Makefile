
CC=gcc
DEPS = fastboot.h usb.h
OBJ = protocol.o engine.o fastboot.o usb_osx.o util_osx.o 
SRC = protocol.c engine.c fastboot.c usb_osx.c util_osx.c    
OBJLinux = protocol.o engine.o fastboot.o usb_linux.o util_linux.o 
SRCLinux = protocol.c engine.c fastboot.c usb_linux.c util_linux.c  

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

make: $(OBJ)
	$(CC) -Wall -lpthread -framework CoreFoundation -framework IOKit -framework Carbon $(SRC) -o fastboot

linux: $(OBJLinux)
	$(CC) -Wall -lpthread  $(SRCLinux) -o fastboot

clean:
	rm -f *.o
	rm -f fastboot
