#ROOT=$(shell pwd)
ROOT=.
CFLAGS=-Wall -g -std=c++11 -lstdc++  `pkg-config --cflags --libs gtk+-3.0`
CC=gcc
TARGET=vision

SRCS=$(shell ls $(ROOT)/*.cc)

OBJS = $(SRCS:.cc=.o)

$(TARGET):$(OBJS)
    $(CC) -o $@ $^ $(CFLAGS)


%.o:%.c
    $(CC) $(CFLAGS) -o $@ -c $<

clean:
    @rm -rf $(TARGET) $(OBJS)
