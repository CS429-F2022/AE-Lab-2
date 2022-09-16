# Definitions

CC = gcc
CC_FLAGS = -Wall -ggdb -UDEBUG -I../../include  -I../../include/instr
CC_OPTIONS = -c
CC_SO_OPTIONS = -shared -fpic
CC_DL_OPTIONS = -rdynamic
RM = /bin/rm -f
LD = gcc
LIBS = -ldl
MD = gccmakedep

SRCS := \
ADD_RI.c ADDS_RR.c ANDS_RR.c ASR.c \
B.c B_COND.c BL.c \
EOR_RR.c \
HLT.c \
LDURB.c LDUR.c LSL.c LSR.c \
MOVK.c MOVZ.c MVN.c \
NOP.c \
ORR_RR.c \
RET.c \
STURB.c STUR.c SUBS_RR.c \
UBFM.c \
common_memory.c common_writeback.c common_update_pc.c
# SRCS := $(HDRS:%.h=%.c)
OBJS := $(SRCS:%.c=%.o)

# Generic rules

%.o: %.c
	${CC} ${CC_OPTIONS} ${CC_FLAGS} $<

# Targets

all: ae clean

ae: ${OBJS}

depend:
	${MD} -- ${CC_OPTIONS} ${CC_FLAGS} -- ${SRCS}

clean:
	${RM} *.o *.so *.bak

# DO NOT DELETE
