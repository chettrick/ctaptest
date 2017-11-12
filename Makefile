PROG=	example
SRCS=	example.c
NOMAN=

all: ${PROG}

${PROG}: ${SRCS}
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ ${SRCS}

test: ${PROG}
	prove -ve '' ${PROG}

clean:
	rm -f a.out [Ee]rrs mklog *.core y.tab.h ${PROG}.d ${PROG} ${PROG}.o
