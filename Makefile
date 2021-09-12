# todo makefile
# 2021-09-12 11:08
# by Ian D Brunton <iandbrunton at gmail dot com>

APPNAME = todo
VERSION = 0.1a
CC = gcc

CFLAGS = -DVERSION=\"$(VERSION)\" -DAPPNAME=\"$(APPNAME)\" -I.

SRCS = main.c
OBJS = $(SRCS:.c=.o)
DEPS = 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(APPNAME): $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -rf *.o $(APPNAME)
