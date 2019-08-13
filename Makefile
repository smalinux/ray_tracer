CC = c
headers= 
LDLIBS = -lraylib -lGL -lm -lpthread -ldl -lrt 
flags= PLATFORM=PLATFORM_DESKTOP -B

PARAM=-Wall -std=c99 -D_DEFAULT_SOURCE -Wno-missing-braces -D_DEFAULT_SOURCE -I/usr/local/include -isystem. -isystem/home/smalinux/raylib/src -isystem/home/smalinux/raylib/release/include -isystem/home/smalinux/raylib/src/external -L. -L/usr/local/lib -L/home/smalinux/raylib/src -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -DPLATFORM_DESKTOP



all:
	gcc -o test test.c $(PARAM)

clean:
	rm *.o