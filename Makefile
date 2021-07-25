# todo makefile
# 2021-07-25 07:20
# by Ian D Brunton <iandbrunton at gmail dot com>

APPNAME=todo
VERSION=0.1a
CC=gcc

INCLUDE_DIRS =
LIB_DIRS =
CDEFS =
CFLAGS=-c -g -Wall -DVERSION=\"$(VERSION)\" -DAPPNAME=\"$(APPNAME)\"
LIBS =
LDFLAGS=
PREFIX=

HFILES =
CFILES = main.c

SRCS ${HFILES} ${CFILES}
OBJS = =$(CFILES:.c=.o)

all: $(APPNAME)

$(APPNAME): $(OBJS)
	$(CC) $(LDFLAGS) -Wl,--start-group $(OBJS) -Wl,--end-group -o $@

.c.o:
	$(CC) $(CFLAGS)  $< -o $@

install: all
	install -D -m 755 -o root -g root $(APPNAME) $(DESTDIR)$(PREFIX)/$(APPNAME)

clean:
	rm -rf *.o $(APPNAME)
