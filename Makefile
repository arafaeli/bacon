# bacon makefile

CC=gcc
CFLAGS=
SRCS=$(wildcard src/*.c)
OBJS=$(SRCS:.c=.o)
TARGET=bacon

all: $(TARGET)

$(TARGET): $(OBJS)
	gcc $^ $(CFLAGS) $(LDFLAGS) -o $@

%.o: %.c
	gcc $^ $(CFLAGS) -o $@

.PHONY: clean
clean:
	rm $(OBJS)
