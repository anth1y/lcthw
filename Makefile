SRCEXT = c
SRCDIR = src
BINDIR = bin
OBJDIR = obj

SRCS := $(shell find $(SRCDIR) -name '*.$(SRCEXT)')
SRCDIRS := $(shell find . -name '*.$(SRCEXT)' -exec dirname {} \; | uniq)
OBJS := $(patsubst %.$(SRCEXT),$(OBJDIR)/%.o,%(SRCS))

DEBUG = -g
CFLAGS=-Wall 

ifeq ($(SRCEXT), cpp)
	CC = $(CXX)
else
	CFLAGS += -std=gnu99
endif

.PHONY: all clean distclean

all: $(BINDIR)/

clean:
	$(RM) -r $(BINDIR)

