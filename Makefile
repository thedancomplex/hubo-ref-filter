default: all

CFLAGS := -I./include -g --std=gnu99
CXXFLAGS := -I./include -g

CC := gcc
CXX := g++

BINARIES := hubo-ref-filter 
all : $(BINARIES)

LIBS := -lach -lrt -lm -lc

hubo-ref-filter: src/hubo-ref-filter.c
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)


clean:
	rm -f $(BINARIES) src/*.o
