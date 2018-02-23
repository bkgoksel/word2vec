CC = gcc
#For older gcc, use -O3 or -O2 instead of -Ofast
CFLAGS = -lm -pthread -Ofast -march=native -Wall -funroll-loops -Wno-unused-result
BUILDDIR := build
SRCDIR := src

all: dir word2vec word2phrase convertvec

dir :
	mkdir -p $(BUILDDIR)
word2vec : $(SRCDIR)/word2vec.c
	$(CC) $(SRCDIR)/word2vec.c -o $(BUILDDIR)/word2vec $(CFLAGS)
word2phrase : $(SRCDIR)/word2phrase.c
	$(CC) $(SRCDIR)/word2phrase.c -o $(BUILDDIR)/word2phrase $(CFLAGS)
convertvec: $(SRCDIR)/convertvec.c
	$(CC) $(SRCDIR)/convertvec.c -o $(BUILDDIR)/convertvec $(CFLAGS)


clean:
	rm -rf word2vec word2phrase convertvec build
